---
allowed-tools: Bash(git checkout:*), Bash(git push:*), Bash(gh pr:*)
description: 在提交后创建新分支并推送到远程仓库，可选创建 PR
---

## 任务步骤

1. 首先执行 `/commit` 完成常规提交
2. 基于提交类型和消息创建新分支：
   - 使用描述性分支名：`feat/`, `fix/`, `docs/`, `chore/`
   - 示例：`git checkout -b feat/user-avatar-upload`

3. 推送新分支到远程仓库：
   - `git push -u origin <分支名>`

4. 如果指令包含 `-pr` 参数，创建 Pull Request：
   - 使用 `gh pr create` 创建 PR
   - 使用中文标题和描述
   - 引用相关 issue（如果适用）

## 分支命名规范

- `feat/`: 新功能
- `fix/`: 错误修复
- `docs/`: 文档更新
- `chore/`: 维护任务
- `refactor/`: 代码重构
- `test/`: 测试相关

## 示例用法

```bash
# 仅创建分支
/commit-pr

# 创建分支并创建 PR
/commit-pr -pr
```
