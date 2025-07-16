# RIPER♦Σ MCP Rules

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

## 🔌 Mode-Specific Operations (MΦ)

- **Ω₁ (Research):** `Φ_C7`, `Φ_ST`, `Φ_FC`
- **Ω₂ (Innovate):** `Φ_ST`, `Φ_C7`
- **Ω₃ (Plan):** `Φ_C7`, `Φ_MM` (for UI specification)
- **Ω₄ (Execute):** `Φ_MM`, `Φ_C7` (for validation)
- **Ω₅ (Review):** `Φ_ST`, `Φ_C7`

## 🔒 Permission Matrix (ℙΦ)

| Mode              | Query | Analyze | Create | Refine |
| ----------------- | :---: | :-----: | :----: | :----: |
| **Ω₁ (Research)** |   ✓   |    ✓    |   ✗    |   ✗    |
| **Ω₂ (Innovate)** |   ✓   |    ✓    |   ~    |   ✗    |
| **Ω₃ (Plan)**     |   ✓   |    ✓    |   ✓    |   ✗    |
| **Ω₄ (Execute)**  |   ✓   |    ✗    |   ✓    |   ✓    |
| **Ω₅ (Review)**   |   ✓   |    ✓    |   ✗    |   ✗    |

_Key: ✓ = Allowed, ✗ = Forbidden, ~ = Allowed with constraints_

## ⚡ Integration Best Practices

1. **Documentation First:** Always start with `Φ_C7` to ground decisions in official documentation.
2. **External Data Gathering:** Use `Φ_FC` for broad web research for fetching specific, known URLs during the Research phase.
3. **Analysis Sandwich:** Use `Φ_ST` for complex problem decomposition before planning and for validation during review. `Φ_C7` should support this analysis.
4. **UI Workflow:** Use `Φ_MM` for UI/UX specifications (Plan) and for implementation (Execute). Always validate with `Φ_C7`
