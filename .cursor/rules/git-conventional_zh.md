# Git操作规则 - 符合Conventional Commits规范

## 触发关键词和场景

当用户提及以下任意关键词时，立即执行相应的git工作流：

### Git提交历史总结

- "周报总结"
- "提交汇总"
- "git总结"
- "提交记录"
- "commit总结"

### 当前改动提交信息生成

- "生成提交信息"
- "提交信息"
- "commit message"
- "写提交信息"
- "暂存区提交"

### 单文件改动分析

- "文件改动提交"
- "单文件提交"
- "这个文件的提交信息"

### 拉取请求/合并请求生成

- "PR描述"
- "MR描述"
- "合并请求"
- "拉取请求"

### 发布说明生成

- "release notes"
- "发布说明"
- "版本更新"
- "changelog"

### 提交信息验证

- "检查提交格式"
- "验证提交"
- "提交规范检查"

## 各场景自动执行工作流

### 历史总结

1. 执行: git log --pretty=format:"%h - %s (%ci)" --since="7 days ago" --author="$(git config user.name)"
2. 按Conventional Commits类型分类提交
3. 生成中文描述的总结

### 当前改动

1. 执行: git diff --cached --name-status (暂存区改动)
2. 执行: git diff --name-status (工作区改动)
3. 分析文件改动并生成合适的提交信息
4. 描述主体使用中文

### 单文件分析

1. 执行: git diff [filename] 或分析文件内容
2. 确定改动类型 (feat/fix/docs/style/refactor/perf/test/chore)
3. 为特定文件生成专门的提交信息

### PR/MR生成

1. 分析最近的提交或指定的提交范围
2. 按conventional格式生成全面描述
3. 包含范围、破坏性更改和详细中文描述

### 发布说明

1. 分析版本间或标签间的提交
2. 按提交类型分组 (feat/fix/BREAKING CHANGE)
3. 生成结构化的conventional格式发布说明

### 验证

1. 检查现有提交信息是否符合Conventional Commits规范
2. 为不符合规范的提交提供建议
3. 提供修正版本

## 输出要求 - Conventional Commits标准

### 强制格式结构

- type[optional scope]: description
- [optional body in Chinese]
- [optional footer(s)]

### 提交类型（英文）

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

### 语言要求

- 提交类型: 英文（强制）
- 范围: 英文（如适用）
- 描述: 中文（主体/详情强制使用中文）
- 破坏性更改: 必须正确标记

## 执行优先级

高优先级规则 - 检测到触发关键词时自动识别场景类型并应用相应的符合Conventional Commits规范的工作流。所有描述和主体内容必须使用中文，同时保持英文提交类型和技术术语。
