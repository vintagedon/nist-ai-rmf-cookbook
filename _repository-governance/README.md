# 🏛️ Repository Governance - The Living Example

**AI Governance Framework in Production Practice**

---

## 🎯 What This Directory Is

**This is the worked example.**

While the rest of the NIST AI RMF Cookbook provides *templates* and *schemas* for AI governance, this directory contains the **actual governance artifacts** used to develop and maintain the repository itself.

**This is not theory. This is production.**

Every policy, model card, and strategy document here represents real decisions, authentic trade-offs, and operational constraints. This directory demonstrates the NIST AI RMF's four functions—Govern, Map, Measure, Manage—in active use.

---

## 📂 Directory Structure

```
_repository-governance/
├── 📄 ai-acceptable-use-policy.md    # Governs AI tool usage for this repository
├── 📄 model-selection-strategy.md    # Four-tier model architecture and cost optimization
├── 📄 README.md                      # This file - overview and navigation
│
├── 📁 models/                        # Model cards for AI tools used
│   ├── chat-gpt-5/
│   │   └── gpt-5-repository-use.yaml
│   ├── claude-sonnet-pro-45/
│   │   └── claude-sonnet-45-repository-use.yaml
│   ├── gemini-pro-25/
│   │   └── gemini-pro-repository-use.yaml
│   └── llama-3.1-8b-doc-linter/
│       └── llama-3.1-8b-doc-linter.yaml
│
└── 📁 templates/
    └── model-exit-interview-template.md  # For evaluating model changes
```

---

## 🔍 What Each Artifact Demonstrates

### [ai-acceptable-use-policy.md](ai-acceptable-use-policy.md)
**NIST AI RMF Function: GOVERN**

**What it is:**
The AI usage policy governing how AI tools are used in developing this repository.

**What it demonstrates:**
- Organizational structure and accountability (repository maintainer authority)
- Clear roles and responsibilities (contributor expectations)
- Approved AI platforms (ChatGPT, Claude, Gemini, local models)
- Data handling requirements (public repository content)
- Multi-model consensus requirements
- Human verification mandates
- Transparency and attribution standards

**Key governance principles shown:**
- Risk tolerance articulated (cost/quality/security trade-offs)
- Boundaries defined (what's in scope, what's not)
- Violation handling (self-reporting, enforcement)
- Continuous review cycle (quarterly updates)

**Why this matters:**
Most organizations write AI policies but struggle with implementation. This policy is **actively followed**—every contribution to this repository complies with it.

---

### [model-selection-strategy.md](model-selection-strategy.md)
**NIST AI RMF Functions: GOVERN + MANAGE**

**What it is:**
A four-tier model architecture (Tier 0: Local, Tier 1: GPT Plus, Tier 2: Claude Max, Tier 3: Gemini Advanced) with strategic decision-making framework.

**What it demonstrates:**
- **Cost-conscious optimization:** Not "use the best model" but "right model for the task"
- **Security stratification:** Local for privacy, commercial for quality
- **Economic analysis:** ROI calculations, break-even analysis
- **Risk/capability trade-offs:** VRAM constraints, rate limits, pricing
- **Continuous evaluation:** Update triggers, quarterly reviews

**Strategic decisions documented:**
- Why ChatGPT Plus over Pro (unclear ROI for +$180/mo)
- Why Claude Max over API (rate limits vs cost)
- Why Gemini Advanced (Deep Research mode alone worth $20)
- Why local model despite limitations (privacy + zero marginal cost)

**Why this matters:**
Shows **adaptive governance**—tooling evolves based on needs, not fixed prescriptions. Decision rationale is transparent and evidence-based.

---

### [models/](models/)
**NIST AI RMF Functions: MAP + MEASURE**

**What they are:**
Model cards documenting each AI tool used in repository development.

**What they demonstrate:**

**For Commercial Models:**
- Model capabilities and limitations
- Intended use within repository context
- Out-of-scope uses
- Known biases and mitigation strategies
- Evaluation results and performance data
- Data handling and privacy considerations

**For Local Models:**
- Hardware constraints (16GB VRAM limits)
- Deployment architecture (Kubernetes, Ollama)
- Quality trade-offs vs frontier models
- Appropriate use cases (linting, not general reasoning)

**Why this matters:**
Model cards aren't just for models you *train*—they're for models you *use*. We document third-party tools with the same rigor we'd document our own.

**Current model cards:**
- ✅ [Llama 3.1 8B Doc Linter](models/llama-3.1-8b-doc-linter/llama-3.1-8b-doc-linter.yaml) - Tier 0 (Local)
- ✅ [GPT-5](models/chat-gpt-5/gpt-5-repository-use.yaml) - Tier 1 (ChatGPT Plus)
- ✅ [Claude Sonnet 4.5](models/claude-sonnet-pro-45/claude-sonnet-45-repository-use.yaml) - Tier 2 (Claude Max)
- ✅ [Gemini Pro 2.5](models/gemini-pro-25/gemini-pro-repository-use.yaml) - Tier 3 (Gemini Advanced)

---

### [templates/model-exit-interview-template.md](templates/model-exit-interview-template.md)
**NIST AI RMF Function: MANAGE**

**What it is:**
A structured template for evaluating and documenting model version changes or replacements.

**What it demonstrates:**
- Systematic evaluation process before changing models
- Evidence-based decision making (not just "new version available")
- Performance comparison requirements
- Risk reassessment triggers
- Change documentation standards

**When it's used:**
- Model provider releases major version update
- Considering switching to a different model
- Performance degradation observed
- Cost structure changes significantly
- Security/privacy requirements change

**Why this matters:**
Model versioning is a **risk event**. New versions may have different capabilities, limitations, or biases. This template ensures changes are evaluated systematically.

---

## 🎓 How to Use This as a Learning Tool

### For Policy Teams

**Start here:**
1. Read [ai-acceptable-use-policy.md](ai-acceptable-use-policy.md)
2. Note how it differs from generic template in [../policies/ai-acceptable-use/](../policies/ai-acceptable-use/)
3. Identify customization decisions made for this context
4. Apply same pattern to your organization

**Key lessons:**
- Policies need context-specific adaptation
- Educational guidance (📘 boxes in template) explains customization
- Real policies are living documents (quarterly review cycle)

---

### For ML/AI Engineers

**Start here:**
1. Browse [models/](models/) to see model card structure
2. Compare cards across different model types (local vs commercial)
3. Note how limitations and constraints are documented
4. Review evaluation criteria and performance data

**Key lessons:**
- Model cards aren't just for models you train
- Documenting third-party tools is just as important
- Limitations are as critical as capabilities
- Intended use defines appropriate deployment

---

### For Risk Officers

**Start here:**
1. Review [model-selection-strategy.md](model-selection-strategy.md)
2. Observe risk/cost/capability trade-off analysis
3. Note security stratification (local vs commercial)
4. Study continuous evaluation and update triggers

**Key lessons:**
- AI governance requires economic realism
- Not all risks can be eliminated (only managed)
- Trade-offs are explicit and documented
- Monitoring and adaptation are continuous

---

### For Auditors

**Start here:**
1. Review [ai-acceptable-use-policy.md](ai-acceptable-use-policy.md) for governance structure
2. Check [models/](models/) for documented AI system properties
3. Verify [model-selection-strategy.md](model-selection-strategy.md) for risk management evidence
4. Trace decision rationale through git history

**Key lessons:**
- Governance is auditable via version control
- Every decision has documented rationale
- Policies are enforced (visible in contributions)
- Continuous improvement through quarterly reviews

---

## 🔗 How This Demonstrates NIST AI RMF Functions

### GOVERN
**Artifacts:**
- [ai-acceptable-use-policy.md](ai-acceptable-use-policy.md)
- [model-selection-strategy.md](model-selection-strategy.md) (organizational structure)

**Demonstrated:**
- Leadership commitment (repository maintainer authority)
- Organizational culture (transparency, verification, multi-model consensus)
- Roles and responsibilities clearly defined
- Risk tolerance articulated
- Resource allocation decisions documented

---

### MAP
**Artifacts:**
- [models/](models/) (model cards documenting capabilities/limitations)
- [model-selection-strategy.md](model-selection-strategy.md) (risk identification)

**Demonstrated:**
- Context-specific risks identified (cost, quality, security)
- System boundaries defined (local vs commercial)
- Stakeholder impacts considered (volunteer contributors)
- Data handling requirements mapped
- Risk categorization and prioritization

---

### MEASURE
**Artifacts:**
- [models/](models/) (performance data, evaluation results)
- [../docs/methodology.md](../docs/methodology.md) (quality metrics)

**Demonstrated:**
- Multi-model consensus as quality metric
- Human verification requirements
- Performance benchmarks documented
- Continuous monitoring approach
- Effectiveness evaluation methods

---

### MANAGE
**Artifacts:**
- [model-selection-strategy.md](model-selection-strategy.md) (risk treatment)
- [templates/model-exit-interview-template.md](templates/model-exit-interview-template.md)
- [ai-acceptable-use-policy.md](ai-acceptable-use-policy.md) (controls)

**Demonstrated:**
- Risk treatment strategies implemented
- Controls selected and deployed
- Incident response approach (violation handling)
- Continuous monitoring and adaptation
- Change management process

---

## 🌟 Why This Approach is Stronger Than Synthetic Examples

### Authenticity
**Real constraints, real decisions:**
- $140/month budget is actual operating cost
- 16GB VRAM is real hardware limit
- Rate limits are experienced, not theoretical
- Cost-benefit analyses use real data

### Evidence-Based
**Not prescriptive, descriptive:**
- "Here's what we did" not "you should do this"
- Trade-offs documented with rationale
- Alternatives considered and evaluated
- Outcomes measured and reported

### Continuous Evolution
**Living example, not static artifact:**
- Git history shows governance evolution
- Quarterly reviews drive updates
- Lessons learned inform improvements
- Community feedback incorporated

### Self-Validating
**We follow our own rules:**
- Policy governs actual development
- Controls are enforced in practice
- Evidence artifacts link to real work
- Auditable via repository history

---

## 🤝 Contributing to Repository Governance

### Types of Contributions Welcome

**Policy Improvements:**
- Clarifications based on real usage
- Additional scenarios or edge cases
- Better customization guidance
- Enhanced decision frameworks

**Model Cards:**
- Additional models as adopted
- Performance updates as models evolve
- Bias discovery and mitigation updates
- Integration lessons learned

**Strategy Refinements:**
- Cost-benefit analysis updates
- New model evaluation frameworks
- Security stratification improvements
- Emerging best practices

### Contribution Guidelines

When proposing governance changes:
1. **Document rationale** - explain why the change improves governance
2. **Provide evidence** - metrics, examples, comparative analysis
3. **Consider implications** - how does this affect existing artifacts?
4. **Update related docs** - crosswalks, methodology, policies

See [CONTRIBUTING.md](../CONTRIBUTING.md) (when created) for detailed guidance.

---

## 📚 Related Resources

### Within This Repository

- [📋 Policies](../policies/) - Generic policy templates you can adapt
- [🔧 Schemas](../schemas/) - Structured formats these artifacts use
- [📚 Examples](../examples/) - Explanation of dogfooding approach
- [📖 Docs](../docs/) - Framework crosswalks and methodology

### External Resources

- [NIST AI RMF](https://www.nist.gov/itl/ai-risk-management-framework) - The foundational framework
- [NIST AI RMF Playbook](https://www.nist.gov/itl/ai-risk-management-framework/nist-ai-rmf-playbook) - Official implementation guidance
- [ISO/IEC 42001:2023](https://www.iso.org/standard/81230.html) - AI management system standard

---

## 🔄 Maintenance and Updates

### Review Cycle: Quarterly

**Next Review:** 2025-12-31

**Update Triggers:**
- AI tool pricing or feature changes
- Model version updates from providers
- New AI risks or threat patterns emerge
- Community feedback on effectiveness
- Regulatory or framework updates

### Version Control

All governance artifacts are version-controlled:
- Every change committed to git
- Rationale documented in commit messages
- Major updates tagged with releases
- Evolution visible in repository history

### Continuous Improvement

This governance framework improves through:
- Quarterly policy reviews
- Model performance monitoring
- Cost-benefit reassessments
- Community contributions
- Lessons learned from practice

---

## 💡 The Meta-Lesson

**This directory proves a critical point:**

AI governance isn't just documentation you produce—it's **practice you demonstrate**.

By making our own governance artifacts public and version-controlled, we show:
- Governance can be transparent without compromising security
- Real-world constraints lead to practical solutions
- Continuous improvement is possible and necessary
- Evidence-based decision-making is achievable

**The NIST AI RMF Cookbook doesn't just tell you how to do AI governance—it shows you by doing it.**

---

**Document Version:** 1.0  
**Last Updated:** 2025-10-10  
**Status:** Published  
**Framework:** NIST AI RMF 1.0 (All four functions demonstrated in practice)

---

*The best governance framework is the one you actually follow. This is ours.*
