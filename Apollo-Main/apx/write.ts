import { spawnSync } from 'node:child_process';
import * as fs from 'node:fs';
import * as path from 'node:path';
import { fileURLToPath } from 'node:url';

type int = number;
type str = string;

const MODULES_DIR_NAME = 'apx_modules';
const MANIFEST_NAME = 'manifest.json';
const BUNDLER_SOURCE = 'bundle.rs';
const BUNDLER_CACHE_DIR = '.cache';

export interface metadata {
  name: str;
  version: str;
  src_exports: str[];
  bin_exports: str[];
  url?: str;
}

type manifest = Record<string, metadata>;

function projectRoot(): string {
  return process.cwd();
}

function apxRoot(): string {
  return path.dirname(fileURLToPath(import.meta.url));
}

function modulesDir(root: string = projectRoot()): string {
  return path.join(root, MODULES_DIR_NAME);
}

function manifestPath(root: string = projectRoot()): string {
  return path.join(modulesDir(root), MANIFEST_NAME);
}

function readJsonFile<T>(filePath: string, fallback: T): T {
  if (!fs.existsSync(filePath)) {
    return fallback;
  }
  return JSON.parse(fs.readFileSync(filePath, 'utf8')) as T;
}

function writeJsonFile(filePath: string, value: unknown): void {
  fs.mkdirSync(path.dirname(filePath), { recursive: true });
  fs.writeFileSync(filePath, JSON.stringify(value, null, 2) + '\n', 'utf8');
}

function readManifest(root: string = projectRoot()): manifest {
  return readJsonFile<manifest>(manifestPath(root), {});
}

function writeManifestFile(root: string, data: manifest): void {
  writeJsonFile(manifestPath(root), data);
}

function ensureStarterMain(root: string): void {
  const mainPath = path.join(root, 'main.apollo');
  if (fs.existsSync(mainPath)) {
    return;
  }
  fs.writeFileSync(mainPath, 'int main() {\n  return 0;\n}\n', 'utf8');
}

function normalizeStringArray(rawValue: unknown, fieldName: string): string[] {
  if (!Array.isArray(rawValue)) {
    throw new Error(`Invalid apx.json: ${fieldName} must be an array`);
  }

  const values: string[] = [];
  for (const item of rawValue) {
    if (typeof item !== 'string' || item.trim().length === 0) {
      throw new Error(`Invalid apx.json: ${fieldName} entries must be non-empty strings`);
    }
    values.push(item);
  }
  return values;
}

function normalizeMetadata(rawValue: unknown, url?: string): metadata {
  if (rawValue === null || typeof rawValue !== 'object') {
    throw new Error('Invalid apx.json: expected an object');
  }

  const raw = rawValue as Record<string, unknown>;
  const name = typeof raw.name === 'string' && raw.name.trim().length > 0 ? raw.name : null;
  const version = typeof raw.version === 'string' && raw.version.trim().length > 0 ? raw.version : null;
  if (name === null) {
    throw new Error('Invalid apx.json: name must be a non-empty string');
  }
  if (version === null) {
    throw new Error('Invalid apx.json: version must be a non-empty string');
  }

  const normalized: metadata = {
    name,
    version,
    src_exports: normalizeStringArray(raw.src_exports ?? [], 'src_exports'),
    bin_exports: normalizeStringArray(raw.bin_exports ?? [], 'bin_exports'),
  };
  if (url) {
    normalized.url = url;
  }
  return normalized;
}

function helperPath(): string {
  const suffix = process.platform === 'win32' ? '.exe' : '';
  return path.join(apxRoot(), BUNDLER_CACHE_DIR, `apx-rust-bundler${suffix}`);
}

function helperSourcePath(): string {
  return path.join(apxRoot(), BUNDLER_SOURCE);
}

function ensureRustBundler(): string {
  const outputPath = helperPath();
  const sourcePath = helperSourcePath();
  const needsBuild = !fs.existsSync(outputPath)
    || fs.statSync(sourcePath).mtimeMs > fs.statSync(outputPath).mtimeMs;
  if (!needsBuild) {
    return outputPath;
  }

  fs.mkdirSync(path.dirname(outputPath), { recursive: true });
  const result = spawnSync('rustc', [sourcePath, '-O', '-o', outputPath], {
    cwd: apxRoot(),
    encoding: 'utf8',
    windowsHide: true,
  });
  if (result.status !== 0 || result.error) {
    const detail = result.error?.message ?? result.stderr ?? 'failed to compile Rust helper';
    throw new Error(detail.trim());
  }
  return outputPath;
}

function runRustBundler(outputPath: string, inputFiles: string[]): void {
  const helper = ensureRustBundler();
  const result = spawnSync(helper, ['bundle', outputPath, ...inputFiles], {
    cwd: projectRoot(),
    encoding: 'utf8',
    windowsHide: true,
  });
  if (result.status !== 0 || result.error) {
    const detail = result.error?.message ?? result.stderr ?? 'Rust bundle helper failed';
    throw new Error(detail.trim());
  }
}

function collectBundleInputs(root: string, entryFile: string): string[] {
  const manifestData = readManifest(root);
  const files: string[] = [];
  const seen = new Set<string>();

  for (const packageName of Object.keys(manifestData).sort()) {
    const packageDir = path.join(modulesDir(root), packageName);
    const packageMetadata = manifestData[packageName];
    for (const exportedSource of packageMetadata.src_exports) {
      const sourcePath = path.resolve(packageDir, exportedSource);
      if (!fs.existsSync(sourcePath)) {
        throw new Error(`Missing src export for ${packageName}: ${exportedSource}`);
      }
      if (!seen.has(sourcePath)) {
        seen.add(sourcePath);
        files.push(sourcePath);
      }
    }
  }

  const normalizedEntry = path.resolve(root, entryFile);
  if (!seen.has(normalizedEntry)) {
    files.push(normalizedEntry);
  }
  return files;
}

export function initProject(root: string = projectRoot()): int {
  fs.mkdirSync(modulesDir(root), { recursive: true });
  fs.mkdirSync(path.join(root, 'build'), { recursive: true });
  if (!fs.existsSync(manifestPath(root))) {
    writeManifestFile(root, {});
  }
  ensureStarterMain(root);
  console.log(`Initialized apx in ${modulesDir(root)}`);
  return 0;
}

export function deinitProject(root: string = projectRoot()): int {
  fs.rmSync(modulesDir(root), { recursive: true, force: true });
  console.log(`Removed apx state from ${modulesDir(root)}`);
  return 0;
}

export function installPackage(pkg: str, url: str, root: string = projectRoot()): int {
  initProject(root);
  const destination = path.join(modulesDir(root), pkg);
  if (fs.existsSync(destination)) {
    console.error(`Package already installed: ${pkg}`);
    return 4;
  }

  const cloneResult = spawnSync('git', ['clone', '--depth', '1', url, destination], {
    cwd: root,
    encoding: 'utf8',
    windowsHide: true,
  });
  if (cloneResult.status !== 0 || cloneResult.error) {
    console.error((cloneResult.stderr || cloneResult.error?.message || 'git clone failed').trim());
    fs.rmSync(destination, { recursive: true, force: true });
    return 3;
  }

  const packageConfigPath = path.join(destination, 'apx.json');
  if (!fs.existsSync(packageConfigPath)) {
    console.error('Error: apx.json not found in the repository.');
    fs.rmSync(destination, { recursive: true, force: true });
    return 2;
  }

  try {
    const manifestData = readManifest(root);
    manifestData[pkg] = normalizeMetadata(readJsonFile(packageConfigPath, {}), url);
    writeManifestFile(root, manifestData);
    console.log(`Installed ${pkg} from ${url}`);
    return 0;
  } catch (error) {
    console.error(error instanceof Error ? error.message : String(error));
    fs.rmSync(destination, { recursive: true, force: true });
    return 5;
  }
}

export function uninstallPackage(pkg: str, root: string = projectRoot()): int {
  const manifestData = readManifest(root);
  if (!(pkg in manifestData)) {
    console.error(`Package not installed: ${pkg}`);
    return 4;
  }

  delete manifestData[pkg];
  writeManifestFile(root, manifestData);
  fs.rmSync(path.join(modulesDir(root), pkg), { recursive: true, force: true });
  console.log(`Uninstalled ${pkg}`);
  return 0;
}

export function bundleProject(entryFile: str, outputFile: str, root: string = projectRoot()): int {
  try {
    const entryPath = path.resolve(root, entryFile);
    if (!fs.existsSync(entryPath)) {
      console.error(`Entry file not found: ${entryPath}`);
      return 1;
    }

    const outputPath = path.resolve(root, outputFile);
    fs.mkdirSync(path.dirname(outputPath), { recursive: true });
    const inputs = collectBundleInputs(root, entryFile);
    runRustBundler(outputPath, inputs);
    console.log(`Bundled ${inputs.length} source file(s) into ${outputPath}`);
    return 0;
  } catch (error) {
    console.error(error instanceof Error ? error.message : String(error));
    return 6;
  }
}