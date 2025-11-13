# CLAUDE.md - 全局配置

> 适用于所有仓库的全局 CLAUDE.md 配置

## 核心原则

- **语言要求**：始终使用简体中文回复
- **沟通风格**：避免客套话（如"好的""确实""当然"），直接回应核心问题

### 安全优先

- 绝不提交机密信息、API 密钥或敏感数据
- 使用环境变量或安全密钥库存储敏感信息
- 遵循最小权限原则
- 验证所有输入并净化输出

### 架构原则

1. **单一职责原则**：每个模块/组件只负责一个功能
2. **DRY**：避免代码重复
3. **KISS**：保持简单，避免过度设计
4. **防御性编程**：始终验证输入，处理边界情况
5. **现代简洁**：使用现代语法，避免冗余代码，优先使用语言新特性
6. **版权尊重**：避免复制大段版权保护的代码

## MCP 服务器集成

| 服务器 | 用途 | 使用场景 |
|--------|------|----------|
| **Context7** | 获取外部技术文档 | 查询第三方库文档、API 参考（需配置 `CONTEXT7_API_KEY`）|
| **DeepWiki** | GitHub 仓库深度分析 | 分析开源项目架构、理解代码库结构 |
| **Playwright** | 浏览器自动化测试 | E2E 测试、网页抓取、UI 自动化 |
| **Nuxt** | Nuxt 框架文档 | Nuxt 项目开发、框架特性查询 |
| **Nuxt UI** | Nuxt UI 组件库文档 | 查询 UI 组件用法、样式定制 |

## 标准与约定

### 代码风格

- **缩进**：2个空格
- **命名规范**：
  - 文件名：`kebab-case`（`user-service.ts`）
  - 类名：`PascalCase`（`UserService`）
  - 函数名：`camelCase`（`getUserById`）
  - 常量：`UPPER_SNAKE_CASE`（`MAX_RETRY_COUNT`）
  - 组件文件：`PascalCase`（`ComponentName.vue`）
  - Hook/Composable：`camelCase`，以 `use` 开头（`useUser`）
  - CSS 类名：`kebab-case` 或 BEM 规范
- **注释规范**:
  - 仅在必要时使用注释:非显而易见的业务逻辑、复杂算法、性能优化原因、临时解决方案说明
  - 优先通过清晰的命名和代码结构表达意图,而非注释
  - 避免重复代码已经表达的信息
  - 公共 API 需要 JSDoc 注释,内部函数按需添加
  - TODO 格式:`// TODO: [任务描述] - [负责人] - [日期]`

### Git 工作流

- **提交**：遵循**表情符号 + 约定式提交**规范，使用中文
- **分支**：描述性名称（`feat/`、`fix/`、`docs/`、`chore/`）
- **PR**：清晰标题，在描述中引用问题，原子化变更
- **问题引用**：仅在 PR 描述中使用 "Closes #123"
- 永远不要提交草稿到 Git

### 代码质量

- 优先考虑可读性和维护性
- 始终包含错误处理
- 添加必要的类型注解（TypeScript）
- 遵循项目现有代码模式

### 测试要求

- 为所有新功能编写单元测试
- 测试覆盖率目标：>80%
- 使用 TDD 方法开发新功能
- 测试遵循 AAA 模式：Arrange、Act、Assert

### Markdown 规范

**代码块必须标注语言标识符**：

| 内容类型 | 标识符 | 示例 |
|---------|--------|------|
| Shell 命令 | `bash` / `sh` | ` ```bash` |
| 配置文件 | `yaml` / `json` | ` ```yaml` |
| 脚本代码 | `javascript` / `typescript` | ` ```typescript` |
| Vue 组件 | `vue` | ` ```vue` |
| 纯文本 | `text` / `plaintext` | ` ```text` |

**文档参考**：

- Nuxt：[快速参考](https://content.nuxt.com/llms.txt) / [完整指南](https://content.nuxt.com/llms-full.txt)
- Nuxt UI：[快速参考](https://ui.nuxt.com/llms.txt) / [完整指南](https://ui.nuxt.com/llms-full.txt)
- 项目文档：[快速参考](https://docs.mhaibaraai.cn/llms.txt) / [完整指南](https://docs.mhaibaraai.cn/_llms-full.txt)

## 默认行为

- 使用一致的格式化（利用自动格式化工具）
- 保持 PR 专注且易于审查
- 除非明确要求，否则优先考虑简洁性而非向后兼容性
- 功能变更时同步更新文档

## 自定义命令

- **"提交更改"**：执行 `/commit` 命令
- **"优化代码"**：执行 `/optimize` 命令
- **"重构方法/函数"**：执行 `/refactor` 命令
