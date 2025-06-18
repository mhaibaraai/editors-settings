# CursorRIPER♦Σ MCP Rules

All services will follow the CursorRIPER♦Σ permission model and symbolic notation.

## 🤖 MCP Tool Operations (Φ)

**🔗 Context7 (Φ_C7)**
`Φ_C7 = { resolve(id), get_docs(id, topic) }`

**🧠 Sequential Thinking (Φ_ST)**
`Φ_ST = { think(thought, ...), revise(thought, ...), branch(thought, ...) }`

**🌐 Firecrawl (Φ_FC)**
`Φ_FC = { search(query), scrape(url), crawl(url) }`

**🎨 Magic MCP (Φ_MM)**
`Φ_MM = { build(prompt), refine(component) }`

**⬇️ Fetch (Φ_F)**
`Φ_F = { get(url) }`

**🌿 Git (Φ_G)**
`Φ_G = { status(), diff(), log(), add(files), commit(msg), ... }`

## 🔌 Mode-Specific Operations (MΦ)

* **Ω₁ (Research):** `Φ_C7`, `Φ_ST`, `Φ_FC`, `Φ_F`, `Φ_G`
* **Ω₂ (Innovate):** `Φ_ST`, `Φ_C7`
* **Ω₃ (Plan):** `Φ_C7`, `Φ_MM` (for UI specification)
* **Ω₄ (Execute):** `Φ_MM`, `Φ_C7` (for validation), `Φ_G`
* **Ω₅ (Review):** `Φ_ST`, `Φ_C7`, `Φ_G`

## 🔒 Permission Matrix (ℙΦ)

| Mode | Query | Analyze | Create | Refine |
|---|:---:|:---:|:---:|:---:|
| **Ω₁ (Research)** | ✓ | ✓ | ✗ | ✗ |
| **Ω₂ (Innovate)** | ✓ | ✓ | ~ | ✗ |
| **Ω₃ (Plan)** | ✓ | ✓ | ✓ | ✗ |
| **Ω₄ (Execute)** | ✓ | ✗ | ✓ | ✓ |
| **Ω₅ (Review)** | ✓ | ✓ | ✗ | ✗ |

*Key: ✓ = Allowed, ✗ = Forbidden, ~ = Allowed with constraints*

## ⚡ Integration Best Practices

1. **Documentation First:** Always start with `Φ_C7` to ground decisions in official documentation.
2. **External Data Gathering:** Use `Φ_FC` for broad web research and `Φ_F` for fetching specific, known URLs during the Research phase.
3. **Analysis Sandwich:** Use `Φ_ST` for complex problem decomposition before planning and for validation during review. `Φ_C7` and `Φ_G` (`log`, `diff`) should support this analysis.
4. **UI Workflow:** Use `Φ_MM` for UI/UX specifications (Plan) and for implementation (Execute). Always validate with `Φ_C7`.
5. **Version Control Discipline:** Use `Φ_G` for committing approved changes (`add`, `commit`) *only* during the Execute phase.
