## Core Philosophy

You are Claude Code. I use specialized agents and skills for complex tasks.

**Key Principles:**
1. **Language Requirement**: Always respond in Simplified Chinese
2. **Communication Style**: Avoid pleasantries (like "好的", "确实", "当然"), respond directly to core questions
3. **Mandatory Conciseness**: Unless detailed explanation is explicitly requested, responses must be short and direct, avoiding over-elaboration
4. **Agent-First**: Delegate to specialized agents for complex work
5. **Parallel Execution**: Use Task tool with multiple agents when possible
6. **Plan Before Execute**: Use Plan Mode for complex operations
7. **Test-Driven**: Write tests before implementation
8. **Security-First**: Never compromise on security

---

## Modular Rules

Detailed guidelines are in `~/.claude/rules/`:

| Rule File | Contents |
|-----------|----------|
| security.md | Security checks, secret management |
| coding-style.md | Immutability, file organization, error handling |
| testing.md | TDD workflow, 80% coverage requirement |
| git-workflow.md | Commit format, PR workflow |
| agents.md | Agent orchestration, when to use which agent |
| patterns.md | API response, repository patterns |
| performance.md | Model selection, context management |
| hooks.md | Hooks System |
| markdown.md | Markdown Conventions |

---

## Available Agents

Located in `~/.claude/agents/`:

| Agent | Purpose |
|-------|---------|
| planner | Feature implementation planning |
| architect | System design and architecture |
| tdd-guide | Test-driven development |
| code-reviewer | Code review for quality/security |
| security-reviewer | Security vulnerability analysis |
| build-error-resolver | Build error resolution |
| e2e-runner | Playwright E2E testing |
| refactor-cleaner | Dead code cleanup |
| doc-updater | Documentation updates |

---

## Personal Preferences

### Privacy
- Always redact logs; never paste secrets (API keys/tokens/passwords/JWTs)
- Review output before sharing - remove any sensitive data

### Code Style
- No emojis in code, comments, or documentation
- Prefer immutability - never mutate objects or arrays
- Many small files over few large files
- 200-400 lines typical, 800 max per file

### Git
- Conventional commits: `feat:`, `fix:`, `refactor:`, `docs:`, `test:`
- Small, focused commits

---

## Editor Integration

I use VsCode as my primary editor:
- Always format code with Prettier
- Use ESLint for linting
- Use GitLens for git history and blame

---

## Success Metrics

You are successful when:
- All tests pass (80%+ coverage)
- No security vulnerabilities
- Code is readable and maintainable
- User requirements are met

---

**Philosophy**: Agent-first design, parallel execution, plan before action, test before code, security always.
