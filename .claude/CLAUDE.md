# CLAUDE.md - 全局配置

> 适用于所有仓库的全局 CLAUDE.md 配置，整合 Context7、DeepWiki 和 Thinking MCP 服务器

## 核心原则

- **语言要求**：始终使用简体中文回复
- **沟通风格**：避免客套话（如"好的""确实""当然"），直接回应核心问题

### 安全优先
- 绝不提交机密信息、API 密钥或敏感数据
- 使用环境变量或安全密钥库存储敏感信息
- 遵循最小权限原则
- 验证所有输入并净化输出

### 架构原则
1. **单一职责原则**: 每个模块/组件只负责一个功能
2. **DRY (Don't Repeat Yourself)**: 避免代码重复
3. **KISS (Keep It Simple, Stupid)**: 保持简单，避免过度设计
4. **防御性编程**: 始终验证输入，处理边界情况
5. **版权尊重**: 避免复制大段版权保护的代码

## MCP 服务器集成策略
- **使用 Context7** 获取外部技术、框架和 API 的最新文档
- **使用 DeepWiki** 获取 GitHub 仓库的深度技术分析
- **使用 Thinking** 进行复杂问题分析、技术方案设计、多步骤任务规划

### 文档完整
- 功能变更时同步更新文档
- 为复杂功能提供示例
- 清楚地记录破坏性变更

## 标准与约定

### 代码风格指南
- **缩进**: 使用2个空格
- **命名规范**:
  - 文件名: kebab-case (例: user-service.ts)
  - 类名: PascalCase (例: UserService)
  - 函数名: camelCase (例: getUserById)
  - 常量: UPPER_SNAKE_CASE (例: MAX_RETRY_COUNT)
  - 组件文件名: PascalCase (例: ComponentName.vue)
  - Hook/Composable: camelCase 命名，以 use 开头 (例: useUser)
  - CSS 类名: kebab-case 或遵循 BEM 规范 (例: class="container-fluid")
- **注释规范**:
  - 使用JSDoc风格注释函数和类
  - 复杂逻辑必须添加解释性注释
  - TODO注释格式: `// TODO: [任务描述] - [负责人] - [日期]`

### Git 工作流
- **提交**：遵循 [约定式提交](https://www.conventionalcommits.org/) 格式
- **分支**：使用描述性名称（`feat/`、`fix/`、`docs/`、`chore/`）
- **拉取请求**：清晰标题，在 PR 描述中引用问题，原子化变更
- **问题引用**：仅在 PR 描述中使用 "Closes #123"，不要在单个提交消息中使用
- 永远不要将草稿提交到 Git

### 代码质量
- 优先考虑代码的可读性和维护性
- 始终包含错误处理
- 添加必要的类型注明 (TypeScript)
- 遵循项目现有的代码模式

### 测试要求
- 为所有新功能编写单元测试
- 测试覆盖率目标: >80%
- 使用TDD方法开发新功能

### Markdown 规范
- **代码围栏**：始终为代码块标注语言标识符以避免语法检查错误
  - 使用 ` ```bash ` 而不是 ` ``` ` 来标记 shell 命令
  - 使用 ` ```yaml `、` ```json `、` ```javascript ` 等标记相应语言
  - 使用 ` ```text ` 或 ` ```plaintext ` 标记不需要语法高亮的通用内容

## 默认行为
- 使用一致的格式化（利用自动格式化工具）
- 测试遵循 AAA 模式：Arrange（准备）、Act（执行）、Assert（断言）
- 保持 PR 专注且易于审查
- 除非明确要求，否则优先考虑简洁性而非向后兼容性

### 自定义命令
创建以下文件在 `.claude/commands/` 目录:

**refactor.md** - 代码重构
```markdown
识别并重构:
- 重复代码
- 复杂函数（圈复杂度>10）
- 过长的文件（>300行）
- 违反SOLID原则的代码
```

**optimize.md** - 代码优化
```markdown
分析此代码的性能问题并建议优化：
```

**commit.md** - 提交
```markdown
分析当前 git 状态和变更内容，自动生成符合约定式提交规范（Conventional Commits）的 commit 消息，并执行提交。
```
