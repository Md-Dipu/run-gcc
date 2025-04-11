# Contributing Guide

Thank you for considering contributing to `run-gcc`! Contributions are welcome and appreciated. This document outlines the guidelines for contributing to the project.

## How to Contribute

### 1. Fork the Repository

- Navigate to the [repository](https://github.com/Md-Dipu/run-gcc) on GitHub.
- Click the **Fork** button to create your own copy of the repository.

### 2. Clone the Repository

- Clone your forked repository to your local machine:
  ```bash
  git clone https://github.com/your-username/run-gcc.git
  cd run-gcc
  ```

### 3. Create a Branch

- Create a new branch for your feature or bug fix:
  ```bash
  git checkout -b feature-or-bugfix-name
  ```

### 4. Make Changes

- Implement your changes in the codebase.
- Follow the coding style and conventions used in the project.
- Add or update tests to cover your changes, if applicable.

### 5. Test Your Changes

- Run the tests to ensure your changes do not break existing functionality:
  ```bash
  make test
  ```

### 6. Commit Your Changes

- Write clear and concise commit messages:
  ```bash
  git add .
  git commit -m "type(scope): brief description of your changes"
  ```

### 7. Push Your Changes

- Push your branch to your forked repository:
  ```bash
  git push origin feature-or-bugfix-name
  ```

### 8. Submit a Pull Request

- Go to the original repository on GitHub.
- Click the **Pull Requests** tab and then **New Pull Request**.
- Select your branch and set the base branch to `develop`.
- Submit the pull request with a detailed description of your changes.

## Code of Conduct

Please adhere to the [Code of Conduct](CODE_OF_CONDUCT.md) to ensure a welcoming and inclusive environment for everyone.

## Guidelines for Contributions

1. **Bug Reports**

   - Provide a clear and descriptive title.
   - Include steps to reproduce the issue.
   - Mention the expected and actual behavior.
   - Attach logs or screenshots if applicable.

2. **Feature Requests**

   - Explain the feature and its purpose.
   - Provide examples or use cases where the feature would be helpful.

3. **Code Contributions**

   - Follow the existing coding style and conventions.
   - Write clear and concise comments where necessary.
   - Ensure your code is well-tested and passes all tests.

4. **Documentation**
   - Update or improve documentation as needed.
   - Ensure the documentation is clear and easy to understand.

## Development Setup

### Prerequisites

- Ensure you have `make`, `gcc`, and `g++` installed on your system.
- Install [Bats](https://github.com/bats-core/bats-core) for running tests.

### Build and Test

- To build and install locally:
  ```bash
  make install
  ```
- To uninstall:
  ```bash
  make uninstall
  ```
- To run tests:
  ```bash
  make test
  ```

## Need Help?

If you have any questions or need assistance, feel free to open an issue on the [GitHub Issues](https://github.com/Md-Dipu/run-gcc/issues) page.

Thank you for contributing to `run-gcc`!
