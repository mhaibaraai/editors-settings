# Global Configuration

> configuration for all repositories

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

### Git Workflow

- **Commits**: Follow **Standard Conventional Commits** specification (No Emojis), use Chinese
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

## Commit Message Guidelines

Create standard conventional commits, split changes into multiple commits when it improves clarity, and push to remote repository.

## Task Steps

1. Run `git status` to understand the working tree state
2. Run `git diff` to review pending edits
3. Group changes by logical scope and select appropriate **conventional commit type** for each group:

  - `feat:` new features
  - `fix:` bug fixes
  - `docs:` documentation changes
  - `style:` formatting changes
  - `refactor:` code refactoring
  - `test:` test additions/changes
  - `chore:` maintenance tasks
  - `perf:` performance improvements
  - `ci:` CI/CD configuration changes

4. **Breaking Changes**:
   - **MUST** include a `BREAKING CHANGE:` footer with a description of the change.
   - Optionally, append a `!` after the type/scope (e.g., `feat!:`) to visually signal the breaking change.

5. When multiple logical groups exist, process them one by one:

  - Stage only files or chunks for the current group (e.g., `git add <paths>` or `git add -p`)
  - Create a **conventional commit message** that matches the group's scope (**must be in Chinese**)

6. If only one logical group exists, use `git add -A` to stage everything before committing
7. Use `git push` to push all commits on the current branch

## Guidelines for Splitting Commits

- **Priority Principle**: Each commit should be an independent, meaningful logical unit
- **When to Split**:
  - Different types of changes (e.g., features vs docs vs fixes) should be separate commits
  - Changes to different modules or functional areas should be committed separately
  - Refactoring and new features should be in separate commits
- **When NOT to Split**:
  - Interdependent changes should stay in the same commit
  - Related files for the same feature (e.g., component + styles + tests) can be committed together
  - Trivial formatting or minor tweaks can be combined
- **Maximum Count Limit**: Split into **at most 5 commits** per operation
  - If there are more than 5 logical groups, merge similar or related changes
  - Prioritize the most important and independent logical groups
  - When necessary, combine minor changes into a single `chore` or `refactor` commit

## Commit Message Examples

```text
# Regular commits
feat: 添加用户头像上传功能
fix: 修复登录页面在移动端的布局问题

# Scoped commits
feat(auth): 增加 JWT 令牌验证支持

# Breaking changes
feat!: 重构配置系统使用 YAML 格式

BREAKING CHANGE: 配置文件格式从 JSON 改为 YAML
````

Remember: This project follows the **Standard Conventional Commits specification**. **All commit messages must be written in Chinese**. Do not add co-authors in commit messages.
