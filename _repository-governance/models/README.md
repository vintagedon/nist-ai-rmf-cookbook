# 🤖 Model Cards - AI Tool Documentation

Documenting the AI Systems Used to Build This Repository

---

## 📖 Overview

This directory contains model cards for every AI tool used in the development and maintenance of the NIST AI RMF Cookbook. These cards demonstrate the NIST AI RMF MAP and MEASURE functions by documenting:

- Model capabilities and limitations
- Intended use within the repository context
- Out-of-scope uses and constraints
- Known biases and mitigation strategies
- Performance evaluation results
- Data handling and privacy considerations

Key principle: Model cards aren't just for models you *train*—they're for models you *use*. We document third-party AI tools with the same rigor we'd document our own.

---

## 📂 Model Card Inventory

### Tier 0: Local (On-Premises)

[Llama 3.1 8B Doc Linter](llama-3.1-8b-doc-linter/)

- Model: Llama 3.1 8B Instruct (Q4_K_M quantization)
- Cost: ~$0/mo marginal (sunk hardware cost)
- Primary Use: Automated structural validation of documentation
- Deployment: Kubernetes on NVIDIA RTX A4000 (16GB VRAM)
- Status: ✅ Active

Key characteristic: Complete data privacy, zero external API calls

---

### Tier 1: ChatGPT Plus ($20/month)

[GPT-5](chat-gpt-5/)

- Model: GPT-5 via ChatGPT Plus subscription
- Cost: $20/mo (unlimited usage via web interface)
- Primary Use: Daily coding, schema generation, repository analysis
- Deployment: OpenAI web interface with Projects feature
- Status: ✅ Active

Key characteristic: Unlimited token throughput, SOTA coding (74.9% SWE-bench)

---

### Tier 2: Claude Max ($100/month)

[Claude Sonnet 4.5](claude-sonnet-pro-45/)

- Model: Claude Sonnet 4.5 via Claude Max subscription
- Cost: $100/mo (extended rate limits)
- Primary Use: Quality documentation, sustained multi-hour sessions
- Deployment: Anthropic web interface with Artifacts
- Status: ✅ Active

Key characteristic: Superior prose quality, extended sessions without timeouts

---

### Tier 3: Gemini Advanced ($20/month)

[Gemini Pro 2.5](gemini-pro-25/)

- Model: Gemini Pro 2.5 via Google One AI Premium
- Cost: $20/mo (1M token context window)
- Primary Use: Deep Research mode, repository-wide analysis
- Deployment: Google AI Studio web interface
- Status: ✅ Active

Key characteristic: Autonomous research across 10+ sources with citations

---

### Local Models (Infrastructure)

[Local Models Overview](local-models-repository-use.yaml)

- Infrastructure: Proxmox Astronomy Lab, hybrid Entra tenancy
- Hardware: NVIDIA RTX A4000 (16GB VRAM)
- Deployment: Kubernetes + Ollama
- Status: ✅ Active

Note: Individual local model cards (beyond Llama 3.1 8B) to be added as deployed.

---

## 🎯 Why Model Cards for Third-Party Tools?

### The Traditional View (Incomplete)

"Model cards are for models you train."

- ❌ Misses: You're still responsible for how you *use* third-party models
- ❌ Ignores: Different models have different risks, capabilities, and limitations
- ❌ Overlooks: Transparency requires documenting *all* AI systems in your workflow

### The NIST AI RMF View (Complete)

"Document all AI systems that impact your outcomes."

- ✅ Includes: Commercial APIs, SaaS platforms, local deployments
- ✅ Recognizes: Using a model creates responsibility for its outputs
- ✅ Enables: Informed decision-making about which tools to use when

This repository demonstrates the complete view.

---

## 🔍 What Model Cards Document

### For Commercial/SaaS Models

Each card includes:

Model Details:

- Name, version, provider
- License or terms of service
- Pricing model and cost structure

Intended Use:

- Primary tasks within repository context
- Target users (maintainer, contributors)
- Appropriate use cases

Out-of-Scope Uses:

- What this model should NOT be used for
- Limitations and constraints
- Alternative tools for out-of-scope work

Performance Evaluation:

- Benchmark results (where available)
- Observed quality in repository usage
- Comparison to alternatives

Ethical Considerations:

- Known biases or limitations
- Mitigation strategies employed
- Data handling and privacy stance

Deployment Context:

- How the model is accessed (web, API, local)
- Authentication and access controls
- Integration with repository workflow

---

### For Local Models

Additional considerations:

Hardware Constraints:

- VRAM requirements and limits
- Deployment architecture (Kubernetes, Ollama)
- Performance characteristics vs commercial models

Cost Structure:

- Initial hardware investment (sunk cost)
- Marginal operating cost (electricity)
- Trade-offs vs cloud-based alternatives

Privacy Benefits:

- No external API calls
- Complete data sovereignty
- Air-gapped capability if needed

Quality Trade-offs:

- Comparison to frontier models
- Appropriate use cases given constraints
- When NOT to use local models

---

## 🚀 Using Model Cards

### For Repository Contributors

Before using a model:

1. Read its model card to understand capabilities and limitations
2. Verify your use case matches "Intended Use"
3. Check for any data handling restrictions
4. Understand quality expectations and verification requirements

Example: If you want to use GPT-5 for policy template generation:

- ✅ Check [chat-gpt-5/](chat-gpt-5/) model card
- ✅ Confirm policy templates are in-scope
- ✅ Note: Human verification required before publication
- ✅ Follow multi-model consensus process if critical

---

### For Model Selection Decisions

Compare model cards when:

- Choosing which model for a new task
- Evaluating whether to add a new model
- Deciding to retire or replace an existing model

Key comparison points:

- Cost per task (not just subscription cost)
- Quality for specific use case
- Rate limits and availability
- Data handling requirements

See [model-selection-strategy.md](../model-selection-strategy.md) for detailed decision framework.

---

### For Governance and Auditing

Model cards provide evidence for:

- NIST AI RMF MAP: System capabilities and limitations documented
- NIST AI RMF MEASURE: Performance evaluation and monitoring
- ISO 42001: AI system inventory and risk assessment
- EU AI Act: Transparency and documentation obligations

Audit trail:

- Git history shows model card evolution
- Version changes trigger model exit interviews
- Performance degradation documented and addressed

---

## 🔗 Relationship to Other Artifacts

### Model Cards + AI Usage Policy

Policy says: "Use only approved AI platforms"  
Model cards show: Which platforms are approved, why, and how to use them

Example:

- [AI Acceptable Use Policy](../ai-acceptable-use-policy.md) lists approved platforms
- Each model card documents one approved platform in detail
- Together: Complete picture of allowed tools and their proper use

---

### Model Cards + Model Selection Strategy

Strategy says: "Right model for the right task"  
Model cards provide: Data to make that decision

Example:

- [Model Selection Strategy](../model-selection-strategy.md) explains four-tier architecture
- Model cards document each tier's capabilities
- Task-to-model decision matrix references model cards

---

### Model Cards + Methodology

Methodology says: "Multi-model consensus for critical work"  
Model cards explain: What each model contributes to consensus

Example:

- [Methodology](../../docs/methodology.md) describes consensus process
- Model cards show strengths of each model
- Together: Why we use Claude for prose, GPT for code, Gemini for research

---

## 🛠️ Adding New Model Cards

### When to Create a Model Card

Create a model card when:

- Adding a new AI tool to approved platforms
- Deploying a new local model
- Significantly changing how an existing model is used
- Model version updates materially affect capabilities

Don't create a model card for:

- Non-AI automation tools
- Traditional algorithms without ML components
- One-off experiments (unless they become production)

---

### How to Create a Model Card

Step 1: Choose Template

- Use [../../schemas/model-card.schema.yaml](../../schemas/model-card.schema.yaml) as structure
- Reference existing cards in this directory as examples
- Follow schema requirements for required fields

Step 2: Populate Core Sections

- `model_details`: Name, version, owner, license, description
- `intended_use`: Primary uses, users, out-of-scope uses
- `evaluation`: Performance data, evaluation methods
- `ethical_considerations`: Known biases, mitigation strategies

Step 3: Add Repository Context

- How this model is used in repository development
- Integration with other tools and workflows
- Cost structure and economic justification
- Risk/capability trade-offs

Step 4: Validate and Review

- Check against schema using validator (when available)
- Review with repository maintainer
- Commit to git with descriptive message

Step 5: Link from Strategy Doc

- Update [model-selection-strategy.md](../model-selection-strategy.md)
- Add to tier architecture
- Update task-to-model decision matrix

---

## 📊 Model Card Maintenance

### When to Update Model Cards

Update triggers:

- Model version changes (GPT-4 → GPT-5, Claude 4 → 4.5)
- Pricing or cost structure changes
- New capabilities or features added
- Performance degradation observed
- Bias or ethical concerns discovered
- Changes to data handling policies

### Update Process

1. Detect change: Model provider announces update or behavior changes
2. Evaluate impact: Use [model exit interview template](../templates/model-exit-interview-template.md)
3. Test new version: Pilot new version on non-critical tasks
4. Update card: Modify model card with new information
5. Communicate: Notify contributors of changes
6. Monitor: Track performance in production use

### Retirement Process

When retiring a model:

1. Update status in model card to "Deprecated"
2. Document reason for retirement
3. Identify replacement model (if any)
4. Provide migration guidance
5. Archive card (don't delete - preserve history)
6. Update model selection strategy

---

## 🤝 Contributing Model Card Improvements

### What We Need

High-value contributions:

- Performance data from actual usage
- Bias discoveries and mitigation strategies
- Cost-benefit analyses
- Integration lessons learned
- Comparison across similar models

### Contribution Guidelines

When improving model cards:

1. Be specific: Provide concrete examples, not generalizations
2. Cite sources: Link to benchmarks, papers, or experiments
3. Quantify claims: "30% faster" not "much faster"
4. Document context: When/where did you observe this?
5. Update related docs: Strategy, policy, methodology

See [CONTRIBUTING.md](../../CONTRIBUTING.md) (when created) for detailed guidance.

---

## 📚 Related Resources

### Within This Repository

- [🏛️ Repository Governance Overview](../README.md) - Parent directory
- [📋 AI Acceptable Use Policy](../ai-acceptable-use-policy.md) - Governs model usage
- [📊 Model Selection Strategy](../model-selection-strategy.md) - Four-tier architecture
- [🔧 Model Card Schema](../../schemas/model-card.schema.yaml) - Structure definition
- [📖 Methodology](../../docs/methodology.md) - Multi-model consensus process

### External Resources

Model Card Standards:

- [Hugging Face Model Cards](https://huggingface.co/docs/hub/model-cards) - Industry standard
- [Google Model Card Toolkit](https://github.com/tensorflow/model-card-toolkit) - Reference implementation
- [Model Cards Paper (Mitchell et al.)](https://arxiv.org/abs/1810.03993) - Original academic proposal

AI Governance:

- [NIST AI RMF](https://www.nist.gov/itl/ai-risk-management-framework) - Framework these cards support
- [ISO/IEC 42001](https://www.iso.org/standard/81230.html) - AI management system standard

---

## 🔄 Maintenance Schedule

Review Cycle: Quarterly (aligned with policy reviews)

Next Review: 2025-12-31

Review Checklist:

- [ ] Are all active models documented?
- [ ] Are version numbers current?
- [ ] Is performance data up-to-date?
- [ ] Have any models been retired?
- [ ] Are cost structures accurate?
- [ ] Do cards reflect current usage patterns?

---

Document Version: 1.0  
Last Updated: 2025-10-10  
Status: Published  
Model Cards: 5 active (Llama 3.1 8B, GPT-5, Claude Sonnet 4.5, Gemini Pro 2.5, Local Models Overview)

---

*Documenting AI tools with the same rigor we document our own models. Transparency starts with knowing what we're using.*
