# run-gcc

`run-gcc` is a versatile Bash script designed to simplify the process of compiling and running C and C++ programs. It provides features such as input/output handling, output comparison, and error reporting, making it a convenient tool for developers and testers.

## Features

- Automatically detects the file type (`.c` or `.cpp`) and uses the appropriate compiler (`gcc` or `g++`).
- Supports input redirection from a file.
- Compares program output with an expected output file and displays differences.
- Provides detailed error messages for unsupported file types, missing files, and compilation errors.
- Includes options for displaying help and version information.

## Installation, Update, and Uninstallation

For detailed instructions on installing, updating, and uninstalling `run-gcc`, please refer to the [Installation Guide](docs/installation-guide.md).

### Quick Installation

To install `run-gcc` using the provided `Makefile`, run:

```bash
make install
```

This will install the script to `/usr/bin` and the manual page to `/usr/share/man/man1`.

To uninstall, run:

```bash
make uninstall
```

## Usage

```bash
run-gcc <source_file> [OPTIONS]
```

### Options

- `-h, --help`  
  Show the help message and exit.

- `-v, --version`  
  Show the script version and exit.

- `-i, --input <file>`  
  Specify an input file to provide input to the program.

- `-e, --expected <file>`  
  Specify an expected output file for comparison.

- `-d, --diff`  
  Show the difference between the program output and the expected output.

## Examples

### Compile and Run a C Program

```bash
run-gcc hello.c
```

### Compile and Run a C++ Program

```bash
run-gcc hello.cpp
```

### Run a Program with Input Redirection

```bash
run-gcc hello_with_input.c -i input.txt
```

### Compare Output with Expected Output

```bash
run-gcc hello_with_input.c -i input.txt -e expected_output.txt
```

### Show Differences on Output Mismatch

```bash
run-gcc hello_with_input.c -i input.txt -e wrong_output.txt -d
```

## Testing

The project includes automated tests written in [Bats](https://github.com/bats-core/bats-core). To run the tests, execute:

```bash
make test
```

## Contributing

Contributions are welcome! If you'd like to contribute to `run-gcc`, please follow the guidelines outlined in the [Contributing Guide](docs/CONTRIBUTING.md).

### How to Get Started

1. Fork the repository and clone it locally.
2. Create a new branch for your feature or bug fix.
3. Make your changes, ensuring they follow the project's coding conventions.
4. Test your changes thoroughly.
5. Submit a pull request with a detailed description of your changes.

For more details, refer to the [Contributing Guide](docs/CONTRIBUTING.md).

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
