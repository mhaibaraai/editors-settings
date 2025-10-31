---
allowed-tools: Bash(git checkout:*), Bash(git push:*), Bash(gh pr:*)
description: Create a new branch after committing, push to remote repository, and optionally create a pull request
---

## Task Steps

1. First execute `/commit` to complete conventional commits
2. Create a new branch based on commit type and message:
   - Use descriptive branch names: `feat/`, `fix/`, `docs/`, `chore/`
   - Example: `git checkout -b feat/user-avatar-upload`

3. Push the new branch to remote repository:
   - `git push -u origin <branch-name>`

4. If the command includes `-pr` parameter, create a Pull Request:
   - Use `gh pr create` to create PR
   - Use appropriate title and description
   - Reference related issues if applicable

## Branch Naming Convention

- `feat/`: New features
- `fix/`: Bug fixes
- `docs/`: Documentation updates
- `chore/`: Maintenance tasks
- `refactor/`: Code refactoring
- `test/`: Test related

## Usage Examples

```bash
# Create branch only
/commit-pr

# Create branch and PR
/commit-pr -pr
```
