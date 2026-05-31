import * as fs from 'node:fs';
import * as path from 'node:path';

type str = string;

export interface ctx {
    src: str;
    bin: str[];
}

interface metadata {
    name: str;
    version: str;
    src_exports: str[];
    bin_exports: str[];
    url?: str;
}

export function get_contents(pkg: str): ctx | str {
    const manifestPath = path.join(process.cwd(), 'apx_modules', 'manifest.json');
    if (!fs.existsSync(manifestPath)) {
        return 'Package manifest not found';
    }

    const manifest = JSON.parse(fs.readFileSync(manifestPath, 'utf8')) as Record<string, metadata>;
    const metadata = manifest[pkg];
    if (!metadata) {
        return 'Package not found';
    }

    const packageDir = path.join(process.cwd(), 'apx_modules', pkg);
    const result: ctx = { src: '', bin: [...metadata.bin_exports] };
    for (const exportedSource of metadata.src_exports) {
        result.src += fs.readFileSync(path.join(packageDir, exportedSource), 'utf8') + '\n';
    }
    return result;
}