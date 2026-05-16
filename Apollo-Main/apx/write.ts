import { spawnSync } from 'node:child_process';
import * as fs from 'fs';
import * as path from 'path';

const curl: string = "";

type int = number;
type str = string;
type bool = boolean;

export class cmd {
  private isWindows: boolean;
  private shellPath: string;
  private shellArgs: string[];
  private cwd: string;

  constructor() {
    this.isWindows = process.platform === 'win32';
    this.shellPath = this.isWindows ? 'cmd.exe' : 'bash';
    this.shellArgs = this.isWindows ? ['/k'] : ['-i']; 

    // Track a working directory per `cmd` instance so consecutive calls
    // to `system` behave as if running in the same shell (persistency).
    this.cwd = process.cwd();
  }

  // Run a command and return its output synchronously as a string.
  // `cd` is handled specially to update the instance cwd so subsequent
  // commands run in the new directory (persistent behavior).
  public system(command: string): string {
    const trimmed = command.trim();

    // Handle builtin 'cd' to update cwd without spawning a new shell.
    if (trimmed === 'cd' || trimmed.startsWith('cd ')) {
      const parts = trimmed.split(/\s+/);
      const target = parts.length > 1 ? parts.slice(1).join(' ') : process.env.HOME || process.cwd();

      try {
        // Resolve relative paths against current cwd.
        const path = require('path');
        const resolved = require('path').resolve(this.cwd, target);
        const fs = require('fs');
        if (fs.existsSync(resolved) && fs.statSync(resolved).isDirectory()) {
          this.cwd = resolved;
          return '';
        } else {
          return `cd: no such file or directory: ${target}`;
        }
      } catch (e: any) {
        return `cd: ${e && e.message ? e.message : String(e)}`;
      }
    }

    // For other commands, run synchronously in the tracked cwd and return combined stdout/stderr.
    const res = spawnSync(command, {
      shell: this.shellPath,
      cwd: this.cwd,
      encoding: 'utf8',
      windowsHide: true,
    });

    if (res.error) {
      return String(res.error.message);
    }

    const out = (res.stdout || '') + (res.stderr || '');
    return out;
  }

  public close(): void {
    // Nothing to do for synchronous implementation; kept for API compatibility.
    return;
  }
}

export interface metadata {
    name: str;
    version: str;
    src_exports: str[];
    bin_exports: str[];
}

export function install(pkg: str, url: str): int {
  // Prefer direct filesystem operations to avoid shell-specific behaviour.
  const apxRoot = process.cwd();
  const modulesDir = path.join(apxRoot, 'apx_modules');

  if (!fs.existsSync(modulesDir)) {
    return 1; // apx_modules doesn't exist — ask user to run `init`
  }

  const mpath = path.join(modulesDir, 'manifest.json');
  let manifestc: { [k: string]: metadata } = {};
  if (fs.existsSync(mpath)) {
    manifestc = JSON.parse(fs.readFileSync(mpath, 'utf8')) || {};
  }

  const pkgPath = path.join(modulesDir, pkg);
  // Ensure package directory exists
  if (!fs.existsSync(pkgPath)) fs.mkdirSync(pkgPath, { recursive: true });

  // Clone into the package directory
  const cloneRes = spawnSync('git', ['clone', url, pkgPath], {
    encoding: 'utf8',
    windowsHide: true,
    shell: false,
  });
  if (cloneRes.error || cloneRes.status !== 0) {
    // clone failed — return generic error code
    return 3;
  }

  const apxJsonPath = path.join(pkgPath, 'apx.json');
  if (!fs.existsSync(apxJsonPath)) {
    return 2; // apx.json not found
  }

  const apxm = JSON.parse(fs.readFileSync(apxJsonPath, 'utf8'));
  const data: metadata = {
    name: apxm.name,
    version: apxm.version,
    src_exports: apxm.src_exports,
    bin_exports: apxm.bin_exports,
  };

  manifestc[pkg] = data;
  fs.writeFileSync(mpath, JSON.stringify(manifestc, null, 2), 'utf8');

  return 0;
}
//fs.writeFileSync('manifest.json', JSON.stringify(data, null, 2), 'utf8');