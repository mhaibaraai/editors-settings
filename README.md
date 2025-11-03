# 个人配置

集中维护 Claude、Codex 与 VS Code 等开发工具的个性化设置，便于在不同设备间快速同步环境。

## 快速导航

- [Codex 配置](#codex)
- [Claude 配置](#claude)
- [VS Code 配置](#vscode)
- [主题预览](#主题预览)
- [推荐扩展](#推荐扩展)

## Codex

- [`.codex/config.toml`](./.codex/config.toml) - Codex CLI 核心配置
- [`.codex/auth.json`](./.codex/auth.json) - 身份令牌与私密配置示例（注意本地安全存储）

## Claude

- [`.claude/CLAUDE.md`](./.claude/CLAUDE.md)
- [`.claude/CLAUDE-zh.md`](./.claude/CLAUDE-zh.md)
- [`.claude/.claude.json`](./.claude/.claude.json)
- [`.claude/settings.json`](./.claude/settings.json)
- [`.claude/config.json`](./.claude/config.json)
- [`.claude/statusline.sh`](./.claude/statusline.sh) - Claude 状态栏脚本
- [`.claude/commands/optimize.md`](./.claude/commands/optimize.md)
- [`.claude/commands/optimize-zh.md`](./.claude/commands/optimize-zh.md)
- [`.claude/commands/commit.md`](./.claude/commands/commit.md)
- [`.claude/commands/commit-zh.md`](./.claude/commands/commit-zh.md)
- [`.claude/commands/refactor.md`](./.claude/commands/refactor.md)
- [`.claude/commands/refactor-zh.md`](./.claude/commands/refactor-zh.md)

## Claude Code Router

- [`.claude-code-router/config.json`](./.claude-code-router/config.json)

## VS Code

- [`.vscode/settings.json`](./.vscode/settings.json)
- [`.vscode/extensions.json`](./.vscode/extensions.json)
- [`.vscode/global.code-snippets`](./.vscode/global.code-snippets)
- [`.vscode/mcp.json`](./.vscode/mcp.json)

## 主题预览

### 深色主题

![深色主题预览](./dark-theme.png)

### 浅色主题

![浅色主题预览](./light-theme.png)

| 配置项 | 值 |
|--------|-----|
| 主题 | Atom One Dark / Atom One Light |
| 字体 | SF Mono, JetBrains Mono, Monaspace Neon Var, Fira Code, Input Mono |
| 文件图标 | Material Icon Theme |
| 产品图标 | Carbon |

## 推荐扩展

**开发工具类：**
- Vue.js 开发：`vue.volar`
- Nuxt 支持：`nuxt.mdc`
- 代码质量：`dbaeumer.vscode-eslint`, `esbenp.prettier-vscode`
- 样式工具：`bradlc.vscode-tailwindcss`, `antfu.unocss`

**AI 辅助工具：**
- `github.copilot` + `github.copilot-chat`
- `anthropic.claude-code`
- `openai.chatgpt`
- `upstash.context7-mcp`

**Git 工具：**
- `eamodio.gitlens`
- `mhutchie.git-graph`

**主题和图标：**
- `akamud.vscode-theme-onedark`, `akamud.vscode-theme-onelight`
- `pkief.material-icon-theme`

**其他实用工具：**
- 国际化：`lokalise.i18n-ally`
- 注释翻译：`intellsmi.comment-translate`
- 测试：`vitest.explorer`
- 图标预览：`antfu.iconify`, `simonsiefke.svg-preview`

## 许可证

MIT
