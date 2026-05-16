import * as write from './write';
import * as include from './include';
import {argv} from 'process';
import * as fs from 'fs';

type int = number;
type str = string;
type bool = boolean;

function init(): int {
    fs.mkdirSync('apx_modules', { recursive: true });
    const manifest = {};
    fs.writeFileSync('apx_modules/manifest.json', JSON.stringify(manifest, null, 2), 'utf8');
    return 0;
}

function main(str: str[], argc: int): int {
    if (argc == 0) return 1;
    const idt: str = str[0];
    if (idt === 'ins') { 
        const scs: int = write.install(str[1], str[2]); 
        if (scs === 2) {
            console.error('Error: apx.json not found in the repository.');
            return 2;
        }
    }
    else if (idt === 'init') init();
    else return 1;
    return 0;
}

const exit = main(process.argv.slice(2), process.argv.length - 2);
process.exit(exit); 