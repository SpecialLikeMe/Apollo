use std::env;
use std::fs;
use std::io::{self, Write};
use std::path::Path;
use std::process;

fn usage() -> ! {
    eprintln!("Usage: apx-rust-bundler bundle <output-file> <input-file> [input-file...]");
    process::exit(1);
}

fn render_path_label(path: &str) -> String {
    path.replace('\\', "/")
}

fn bundle_sources(output_path: &str, input_files: &[String]) -> io::Result<()> {
    if let Some(parent) = Path::new(output_path).parent() {
        if !parent.as_os_str().is_empty() {
            fs::create_dir_all(parent)?;
        }
    }

    let mut output = fs::File::create(output_path)?;
    for input in input_files {
        let content = fs::read_to_string(input)?;
        writeln!(output, "// apx bundle: {}", render_path_label(input))?;
        writeln!(output, "{}", content)?;
        if !content.ends_with('\n') {
            writeln!(output)?;
        }
        writeln!(output)?;
    }
    Ok(())
}

fn main() {
    let mut args = env::args().skip(1);
    let Some(command) = args.next() else {
        usage();
    };

    if command != "bundle" {
        usage();
    }

    let Some(output_path) = args.next() else {
        usage();
    };
    let input_files: Vec<String> = args.collect();
    if input_files.is_empty() {
        usage();
    }

    if let Err(error) = bundle_sources(&output_path, &input_files) {
        eprintln!("{}", error);
        process::exit(1);
    }
}