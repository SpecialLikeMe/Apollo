import {
    bundleProject,
    deinitProject,
    initProject,
    installPackage,
    uninstallPackage,
} from './write.ts';

type int = number;
type str = string;

function usage(): int {
    console.error('Usage: apollo apx init');
    console.error('       apollo apx install <packagename> <url>');
    console.error('       apollo apx uninstall <packagename>');
    console.error('       apollo apx deinit');
    return 1;
}

function main(args: str[]): int {
    if (args.length === 0) {
        return usage();
    }

    const [command, ...rest] = args;
    switch (command) {
        case 'init':
            return rest.length === 0 ? initProject() : usage();
        case 'install':
            return rest.length === 2 ? installPackage(rest[0], rest[1]) : usage();
        case 'uninstall':
            return rest.length === 1 ? uninstallPackage(rest[0]) : usage();
        case 'deinit':
            return rest.length === 0 ? deinitProject() : usage();
        case 'bundle':
            return rest.length === 2 ? bundleProject(rest[0], rest[1]) : usage();
        default:
            return usage();
    }
}

process.exit(main(process.argv.slice(2)));