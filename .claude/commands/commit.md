---
allowed-tools: Bash(git add:*), Bash(git status:*), Bash(git commit:*), Bash(git diff:*), Bash(git push:*)
description: Create conventional commits, splitting changes into multiple commits when it improves clarity, and push to the remote repository.
---

# Commit and Push Changes

Create conventional commits, splitting changes into multiple commits when it improves clarity, and push to the remote repository.

## Steps

1. Run `git status` to understand the working tree state
2. Run `git diff` to review the pending edits
3. Group changes by logical scope and select the proper conventional commit type for each group:

   - `feat:` for new features
   - `fix:` for bug fixes
   - `docs:` for documentation changes
   - `style:` for formatting changes
   - `refactor:` for code refactoring
   - `test:` for test additions/changes
   - `chore:` for maintenance tasks

4. When multiple logical groups exist, iterate through them:

   - Stage only the files or hunks for the current group (e.g. `git add <paths>` or `git add -p`)
   - Create a conventional commit message that matches the group scope (**must use Chinese**)

5. If there is only one logical group, stage everything with `git add -A` before committing
6. Push all commits on the current branch with `git push`

Remember: This project follows Conventional Commits specification. **All commit messages must be written in Chinese**. Do NOT add co-authors to the commit message.
