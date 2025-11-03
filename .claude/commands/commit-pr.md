---
allowed-tools: Bash(git checkout:*), Bash(git push:*), Bash(gh pr:*)
description: Create a new branch after committing, push to remote repository, and optionally create a pull request
---

## Task Steps

1. First execute `/commit` to complete conventional commits
2. Create a new branch based on commit type and message:
   - Use descriptive branch names: `feat/`, `fix/`, `docs/`, `chore/`
   - Extract keywords from commit message as branch name
   - Example: `✨ feat: add user avatar upload` → `feat/user-avatar-upload`

3. Push the new branch to remote repository:
   - `git push -u origin <branch-name>`

4. If the command includes `-pr` parameter, create a Pull Request:
   - Use `gh pr create` to create PR
   - PR title uses commit message (remove emoji prefix)
   - Auto-generate PR description (include commit details)
   - Reference related issues if applicable

## Branch Naming Convention

- `feat/`: New features
- `fix/`: Bug fixes
- `docs/`: Documentation updates
- `chore/`: Maintenance tasks
- `refactor/`: Code refactoring
- `test/`: Test related

## PR Creation Specification

- **Title Format**: Commit message with emoji prefix removed
- **Description Content**:
  - Change summary
  - Related issue reference (e.g. `Closes #123`)
  - Test instructions (if any)
- **Labels**: Auto-add based on type (`feature`, `bugfix`, `documentation`, etc.)

## Usage Examples

```bash
# Create branch and push only
/commit-pr

# Create branch, push and create PR
/commit-pr -pr

# Create PR with linked issue
/commit-pr -pr --issue 123
```

## Notes

- Ensure GitHub CLI (`gh`) is installed
- GitHub authentication must be configured in advance
- Check if remote branch exists before creating PR
