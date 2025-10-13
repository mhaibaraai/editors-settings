# CLAUDE.md - Global Configuration

> Global CLAUDE.md configuration applicable to all repositories, integrating Context7, DeepWiki, Playwright, Nuxt, and Nuxt UI MCP servers

## Core Principles

- **Language Requirement**: Always respond in Simplified Chinese
- **Communication Style**: Avoid pleasantries (like "好的", "确实", "当然"), respond directly to core questions

### Security First

- Never commit confidential information, API keys, or sensitive data
- Use environment variables or secure key vaults to store sensitive information
- Follow the principle of least privilege
- Validate all inputs and sanitize outputs

### Architecture Principles

1. **Single Responsibility Principle**: Each module/component is responsible for only one function
2. **DRY (Don't Repeat Yourself)**: Avoid code duplication
3. **KISS (Keep It Simple, Stupid)**: Keep it simple, avoid over-engineering
4. **Defensive Programming**: Always validate inputs, handle edge cases
5. **Modern & Concise**: Code should be concise and efficient using modern syntax, avoid redundant code, prioritize new language features
6. **Copyright Respect**: Avoid copying large blocks of copyright-protected code

## MCP Server Integration Strategy

### Context7

- **Purpose**: Get the latest documentation for external technologies, frameworks, and APIs
- **Use Cases**: Query third-party library documentation, API references, technical specifications
- **Note**: Requires `CONTEXT7_API_KEY` environment variable configuration

### DeepWiki

- **Purpose**: Get in-depth technical analysis of GitHub repositories
- **Use Cases**: Analyze open-source project architecture, understand codebase structure, learn best practices

### Playwright MCP

- **Purpose**: Browser automation and end-to-end testing
- **Use Cases**: Write E2E tests, web scraping, UI automation testing
- **Type**: stdio (requires Node.js environment)

### Nuxt MCP

- **Purpose**: Nuxt framework documentation and best practices
- **Use Cases**: Nuxt project development, framework feature queries, configuration guidance

### Nuxt UI

- **Purpose**: Nuxt UI component library documentation
- **Use Cases**: Query UI component usage, style customization, component API

### Documentation Completeness

- Update documentation synchronously when features change
- Provide examples for complex features
- Clearly document breaking changes

## Standards & Conventions

### Code Style Guide

- **Indentation**: Use 2 spaces
- **Naming Conventions**:
  - File names: kebab-case (e.g., user-service.ts)
  - Class names: PascalCase (e.g., UserService)
  - Function names: camelCase (e.g., getUserById)
  - Constants: UPPER_SNAKE_CASE (e.g., MAX_RETRY_COUNT)
  - Component file names: PascalCase (e.g., ComponentName.vue)
  - Hook/Composable: camelCase naming, starting with use (e.g., useUser)
  - CSS class names: kebab-case or follow BEM convention (e.g., class="container-fluid")
- **Comment Conventions**:
  - Use JSDoc-style comments for functions and classes
  - Complex logic must include explanatory comments
  - TODO comment format: `// TODO: [task description] - [owner] - [date]`

### Git Workflow

- **Commits**: Follow **Emoji + Conventional Commits** specification, all commit messages must be written in Chinese
- **Branches**: Use descriptive names (`feat/`, `fix/`, `docs/`, `chore/`)
- **Pull Requests**: Clear titles, reference issues in PR description, atomic changes
- **Issue References**: Only use "Closes #123" in PR descriptions, not in individual commit messages
- Never commit drafts to Git

### Code Quality

- Prioritize code readability and maintainability
- Always include error handling
- Add necessary type annotations (TypeScript)
- Follow existing code patterns in the project

### Testing Requirements

- Write unit tests for all new features
- Test coverage target: >80%
- Use TDD approach for developing new features

### Markdown Conventions

- **Code Fences**: Always annotate code blocks with language identifiers to avoid syntax checking errors
  - Use ` ```bash ` instead of ` ``` ` to mark shell commands
  - Use ` ```yaml `, ` ```json `, ` ```javascript `, etc., to mark corresponding languages
  - Use ` ```text ` or ` ```plaintext ` to mark generic content that doesn't need syntax highlighting

## Default Behavior

- Use consistent formatting (leverage auto-formatting tools)
- Tests follow AAA pattern: Arrange, Act, Assert
- Keep PRs focused and easy to review
- Prioritize simplicity over backward compatibility unless explicitly required

## Custom Commands

- **"Commit Changes"**: Execute `/commit` command
- **"Optimize Code"**: Execute `/optimize` command
