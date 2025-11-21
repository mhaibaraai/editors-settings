---
allowed-tools: Bash(git add:*), Bash(git status:*), Bash(git commit:*), Bash(git diff:*), Bash(git push:*)
description: Create standard conventional commits, split changes into multiple commits when it improves clarity, and push to remote repository.
---

## Commit Message Task Steps

1. Run `git status` to understand the working tree state
2. Run `git diff` to review pending edits
3. Group changes by logical scope and select appropriate **conventional commit type** for each group:

  - `feat:` new features
  - `fix:` bug fixes
  - `docs:` documentation changes
  - `style:` formatting changes (white-space, formatting, missing semi-colons, etc)
  - `refactor:` code refactoring (neither fixes a bug nor adds a feature)
  - `test:` test additions/changes
  - `chore:` maintenance tasks (build process, auxiliary tools, libraries)
  - `perf:` performance improvements
  - `ci:` CI/CD configuration changes

4. **Breaking Changes**:
   - **MUST** include a `BREAKING CHANGE:` footer with a description of the change.
   - Optionally, append a exclamation mark after the type/scope (e.g., `feat!:`) to visually signal the breaking change in the header.

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

```md
# Regular commits
feat: 添加用户头像上传功能
fix: 修复登录页面在移动端的布局问题
docs: 更新 API 文档说明

# Scoped commits
feat(auth): 增加 JWT 令牌验证支持
refactor(utils): 优化日期处理函数逻辑

# Breaking changes (Standard compliant)
feat!: 重构配置系统使用 YAML 格式

BREAKING CHANGE: 配置文件格式从 JSON 改为 YAML，旧的 config.json 将不再被读取。
```

Remember: This project follows the **Standard Conventional Commits specification**. **All commit messages must be written in Chinese**. Do not add co-authors in commit messages.
