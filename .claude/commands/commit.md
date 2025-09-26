---
allowed-tools: Bash(git add:*), Bash(git status:*), Bash(git commit:*) , Bash(git diff:*), Bash(git log:*)
description: 创建一个 git 提交
---

## 任务

1. 如果没有指定 `--no-verify`，则自动运行 pre-commit 检查：
  - `pnpm lint` 确保代码质量
2. 使用 `git status` 检查哪些文件已暂存
3. 如果没有暂存文件，自动通过 `git add` 添加所有修改和新文件
4. 使用 `git diff` 分析提交的更改内容
5. 判断是否存在多个独立的逻辑更改
6. 如果检测到多个独立更改，建议拆分成多个小提交
7. 为每个提交（或未拆分时的单个提交）生成符合 **表情符号 + 约定式提交格式** 的提交信息

## 格式

- **原子提交**：每个提交只包含一个相关的目的
- **拆分大改动**：如果涉及多个关注点，应分拆为独立提交
- **约定式提交格式**：使用 `<type>: <description>`，常见类型：
  - `feat`: 新功能
  - `fix`: Bug 修复
  - `docs`: 文档修改
  - `style`: 代码格式调整（不影响逻辑）
  - `refactor`: 重构（非功能性/非修复性）
  - `perf`: 性能优化
  - `test`: 测试相关
  - `chore`: 构建/工具/配置
- **使用祈使句现在时**：如 "add feature" 而不是 "added feature"
- **简洁首行**：首行保持在 72 个字符以内
- **表情符号与类型映射**：
  - ✨ `feat`: 新功能
  - 🐛 `fix`: Bug 修复
  - 📝 `docs`: 文档
  - 💄 `style`: 格式/样式
  - ♻️ `refactor`: 重构
  - ⚡️ `perf`: 性能优化
  - ✅ `test`: 测试
  - 🔧 `chore`: 工具/配置
  - 🚀 `ci`: CI/CD 改进
  - 🗑️ `revert`: 回滚更改
  - 🧪 `test`: 添加失败测试
  - 🚨 `fix`: 修复编译/警告
  - 🔒️ `fix`: 安全修复
  - 👥 `chore`: 添加/更新贡献者
  - 🚚 `refactor`: 移动或重命名资源
  - 🏗️ `refactor`: 架构调整
  - 🔀 `chore`: 合并分支
  - 📦️ `chore`: 更新打包文件/依赖
  - ➕ `chore`: 添加依赖
  - ➖ `chore`: 移除依赖
  - 🌱 `chore`: 添加/更新种子文件
  - 🧑‍💻 `chore`: 开发体验优化
  - 🧵 `feat`: 多线程/并发相关
  - 🔍️ `feat`: SEO 改进
  - 🏷️ `feat`: 类型定义更新
  - 💬 `feat`: 文案/文本更新
  - 🌐 `feat`: 国际化/本地化
  - 👔 `feat`: 业务逻辑
  - 📱 `feat`: 响应式设计
  - 🚸 `feat`: 用户体验优化
  - 🩹 `fix`: 小修复
  - 🥅 `fix`: 错误捕获
  - 👽️ `fix`: 外部 API 变更适配
  - 🔥 `fix`: 删除代码/文件
  - 🎨 `style`: 结构/代码美化
  - 🚑️ `fix`: 紧急热修复
  - 🎉 `chore`: 项目初始化
  - 🔖 `chore`: 版本发布
  - 🚧 `wip`: 开发中
  - 💚 `fix`: CI 构建修复
  - 📌 `chore`: 锁定依赖版本
  - 👷 `ci`: CI 构建系统
  - 📈 `feat`: 分析/埋点
  - ✏️ `fix`: 拼写修复
  - ⏪️ `revert`: 回退改动
  - 📄 `chore`: 许可证更新
  - 💥 `feat`: 破坏性变更
  - 🍱 `assets`: 资源文件
  - ♿️ `feat`: 无障碍支持
  - 💡 `docs`: 源码注释
  - 🗃️ `db`: 数据库相关
  - 🔊 `feat`: 日志更新
  - 🔇 `fix`: 移除日志
  - 🤡 `test`: mock 测试
  - 🥚 `feat`: 彩蛋
  - 🙈 `chore`: .gitignore 更新
  - 📸 `test`: 快照测试
  - ⚗️ `experiment`: 实验性改动
  - 🚩 `feat`: 功能开关
  - 💫 `ui`: 动画/过渡
  - ⚰️ `refactor`: 移除死代码
  - 🦺 `feat`: 校验逻辑
  - ✈️ `feat`: 离线支持

## 拆分提交的准则

在分析 diff 时，考虑以下情况是否需要拆分提交：
1. **不同关注点**：涉及代码库中不相关的部分
2. **不同类型改动**：混合了功能/修复/重构等
3. **文件模式差异**：代码 vs 文档
4. **逻辑分组**：更容易单独理解或审查
5. **改动规模过大**：拆分后更清晰

## 命令选项

- `--no-verify`: 跳过 pre-commit 检查（lint、build、docs）

## 约束

- **禁止**在提交中添加 Claude 的共同署名信息
