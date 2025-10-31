# CLAUDE.md - Global Configuration

> Global CLAUDE.md configuration for all repositories

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
2. **DRY**: Avoid code duplication
3. **KISS**: Keep it simple, avoid over-engineering
4. **Defensive Programming**: Always validate inputs, handle edge cases
5. **Modern & Concise**: Use modern syntax, avoid redundant code, prioritize new language features
6. **Copyright Respect**: Avoid copying large blocks of copyright-protected code

## MCP Server Integration

| Server | Purpose | Use Cases |
|--------|---------|-----------|
| **Context7** | Fetch external tech documentation | Query third-party library docs, API references (requires `CONTEXT7_API_KEY`) |
| **DeepWiki** | GitHub repository deep analysis | Analyze open-source project architecture, understand codebase structure |
| **Playwright** | Browser automation testing | E2E testing, web scraping, UI automation |
| **Nuxt** | Nuxt framework documentation | Nuxt project development, framework feature queries |
| **Nuxt UI** | Nuxt UI component library docs | Query UI component usage, style customization |

## Standards & Conventions

### Code Style

- **Indentation**: 2 spaces
- **Naming Conventions**:
  - File names: `kebab-case` (`user-service.ts`)
  - Class names: `PascalCase` (`UserService`)
  - Function names: `camelCase` (`getUserById`)
  - Constants: `UPPER_SNAKE_CASE` (`MAX_RETRY_COUNT`)
  - Component files: `PascalCase` (`ComponentName.vue`)
  - Hook/Composable: `camelCase`, starting with `use` (`useUser`)
  - CSS class names: `kebab-case` or BEM convention
- **Comment Conventions**:
  - Use JSDoc-style comments for functions and classes
  - Complex logic must include explanatory comments
  - TODO format: `// TODO: [task description] - [owner] - [date]`

### Git Workflow

- **Commits**: Follow **Emoji + Conventional Commits** specification, use Chinese
- **Branches**: Use descriptive names (`feat/`, `fix/`, `docs/`, `chore/`)
- **Pull Requests**: Clear titles, reference issues in PR description, atomic changes
- **Issue References**: Only use "Closes #123" in PR descriptions, not in individual commits
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
- Tests follow AAA pattern: Arrange, Act, Assert

### Markdown Conventions

**Code blocks must have language identifiers**:

| Content Type | Identifier | Example |
|-------------|------------|---------|
| Shell commands | `bash` / `sh` | ` ```bash` |
| Config files | `yaml` / `json` | ` ```yaml` |
| Script code | `javascript` / `typescript` | ` ```typescript` |
| Vue components | `vue` | ` ```vue` |
| Plain text | `text` / `plaintext` | ` ```text` |

**Documentation References**:

- Nuxt: [Quick Reference](https://content.nuxt.com/llms.txt) / [Full Guide](https://content.nuxt.com/llms-full.txt)
- Nuxt UI: [Quick Reference](https://ui.nuxt.com/llms.txt) / [Full Guide](https://ui.nuxt.com/llms-full.txt)
- Project Docs: [Quick Reference](https://docs.mhaibaraai.cn/llms.txt) / [Full Guide](https://docs.mhaibaraai.cn/_llms-full.txt)

## Default Behavior

- Use consistent formatting (leverage auto-formatting tools)
- Keep PRs focused and easy to review
- Prioritize simplicity over backward compatibility unless explicitly required
- Update documentation when functionality changes

## Custom Commands

- **"Commit changes"**: Execute `/commit` command
- **"Commit with branch and PR"**: Execute `/commit-pr` command (create branch after commit, optionally create PR)
- **"Optimize code"**: Execute `/optimize` command
