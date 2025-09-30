# Global Configuration

> Global configuration for all repositories, integrating Context7, DeepWiki and Thinking MCP servers

## Core Principles

- **Language Requirement**: Always respond in Chinese
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
5. **Modern & Clean**: Code must be clean, efficient and use modern syntax, avoid redundant code, prioritize language modern features
6. **Copyright Respect**: Avoid copying large segments of copyright-protected code

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

- **Commits**: Follow **emoji + Conventional Commits** specification, all commit messages must be written in Chinese.
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

### `/commit` Task Steps

1. Run `git status` to understand the working tree state
2. Run `git diff` to review the pending edits
3. Group changes by logical scope and select the proper **emoji + conventional commit type** for each group:

  - `✨ feat:` for new features
  - `🐛 fix:` for bug fixes
  - `📚 docs:` for documentation changes
  - `💄 style:` for formatting changes
  - `♻️ refactor:` for code refactoring
  - `✅ test:` for test additions/changes
  - `🔧 chore:` for maintenance tasks

4. When multiple logical groups exist, iterate through them:

  - Stage only the files or hunks for the current group (e.g. `git add <paths>` or `git add -p`)
  - Create an **emoji + conventional commit message** that matches the group scope (**must use Chinese**)

5. If there is only one logical group, stage everything with `git add -A` before committing
6. Push all commits on the current branch with `git push`

Remember: This project follows **emoji + Conventional Commits specification**. **All commit messages must be written in Chinese**. Do NOT add co-authors to the commit message.

### `/optimize` Task Steps

#### Analysis Focus

1. Critical Issues (Priority Handling)

- **Security Vulnerabilities**: Input validation, permission control, dependency vulnerabilities
- **Performance Bottlenecks**: Memory leaks, algorithm complexity, blocking operations
- **Error Handling**: Missing try-catch, null/undefined checks

2. Code Quality

- **Code Duplication**: Extract common logic
- **Complex Functions**: Split functions exceeding 30 lines
- **Cyclomatic Complexity**: Reduce to below 10

3. Modernization Improvements

- **Modern Syntax**: ES6+, optional chaining `?.`, nullish coalescing `??`, async/await
- **Type Safety**: TypeScript type definitions, strict mode
- **Performance Optimization**:
  - Frontend: Component memoization, lazy loading, code splitting
  - Backend: Database indexing, caching, concurrency optimization

#### Output Requirements

${1:+### Single File Optimization
1. **Issue List**: List discovered issues by priority (P0/P1/P2)
2. **Optimized Code**: Create new file with optimized code, keep original unchanged
   - Naming convention: `$1.optimized` or create `optimized/` subdirectory
3. **Improvement Summary**: Brief description of main improvements and expected effects
4. **Risk Notice**: Mention compatibility impacts if any}${1:-### Project-wide Optimization
1. **Issue List**: List discovered issues by file/module with priority labels
2. **Optimization Plan**:
   - P0 Critical: Files requiring immediate fixes
   - P1 Important: Modules planned for optimization
   - P2 Improvements: Long-term optimization directions
3. **Priority Files**: Create optimized versions for 3-5 most critical files (new files)
4. **Architecture Recommendations**: Overall architectural improvement directions}

#### Implementation Principles

- ✅ Security first, no new risks introduced
- ✅ Maintain backward compatibility
- ✅ Concise and efficient code using modern syntax
- ✅ **YAGNI Principle**: Only optimize what's truly needed, avoid over-optimization
- ✅ **Do not modify original files**: All optimized code output as new files

#### Optimization Constraints

- ⚠️ Only fix known issues and obvious performance bottlenecks
- ⚠️ Don't add features or abstractions that might be needed in the future
- ⚠️ Don't rewrite working code just for "perfection"
- ⚠️ Prioritize readability and maintainability over extreme performance
