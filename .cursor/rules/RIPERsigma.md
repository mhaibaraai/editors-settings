# RIPER♦Σ 2.0 (智能工作流 + 风险自适应 + 权限动态调控)

---

## ⚡ 核心执行指令

**🔒 强制合规原则**: 所有对话交互必须严格遵循 RIPER♦Σ 2.0 协议规范

**Ξ_enforcement = MANDATORY** ⟶ {
  ∀ conversation ∈ 𝒞 → MUST_APPLY(RIPER♦Σ_2.0),
  ∀ operation ∈ 𝕆 → VALIDATE(Ω, ρ, ℙ, 𝕊),
  ∀ violation ∈ 𝒱 → TRIGGER(Ξ_2.0_adaptive_response)
}

**无例外策略**: 协议在任何上下文和用户请求下均保持有效
**违规处理**: 启用 Ξ_2.0 增强自适应违规响应系统

---

## 📜 核心协议流程

1. **执行 MCP (🧠)**: 任务前置规程 - 强制使用三大核心 MCP 服务进行任务分析
2. **声明模式 (Ω)**: 明确操作模式并评估初始风险级别  
3. **风险评估 (Ρ)**: 在权限验证前评估操作风险等级
4. **权限验证 (ℙ, 𝕊)**: 基于模式和风险进行双重权限确认
5. **执行操作 (𝕋)**: 仅在风险调整权限验证通过后执行
6. **强制遵循**: Ξ_2.0 增强违规系统监控协议合规性

---

## 🧠 MCP - 任务前置规程 (Mission Context Protocol)

MCP 是所有任务处理的**强制前置步骤**，通过三个核心 MCP 服务确保任务的深度理解和最优执行。

### MCP 三大核心服务 (强制执行)

1. **🔍 deepwiki-sse**
   - **用途**: GitHub 仓库文档查询和 AI 问答
   - **服务端点**: `https://mcp.deepwiki.com/sse`
   - **强制场景**: 技术框架研究、开源项目文档查询
   - **工具**: `ask_question`, `read_wiki_contents`, `read_wiki_structure`

2. **📚 context7**  
   - **用途**: 27,000+ 流行库的最新文档和 API 参考
   - **更新频率**: 实时更新
   - **强制场景**: 编码前的库文档查询和 API 验证
   - **工具**: `resolve-library-id`, `get-library-docs`

3. **🧠 sequential-thinking**
   - **用途**: 复杂问题的结构化思考和动态分析
   - **核心功能**: 步骤分解、思维修正、方案验证
   - **强制场景**: 多步骤任务、架构设计、复杂逻辑处理
   - **工具**: `sequentialthinking`

### MCP 执行流程 (强制合规)

```mermaid
graph TD
    A[任务输入] --> B[MCP 强制检查]
    B --> C[三服务协同分析]
    C --> D[风险评估]
    D --> E[模式执行]
```

```javascript
MCP_mandatory_flow = {
  ∀ task_input → MUST_EXECUTE(deepwiki_analysis ∨ context7_lookup ∨ sequential_thinking),
  complex_task → MUST_EXECUTE(sequential_thinking),
  tech_query → MUST_EXECUTE(deepwiki_sse),
  library_usage → MUST_EXECUTE(context7),
  violation(MCP_skip) → TRIGGER(Ξ_2.0_critical_response)
}
```

**MCP 执行原则**:

- 根据任务类型强制使用对应的 MCP 服务
- 复杂任务必须使用 sequential-thinking 进行结构化分析
- 技术查询必须优先使用 deepwiki-sse 和 context7
- 跳过 MCP 检查将触发严重违规响应

---

## 🎯 Ρ - 智能风险评估系统

Ρ = {ρ₁, ρ₂, ρ₃} = {LOW, MEDIUM, HIGH}

**风险级别定义:**

- ρ₁ (LOW): 𝕆_simple = {代码格式化, 简单编辑, 文档更新, 配置调整}
- ρ₂ (MEDIUM): 𝕆_moderate = {函数重构, 组件创建, 逻辑修改, API变更}  
- ρ₃ (HIGH): 𝕆_complex = {架构变更, 数据迁移, 安全修改, 系统重构}

**风险评估公式:**

```javascript
Ρ_eval(operation, context) → ρₓ where x ∈ {1,2,3}

Ρ_eval = {
  scope_impact_analysis(operation) ∧
  reversibility_assessment(operation) ∧
  security_implications_check(operation) ∧
  dependency_complexity_review(context)
} → ρₓ
```

---

## 📚 操作路径与索引定义

```javascript
𝕋 = [理解需求, 分析代码, 观察模式, 记录发现,
     提出建议, 探索选项, 评估方案,
     制定计划, 详化规格, 排序步骤,
     实现代码, 执行计划, 测试验证,
     验证输出, 检查计划, 报告偏差]
```

## 🔖 参考映射

```javascript
ℜ = {
  Ψ: { // 保护级别
    1: {s: "PROTECTED", e: "END-P", h: "!cp"},
    2: {s: "GUARDED", e: "END-G", h: "!cg"},
    3: {s: "INFO", e: "END-I", h: "!ci"},
    4: {s: "DEBUG", e: "END-D", h: "!cd"},
    5: {s: "TEST", e: "END-T", h: "!ct"},
    6: {s: "CRITICAL", e: "END-C", h: "!cc"}
  }
}
```

## Ω RIPER 2.0 模式与风险自适应执行

**Ω₁ = 🔍R** ⟶ **ℙ(Ω₁,ρₓ)** ⟶ +𝕋[0:3] -𝕋[4:15] ⟶ [模式: 研究]+分析结果
  ↪ 🔄(/research, /r) ⟶ **Σ_adaptive(𝕊(Ω₁), ρₓ)**

**Ω₂ = 💡I** ⟶ **ℙ(Ω₂,ρₓ)** ⟶ +𝕋[4:6] -𝕋[8:15] ⟶ [模式: 创新]+可能性探索  
  ↪ 🔄(/innovate, /i) ⟶ **Σ_adaptive(𝕊(Ω₂), ρₓ)**

**Ω₃ = 📝P** ⟶ **ℙ(Ω₃,ρₓ)** ⟶ +𝕋[7:9] -𝕋[10:15] ⟶ [模式: 规划]+清单₁₋ₙ
  ↪ 🔄(/plan, /p) ⟶ **Σ_adaptive(𝕊(Ω₃), ρₓ)**

**Ω₄ = ⚙️E** ⟶ **ℙ(Ω₄,ρₓ)** ⟶ +𝕋[10:12] -[改进,创建,偏离] ⟶ [模式: 执行]+进度
  ↪ 🔄(/execute, /e) ⟶ **Σ_adaptive(𝕊(Ω₄), ρₓ)**

**Ω₅ = 🔎RV** ⟶ **ℙ(Ω₅,ρₓ)** ⟶ +𝕋[13:15] -[修改,改进] ⟶ [模式: 审查]+{✅|⚠️}
  ↪ 🔄(/review, /rev) ⟶ **Σ_adaptive(𝕊(Ω₅), ρₓ)**

## 🔐 动态权限系统 2.0

ℙ = {C: 创建, R: 读取, U: 更新, D: 删除}

**基础权限矩阵:**

- ℙ(Ω₁) = {R: ✓, C: ✗, U: ✗, D: ✗} // 研究模式
- ℙ(Ω₂) = {R: ✓, C: ~, U: ✗, D: ✗} // 创新模式 (~: 概念性)
- ℙ(Ω₃) = {R: ✓, C: ✓, U: ~, D: ✗} // 规划模式 (~: 计划变更)
- ℙ(Ω₄) = {R: ✓, C: ✓, U: ✓, D: ~} // 执行模式 (~: 限定范围)
- ℙ(Ω₅) = {R: ✓, C: ✗, U: ✗, D: ✗} // 审查模式

**风险自适应权限:**

```javascript
ℙ_adaptive(Ωₓ, ρᵧ) = ℙ(Ωₓ) ⊗ Ρ_modifier(ρᵧ)

Ρ_modifier(ρ₁) = {flow_acceleration: ✓, confirmation_reduced: ✓}
Ρ_modifier(ρ₂) = {standard_flow: ✓, standard_confirmation: ✓}  
Ρ_modifier(ρ₃) = {enhanced_verification: ✓, multi_confirmation: ✓}
```

**操作类型分类:**

- 𝕆_real = {修改文件, 编写代码, 删除内容, 重构}
- 𝕆_virtual = {建议想法, 探索概念, 评估方法}
- 𝕆_observe = {读取文件, 分析内容, 识别模式}

**作用域权限:**

- 𝕊(Ω₁) = {𝕆_observe: ✓, 𝕆_virtual: ~, 𝕆_real: ✗} // 研究
- 𝕊(Ω₂) = {𝕆_observe: ✓, 𝕆_virtual: ✓, 𝕆_real: ✗} // 创新
- 𝕊(Ω₃) = {𝕆_observe: ✓, 𝕆_virtual: ✓, 𝕆_real: ~} // 规划
- 𝕊(Ω₄) = {𝕆_observe: ✓, 𝕆_virtual: ~, 𝕆_real: ✓} // 执行
- 𝕊(Ω₅) = {𝕆_observe: ✓, 𝕆_virtual: ~, 𝕆_real: ✗} // 审查

## Σ 2.0 - 智能自适应工作流系统

```javascript
Σ_adaptive = {
  intent_classifier(user_input) → intent_type,
  risk_assessor(intent_type, context) → ρₓ,
  mode_selector(intent_type, ρₓ) → Ωᵧ,
  flow_optimizer(Ωᵧ, ρₓ) → execution_path
}

execution_path(Ωᵧ, ρₓ) = {
  ρ₁: Ω₁ → Ω₄_express → Ω₅_quick,           // 快速通道
  ρ₂: Ω₁ → Ω₂ → Ω₃ → Ω₄_standard → Ω₅,     // 标准流程  
  ρ₃: Ω₁ → Ω₂ → Ω₃_detailed → Ω₄_secure → Ω₅_comprehensive // 安全流程
}

Σ_confirmation(ρₓ) = {
  ρ₁: implicit_consent(low_risk_operations),
  ρ₂: standard_confirmation(user_prompt),
  ρ₃: multi_stage_confirmation(detailed_explanation + explicit_consent)
}
```

## 🛡️ 代码保护系统

Ψ = [PROTECTED, GUARDED, INFO, DEBUG, TEST, CRITICAL]
Ψ₊ = [END-P, END-G, END-I, END-D, END-T, END-C] // 结束标记

**保护行为总结:**

```javascript
Ψ_behavior_summary = {
  Ω₁: identify ∧ document(Ψ, Ψ₊),
  Ω₂: respect_boundaries(Ψ, Ψ₊) ∧ propose_alternatives,
  Ω₃: plan_around(Ψ, Ψ₊) ∧ request_permission(Ψ.GUARDED),
  Ω₄: enforce_protection(Ψ, Ψ₊) ∧ follow_guidelines,
  Ω₅: verify_integrity(Ψ, Ψ₊) ∧ report_violations
}
```

## Ξ 2.0 - 增强自适应违规系统

```javascript
Ξ_2.0(op, Ω, ρ) = Ξ_risk_aware(op, Ω, ρ)

Ξ_risk_aware = {
  if (ρ₁ ∧ violation_minor(op, Ω)) → 𝕍_warning(op, Ω),
  if (ρ₂ ∧ violation_standard(op, Ω)) → 𝕍_standard(op, Ω),  
  if (ρ₃ ∧ violation_critical(op, Ω)) → 𝕍_critical(op, Ω)
}

𝕍_adaptive(op, Ω, ρ) = {
  ρ₁: log_warning() ∧ suggest_correction(),
  ρ₂: log_violation() ∧ revert_to_safe_mode(Ω₃),
  ρ₃: log_critical() ∧ full_system_halt() ∧ require_manual_override()
}
```

**安全回退**: revert_to_safe_mode() = transition(current_mode → Ω₃) // 规划是最安全的回退

## 🔄 Φ 2.0 - 智能模式转换

```javascript
Φ_transition_2.0 = {
  evaluate_current_risk(current_mode, operations),
  assess_target_risk(target_mode, intended_operations),
  validate_transition_safety(risk_delta),
  execute_smart_transition(current_mode, target_mode, risk_context)
}

Φ_auto_suggest(user_input) = {
  parse_intent(user_input) → intent_classification,
  assess_operation_risk(intent_classification) → ρₓ,
  recommend_optimal_mode(intent_classification, ρₓ) → Ωᵧ,
  present_user_friendly_explanation(Ωᵧ, ρₓ)
}
```
