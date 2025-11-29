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
  - Only comment when necessary: non-obvious business logic, complex algorithms, performance optimization rationale, temporary workarounds
  - Prefer clear naming and code structure over comments
  - Avoid repeating what the code already expresses
  - Public APIs require JSDoc comments, internal functions as needed
  - TODO format: `// TODO: [task description] - [owner] - [date]`

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
| Script code | `javascript` / `ts` / `typescript` | ` ```ts` |
| Vue components | `vue` | ` ```vue` |
| Plain text | `text` / `plaintext` | ` ```text` |

**Chinese Documentation Standards**:

- Punctuation: Use full-width Chinese punctuation (,。:、;?!)
- Quotation marks: Use 「」 or ""
- Chinese-English mixed text: Add spaces between Chinese and English, Chinese and numbers
- Proper nouns: Maintain correct capitalization (GitHub, TypeScript, Vue.js)
- Code/numbers/units: Use half-width characters, no space between numbers and units (16px, 100ms)

**Format Standards**:

- Don't skip heading levels, add blank line after headings
- Use `-` consistently for unordered lists
- Use ` ` for inline code, ``` with language identifier for code blocks
- Add blank lines before and after tables

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
- **"Optimize code"**: Execute `/optimize` command
- **"Refactor method/function"**: Execute `/refactor` command
