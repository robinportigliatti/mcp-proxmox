# Contributing to MCP Proxmox Server

Thank you for your interest in contributing to MCP Proxmox Server! This document provides guidelines and instructions for contributing.

## Code of Conduct

By participating in this project, you agree to maintain a respectful and inclusive environment for all contributors.

## How to Contribute

### Reporting Bugs

Before creating bug reports, please check existing issues to avoid duplicates. When creating a bug report, include:

- **Clear title and description**
- **Steps to reproduce** the issue
- **Expected behavior** vs actual behavior
- **Environment details** (Python version, Proxmox version, OS)
- **Error messages** or logs if applicable

### Suggesting Enhancements

Enhancement suggestions are welcome! Please provide:

- **Clear use case** for the enhancement
- **Detailed description** of the proposed functionality
- **Examples** of how it would be used
- **Potential implementation approach** (if you have ideas)

### Pull Requests

1. **Fork the repository** and create your branch from `main`
2. **Follow the existing code style** and conventions
3. **Add tests** for new functionality
4. **Update documentation** as needed
5. **Ensure all tests pass** before submitting
6. **Write clear commit messages** following conventional commits format

#### Commit Message Format

```
<type>(<scope>): <subject>

<body>

<footer>
```

**Types:**
- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation changes
- `style`: Code style changes (formatting, etc.)
- `refactor`: Code refactoring
- `test`: Adding or updating tests
- `chore`: Maintenance tasks

**Examples:**
```
feat(vm): add support for VM templates
fix(client): resolve API token authentication issue
docs(readme): update installation instructions
```

## Development Setup

### Prerequisites

- Python 3.8 or higher
- Git
- Proxmox VE test environment (recommended)

### Setup Steps

1. **Clone your fork:**
   ```bash
   git clone https://github.com/YOUR_USERNAME/mcp-proxmox.git
   cd mcp-proxmox
   ```

2. **Create virtual environment:**
   ```bash
   python3 -m venv .venv
   source .venv/bin/activate
   ```

3. **Install dependencies:**
   ```bash
   pip install -r requirements.txt
   pip install -e .
   ```

4. **Configure environment:**
   ```bash
   cp .env.example .env
   # Edit .env with your Proxmox credentials
   ```

### Running Tests

```bash
source .venv/bin/activate
python -m pytest tests/
```

### Code Style

- Follow [PEP 8](https://pep8.org/) style guidelines
- Use meaningful variable and function names
- Add docstrings to all functions and classes
- Keep functions focused and modular
- Add type hints where appropriate

### Documentation

- Update README.md for user-facing changes
- Add docstrings for new functions and classes
- Update relevant documentation in `docs/` directory
- Include examples for new features

## Project Structure

```
mcp-proxmox/
├── src/proxmox_mcp/     # Main source code
├── tests/               # Test files
├── scripts/             # Utility scripts
├── docs/                # Documentation
└── examples/            # Usage examples
```

## Testing Guidelines

- Write tests for all new functionality
- Ensure tests are isolated and repeatable
- Mock external API calls when appropriate
- Test both success and error cases
- Aim for high code coverage

## Review Process

1. **Automated checks** will run on your PR
2. **Maintainer review** will provide feedback
3. **Address feedback** by updating your PR
4. **Approval and merge** once all checks pass

## Questions?

Feel free to open an issue for questions or reach out to the maintainers.

## License

By contributing, you agree that your contributions will be licensed under the MIT License.

---

Thank you for contributing to MCP Proxmox Server! 🎉

