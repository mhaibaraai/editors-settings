# CLAUDE.md - Global Configuration

> Global CLAUDE.md configuration for all repositories, integrating Context7, DeepWiki and Thinking MCP servers

## Core Principles

- **Language Requirement**: Always respond in English
- **Communication Style**: Avoid pleasantries (like "okay", "indeed", "certainly"), respond directly to core issues

### Security First

- Never commit sensitive information, API keys or sensitive data
- Use environment variables or secure key stores for sensitive information
- Follow principle of least privilege
- Validate all inputs and sanitize outputs

### Architecture Principles

1. **Single Responsibility Principle**: Each module/component is responsible for only one function
2. **DRY (Don't Repeat Yourself)**: Avoid code duplication
3. **KISS (Keep It Simple, Stupid)**: Keep it simple, avoid over-engineering
4. **Defensive Programming**: Always validate inputs, handle edge cases
5. **Copyright Respect**: Avoid copying large segments of copyright-protected code

## MCP Server Integration Strategy

- **Use Context7** to get the latest documentation for external technologies, frameworks and APIs
- **Use DeepWiki** for in-depth technical analysis of GitHub repositories
- **Use Thinking** for complex problem analysis, technical solution design, multi-step task planning

### Documentation Completeness

- Update documentation synchronously when functionality changes
- Provide examples for complex features
- Clearly document breaking changes

## Standards & Conventions

### Code Style Guide

- **Indentation**: Use 2 spaces
- **Naming Conventions**:
  - File names: kebab-case (e.g: user-service.ts)
  - Class names: PascalCase (e.g: UserService)
  - Function names: camelCase (e.g: getUserById)
  - Constants: UPPER_SNAKE_CASE (e.g: MAX_RETRY_COUNT)
  - Component file names: PascalCase (e.g: ComponentName.vue)
  - Hook/Composable: camelCase naming, starting with use (e.g: useUser)
  - CSS class names: kebab-case or follow BEM convention (e.g: class="container-fluid")
- **Comment Conventions**:
  - Use JSDoc style comments for functions and classes
  - Complex logic must have explanatory comments
  - TODO comment format: `// TODO: [task description] - [assignee] - [date]`

### Git Workflow

- **Commits**: Follow [Conventional Commits](https://www.conventionalcommits.org/) format
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

- **Code Fences**: Always annotate code blocks with language identifiers to avoid syntax check errors
  - Use ` ```bash ` instead of ` ``` ` to mark shell commands
  - Use ` ```yaml `, ` ```json `, ` ```javascript ` etc. to mark corresponding languages
  - Use ` ```text ` or ` ```plaintext ` to mark generic content that doesn't need syntax highlighting

## Default Behavior

- Use consistent formatting (utilize auto-formatting tools)
- Tests follow AAA pattern: Arrange, Act, Assert
- Keep PRs focused and easy to review
- Prioritize simplicity over backward compatibility unless explicitly required

## Custom Commands

- **"Commit Changes"**: Execute `/commit` command
- **"Optimize Code"**: Execute `/optimize` command
