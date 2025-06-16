# Git Operations - Conventional Commits Compliant

## Trigger Keywords and Scenarios

When user mentions any of these keywords, immediately execute corresponding git workflow:

### Git Commit History Summary

- "周报总结" (weekly summary)
- "提交汇总" (commit summary)
- "git总结" (git summary)
- "提交记录" (commit records)
- "commit总结" (commit summary)

### Current Changes Commit Message Generation

- "生成提交信息" (generate commit message)
- "提交信息" (commit message)
- "commit message"
- "写提交信息" (write commit message)
- "暂存区提交" (staged commit)

### Single File Change Analysis

- "文件改动提交" (file change commit)
- "单文件提交" (single file commit)
- "这个文件的提交信息" (commit message for this file)

### Pull Request/Merge Request Generation

- "PR描述" (PR description)
- "MR描述" (MR description)
- "合并请求" (merge request)
- "拉取请求" (pull request)

### Release Notes Generation

- "release notes"
- "发布说明" (release notes)
- "版本更新" (version update)
- "changelog"

### Commit Message Validation

- "检查提交格式" (check commit format)
- "验证提交" (validate commit)
- "提交规范检查" (commit standard check)

## Auto-execution Workflow by Scenario

### History Summary

1. Execute: git log --pretty=format:"%h - %s (%ci)" --since="7 days ago" --author="$(git config user.name)"
2. Categorize commits by Conventional Commits types
3. Generate summary with Chinese descriptions

### Current Changes

1. Execute: git diff --cached --name-status (for staged changes)
2. Execute: git diff --name-status (for unstaged changes)
3. Analyze file changes and generate appropriate commit message
4. Use Chinese for description body

### Single File Analysis

1. Execute: git diff [filename] or analyze file content
2. Determine change type (feat/fix/docs/style/refactor/perf/test/chore)
3. Generate focused commit message for specific file

### PR/MR Generation

1. Analyze recent commits or specified commit range
2. Generate comprehensive description following conventional format
3. Include scope, breaking changes, and detailed Chinese descriptions

### Release Notes

1. Analyze commits between versions or tags
2. Group by commit types (feat/fix/BREAKING CHANGE)
3. Generate structured release notes in conventional format

### Validation

1. Check existing commit messages against Conventional Commits specification
2. Provide suggestions for non-compliant commits
3. Offer corrected versions

## Output Requirements - Conventional Commits Standard

### Mandatory Format Structure

- type[optional scope]: description
- [optional body in Chinese]
- [optional footer(s)]

### Commit Types (English)

- feat: 新功能
- fix: 修复问题
- docs: 文档更新
- style: 代码格式调整
- refactor: 代码重构
- perf: 性能优化
- test: 测试相关
- chore: 构建工具或辅助工具的变动
- ci: CI/CD相关
- build: 构建系统相关
- revert: 回退更改

### Language Requirements

- Commit type: English (mandatory)
- Scope: English (if applicable)
- Description: Chinese (mandatory for body/details)
- Breaking changes: Must be marked properly

## Execution Priority

High priority rule - automatically detect scenario type and apply appropriate Conventional Commits compliant workflow when trigger keywords detected. All descriptions and body content must be in Chinese while maintaining English commit types and technical terms.
