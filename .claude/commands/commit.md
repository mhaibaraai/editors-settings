---
allowed-tools: Bash(git add:*), Bash(git status:*), Bash(git commit:*), Bash(git diff:*), Bash(git push:*)
description: Create conventional commits with emojis, split changes into multiple commits when it improves clarity, and push to remote repository.
---

## Task Steps

1. Run `git status` to understand the working tree state
2. Run `git diff` to review pending edits
3. Group changes by logical scope and select appropriate **emoji + conventional commit type** for each group:

  - `✨ feat:` new features
  - `🐛 fix:` bug fixes
  - `📚 docs:` documentation changes
  - `💄 style:` formatting changes
  - `♻️ refactor:` code refactoring
  - `✅ test:` test additions/changes
  - `🔧 chore:` maintenance tasks

4. When multiple logical groups exist, process them one by one:

  - Stage only files or chunks for the current group (e.g., `git add <paths>` or `git add -p`)
  - Create an **emoji + conventional commit message** that matches the group's scope (**must be in Chinese**)

5. If only one logical group exists, use `git add -A` to stage everything before committing
6. Use `git push` to push all commits on the current branch

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

Remember: This project follows the **emoji + conventional commit specification**. **All commit messages must be written in Chinese**. Do not add co-authors in commit messages.
