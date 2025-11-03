---
allowed-tools: Bash(git checkout:*), Bash(git push:*), Bash(gh pr:*)
description: 在提交后创建新分支并推送到远程仓库,可选创建 PR
---

## 任务步骤

1. 首先执行 `/commit` 完成常规提交
2. 基于提交类型和消息创建新分支:
   - 使用描述性分支名: `feat/`, `fix/`, `docs/`, `chore/`
   - 从提交消息中提取关键词作为分支名
   - 示例: `✨ feat: 添加用户头像上传功能` → `feat/user-avatar-upload`

3. 推送新分支到远程仓库:
   - `git push -u origin <分支名>`

4. 如果指令包含 `-pr` 参数,创建 Pull Request:
   - 使用 `gh pr create` 创建 PR
   - PR 标题使用提交消息(移除 emoji 前缀)
   - 自动生成 PR 描述(包含提交详情)
   - 引用相关 issue(如果适用)

## 分支命名规范

- `feat/`: 新功能
- `fix/`: 错误修复
- `docs/`: 文档更新
- `chore/`: 维护任务
- `refactor/`: 代码重构
- `test/`: 测试相关

## PR 创建规范

- **标题格式**: 移除 emoji 后的提交消息
- **描述内容**:
  - 变更概述
  - 相关 issue 引用(如 `Closes #123`)
  - 测试说明(如有)
- **标签**: 根据类型自动添加 (`feature`, `bugfix`, `documentation` 等)

## 示例用法

```bash
# 仅创建分支并推送
/commit-pr

# 创建分支、推送并创建 PR
/commit-pr -pr

# 创建 PR 并关联 issue
/commit-pr -pr --issue 123
```

## 注意事项

- 确保已安装 GitHub CLI (`gh`)
- 需要预先配置 GitHub 认证
- PR 创建前会检查远程分支是否已存在
