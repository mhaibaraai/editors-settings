---
applyTo: '**'
description: Create conventional commits with emojis, splitting changes into multiple commits when it improves clarity, and push to the remote repository.
---

# Commit Instructions

when making commits, follow these steps to ensure clarity and proper organization of changes.

## Task Steps

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
