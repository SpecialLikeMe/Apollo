import {cmd} from './write';
import * as fs from 'fs';

type int = number;
type str = string;
type bool = boolean;

export interface ctx {
    src: str;
    bin: str[];
}
/*
Entry:
    name: str;
    version: str;
    src_exports: str[];
    bin_exports: str[];
*/
export function get_contents(pkg: str): ctx | str {
    const mncl = new cmd();
    let ret: ctx = {
        src: '',
        bin: []
    };

    const metadata = JSON.parse(fs.readFileSync('apx_modules/manifest.json', 'utf8'))[pkg];
    if (!metadata) return 'Package not found';
    mncl.system(`cd apx_modules/${pkg}`);
    for (const src of metadata.src_exports) {
        ret.src += src;
    }
    for (const bin of metadata.bin_exports) {
        ret.bin.push(bin);
    }
    return ret;
}