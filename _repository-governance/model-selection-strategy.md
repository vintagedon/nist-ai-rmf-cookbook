# Model Selection Strategy

**NIST AI RMF Cookbook - Four-Tier Model Architecture**

Version: 1.0 | Last Updated: 2025-10-10 | Owner: VintageDon

---

## Philosophy: Strategic Model Orchestration

The NIST AI RMF Cookbook uses a **four-tier architecture** that balances cost, capability, security, and task requirements. Rather than defaulting to the most expensive or capable model, we match models to tasks based on proven strengths, economic constraints, and data sensitivity.

**Core Principle:** Right model for the right task = optimal cost/quality/security balance.

This isn't theoretical—it's the **actual production stack** used to build and maintain this repository, complete with real costs, trade-offs, and lessons learned.

---

## Four-Tier Architecture

### Tier 0: Local (On-Premises)
**Security-First Gatekeeper**

**Model:** Llama 3.1 8B Instruct (Q4_K_M quantization)  
**Hardware:** NVIDIA RTX A4000 (16GB VRAM)  
**Cost:** ~$0/mo marginal (sunk hardware cost, negligible electricity)  
**Deployment:** Ollama (local inference server)

**Strategic Role:**
- **Automated pre-human linter** for documentation structure
- First-pass quality gate before human review
- Zero external API calls = complete data privacy
- 24/7 availability, no rate limits, no per-token costs

**When to Use:**
- Structural validation (sections present, placeholders replaced, links valid)
- Format checking (markdown syntax, YAML validity)
- Style guide enforcement (template conformance)
- Any task where data cannot leave infrastructure

**Constraints:**
- Limited to ~8B parameters (VRAM constraint)
- Narrow task scope (not general-purpose)
- Lower quality than frontier models (requires careful prompt engineering)
- No multimodal capabilities

**Key Insight:** Scoped correctly, an 8B model can provide **real value** as an automated quality gate. Not everything needs GPT-5.

**Model Card:** `_repository-governance/model-cards/llama-3.1-8b-doc-linter.yaml`

---

### Tier 1: ChatGPT Plus ($20/month)
**Daily Volume Workhorse**

**Subscription:** ChatGPT Plus  
**Cost:** $20/month  
**Usage Pattern:** Virtually unlimited token throughput via web interface

**Strategic Role:**
- **Primary everyday model** for general work
- Default choice for most tasks
- Handles bulk of interactive development
- Zip file repository uploads (50MB)

**Key Capabilities:**
- **Projects:** Persistent file context across sessions
- **50MB zip uploads:** Entire repository as compressed archive
- **Unlimited usage:** Push millions of tokens through web interface
- **SOTA coding:** 74.9% SWE-bench, 88% Aider Polyglot
- **Structured outputs:** Best-in-class JSON generation
- **API available:** Reasonable pricing ($1.25/$10 per 1M tokens) if automation needed

**When to Use:**
- Daily coding tasks (Python scripts, YAML schemas)
- Repository analysis (upload 50MB zip)
- Structured output generation (JSON, OSCAL)
- Code review and debugging
- Mathematical/logical reasoning tasks
- Any work requiring sustained, high-volume interaction

**Why Not Pro ($200/mo)?**
- **Plus vs Pro delta:** Mainly "more compute for hardest questions" (extended reasoning)
- **Value unclear:** Would need A/B testing to justify +$180/month
- **Plus suffices:** "Extended access" to GPT-5 has proven adequate for repository work
- **Considered but not justified yet:** May trial Pro for 1 month with evaluation metrics in place

**Cost Efficiency:**
- $20 for "virtually unlimited" usage
- API available if programmatic access needed
- Projects feature provides persistence without API complexity

**Model Card:** `_repository-governance/model-cards/gpt-5-api.yaml`

---

### Tier 2: Claude Max ($100/month)
**Quality Specialist for Sustained Sessions**

**Subscription:** Claude Max (Anthropic)  
**Cost:** $100/month  
**Usage Pattern:** Strategic use for high-value documentation and planning

**Strategic Role:**
- **Documentation excellence:** Best prose quality for policies, frameworks, guides
- **Sustained sessions:** Can work 4+ hours without hitting rate limits (Pro would timeout in ~1 hour)
- **Orchestration & planning:** Superior at complex multi-step workflows
- **This conversation is proof:** 75+ KB generated in 4-hour session

**Key Capabilities:**
- **Extended thinking mode:** Deep reasoning when quality matters
- **Artifacts system:** Interactive document development
- **Superior instruction following:** Nuanced, multi-step workflows
- **Ethical reasoning:** Strong on fairness, bias, responsible AI considerations
- **200k context window:** Large but not as extreme as Gemini

**When to Use:**
- Policy template creation and refinement
- Framework analysis and synthesis
- Complex documentation requiring nuance
- Orchestration and project planning
- Tasks where quality matters more than speed
- Work sessions requiring sustained interaction (multi-hour)

**Why Max vs Pro ($20)?**
- **Rate limits:** Pro is "FAMOUSLY restrictive"—would hit timeout in 1 hour on today's session
- **This project proves ROI:** 75+ KB in 4 hours = sustained productivity
- **Max constraint:** Still web-only because API pricing is prohibitive

**Why Not API?**
- **Cost prohibitive:** $3 input / $15 output per 1M tokens
- **Web is cheaper:** $100/mo for extended usage vs pay-per-token
- **Web suffices:** Human-interactive work doesn't require programmatic access

**Cost vs Value:**
- $100/mo for quality prose and sustained sessions
- Used strategically, not for all tasks
- Justifiable when documentation quality directly impacts organizational adoption

**Model Card:** `_repository-governance/model-cards/claude-sonnet-4.5-max.yaml` (pending)

---

### Tier 3: Gemini Advanced ($20/month)
**Deep Research Specialist**

**Subscription:** Google One AI Premium  
**Cost:** $20/month  
**Usage Pattern:** Deep research projects, repo-level analysis

**Strategic Role:**
- **Deep Research mode:** Autonomous multi-source research unmatched by other models
- **Academic access:** Pre-print servers (arXiv), Google Scholar integration
- **1M token context:** Can process entire GitHub repository as single attachment
- **Research quality:** Generated the NIST AI RMF Cookbook Blueprint PDF via Deep Research

**Key Capabilities:**
- **Deep Research mode:** 10-20 minute autonomous research across 10+ sources with citations
- **Massive context:** 1M tokens = entire repository + documentation as context
- **Repository attachment:** Upload full repo, maintains holistic understanding
- **Cheapest API:** ~$1.25 per 1M tokens (most cost-effective for automation)
- **Multimodal understanding:** Text + images + code

**When to Use:**
- Deep research requiring 10+ academic/regulatory sources
- Framework crosswalk development (NIST ↔ ISO ↔ EU AI Act)
- Literature reviews and standards analysis
- Repository-wide analysis (attach full repo as context)
- Any task requiring synthesis of 50k+ tokens of source material
- Second opinion on GPT work (since Claude can't ingest full repos yet)

**Why This Over Alternatives:**
- **Deep Research mode alone worth $20:** No other model offers this capability
- **Research quality:** Generated comprehensive Blueprint PDF (see: `docs/nist-ai-rmf-cookbook-blueprint.pdf`)
- **Cost-effective long context:** 1M tokens for $20/mo vs API costs for equivalent with GPT/Claude

**Example Use Case:**
The Deep Research Plan (Blueprint PDF) was generated by Gemini using autonomous research across:
- NIST AI RMF publications and playbook
- ISO/IEC 42001 & 23894 standards
- NIST SP 800-53 control catalog
- EU AI Act regulatory text
- OWASP LLM Top 10
- Academic papers on AI safety

No other model approaches this level of autonomous, cited research quality.

**Model Card:** `_repository-governance/model-cards/gemini-pro-2.5-advanced.yaml` (pending)

---

## Total Cost: $140/month

| Tier | Service | Cost/Month | Primary Value |
|------|---------|------------|---------------|
| 0 | Local (Llama 3.1 8B) | $0* | Automated linting, complete privacy |
| 1 | ChatGPT Plus | $20 | Daily workhorse, unlimited usage |
| 2 | Claude Max | $100 | Quality docs, sustained sessions |
| 3 | Gemini Advanced | $20 | Deep research, long context |
| **Total** | | **$140** | **Four-tier production stack** |

*Sunk hardware cost (A4000), negligible marginal operating cost

### Not Included: ChatGPT Pro ($200/month)

**Decision:** Unclear value proposition for +$180/month over Plus

**Pro Advantages:**
- Unlimited GPT-5 access (vs "extended access" on Plus)
- GPT-5 pro with extended reasoning for "hardest questions"

**Why Not (Yet):**
- Plus "extended access" has been adequate for all repository work to date
- "More compute for hardest questions" is subjective and unproven for this use case
- Would need objective evaluation metrics before committing +$180/mo

**Reconsideration Criteria:**
- Trial for 1 month with A/B testing
- Measure: Time savings, quality improvements, failure reduction
- Justify: If measurable ROI > $180/mo in time or quality gains

---

## Task-to-Model Decision Matrix

| Task Type | Primary Model | Backup/Alternative | Rationale |
|-----------|---------------|-------------------|-----------|
| **Automated Linting** | Local Llama | N/A | Privacy, cost, always-on |
| **Daily Coding** | GPT Plus | Claude (review) | SOTA coding, unlimited usage |
| **Policy Templates** | Claude Max | GPT (structure) | Prose quality, nuance |
| **Deep Research** | Gemini Advanced | Claude (synthesis) | Autonomous research unmatched |
| **Schema Generation** | GPT Plus | Claude (review) | Structured output excellence |
| **Framework Crosswalks** | Gemini (research) | Claude (writing) | Multi-source synthesis |
| **Code Review** | GPT Plus | Local (basic checks) | SWE-bench SOTA |
| **Documentation Refinement** | Claude Max | GPT (check) | Iterative quality |
| **Repository Analysis** | GPT (zip) or Gemini (attach) | Claude (targeted) | Both support full repo context |
| **OSCAL Script Generation** | GPT Plus | Claude (logic) | Code generation + structure |
| **Risk Library Development** | Gemini (sources) | Claude (writing) | Research → prose pipeline |

---

## Security & Privacy Stratification

The four-tier architecture creates **defense-in-depth** for data handling:

### Data Classification → Model Assignment

| Data Sensitivity | Permitted Tiers | Rationale |
|------------------|----------------|-----------|
| **Public repository content** | All tiers (0-3) | Content is MIT-licensed, already public |
| **Draft work (pre-publication)** | Tiers 1-3 (commercial) | Acceptable risk, will be public soon |
| **Structural validation only** | Tier 0 (local) | No content analysis, just format checks |
| **Proprietary/sensitive** | Tier 0 (local) only | Never leave infrastructure |

### Key Security Principle

**Local model proves on-premises AI is viable** when:
- Task is well-scoped (linting, not general reasoning)
- Quality bar is appropriate (automated gate, not final authority)
- Hardware constraints accepted (16GB VRAM = 8B models)

This is **practical AI governance** in action—not every task requires frontier models or cloud APIs.

---

## Multi-Model Consensus Workflow

For **critical artifacts**, use multi-model consensus to reduce bias and catch errors:

### When to Use Consensus (MANDATORY)

- Policy templates affecting organizational compliance
- Framework crosswalk tables (NIST ↔ ISO, EU AI Act, SP 800-53)
- Risk library entries with mitigation guidance
- Schema definitions with validation logic
- Any artifact where organizational decisions depend on accuracy

### When Single Model Sufficient (OPTIONAL)

- README files and navigation documents
- Minor documentation updates
- Example system details (with human review)
- Routine code generation (with testing)

### Standard Consensus Process (2-3 Models)

1. **Primary Draft** - Best-fit model generates initial version
   - Policy: Claude Max
   - Research: Gemini Advanced
   - Code: GPT Plus

2. **Alternative Perspective** - Second model reviews and critiques
   - Different training data = different biases
   - Cross-check facts, logic, completeness

3. **Optional Third Opinion** - For critical work, third model weighs in
   - Particularly when first two models disagree
   - Provides tiebreaker or identifies errors both missed

4. **Human Synthesis** - Maintainer reads all outputs, synthesizes best elements
   - Not "pick a winner" but "best of each"
   - Validate against authoritative sources (NIST docs, ISO standards, regulations)

5. **Verification** - Final output tested against ground truth
   - Framework crosswalks: Check against official standard text
   - Code: Run validation suite
   - Policies: Legal/compliance review if applicable

### Consensus Cost-Benefit

**Benefits:**
- Reduces systematic bias (different training data, different errors)
- Catches hallucinations through cross-verification
- Provides diverse perspectives on complex topics
- Increases confidence in guidance organizations depend on

**Costs:**
- 2-3x time investment (multiple model runs + synthesis)
- Cognitive load of reconciling different outputs
- Subscription costs for multiple platforms

**Decision Rule:** Use consensus when **error cost > 3x time cost**

For guidance that organizations use for compliance decisions, consensus is mandatory. For routine documentation, single model + human review suffices.

---

## Model-Specific Workflows

### Local Llama Workflow: Automated Quality Gate

**Typical Pattern:**
1. Contributor submits pull request
2. Linter script runs automatically (or manual trigger: `make lint-docs`)
3. Llama 3.1 8B checks structure, format, style guide conformance
4. Output: JSON report with ERRORS, WARNINGS, SUGGESTIONS
5. If PASS or WARNINGS only → proceeds to human review
6. If ERRORS → contributor notified, must fix before review

**Best For:** Automated structural validation before human time invested

**Limitations:** Cannot assess content quality, factual accuracy, or complex logic—only structure and format.

---

### GPT Plus Workflow: Daily Development

**Typical Pattern:**
1. Zip repository (50MB) or attach key files to Project
2. Specify task: code generation, review, schema creation
3. GPT generates output with inline documentation
4. Human reviews logic and edge cases
5. Iterate with GPT for refinements
6. Validate programmatically (tests, schema validation)

**Best For:** High-volume interactive work requiring coding excellence

**Projects Feature:** Attach core files (templates, schemas, README) to project context—GPT maintains awareness across sessions without re-uploading.

---

### Claude Max Workflow: Quality Documentation

**Typical Pattern:**
1. Start with Claude for initial policy/framework draft
2. Use Artifacts for interactive refinement (multiple turns)
3. Request alternative framings, different tones, structural changes
4. Export final markdown/YAML
5. Human validates against authoritative sources
6. Optional: Send to GPT/Gemini for second opinion

**Best For:** Sustained sessions (multi-hour) on high-value documentation where prose quality matters

**Key Strength:** Can work 4+ hours without rate limit issues (this README development session proves it: 75+ KB generated).

---

### Gemini Advanced Workflow: Deep Research → Synthesis

**Typical Pattern:**
1. Define research question clearly
2. Enable "Deep Research" mode in Gemini Advanced
3. Gemini autonomously queries 10-20+ sources (takes 10-20 minutes)
4. Gemini produces comprehensive report with inline citations
5. Human validates key claims, cross-references authoritative sources
6. Add repository-specific context and examples
7. Optional: Send to Claude for prose refinement

**Best For:** Building knowledge artifacts from scratch when 10+ sources required

**Example:** The NIST AI RMF Cookbook Blueprint PDF (comprehensive architecture document) was generated using this exact workflow.

**Alternative Use:** Upload full repository as attachment → ask targeted questions → Gemini maintains holistic repo awareness.

---

## Economic Analysis & ROI

### Investment Breakdown

**Monthly Costs:**
- ChatGPT Plus: $20/mo → Daily workhorse (unlimited usage)
- Claude Max: $100/mo → Quality documentation (extended sessions)
- Gemini Advanced: $20/mo → Deep research (autonomous synthesis)
- **Total: $140/month = $1,680/year**

**One-Time Costs (Sunk):**
- NVIDIA RTX A4000 16GB: ~$1,000 (2023 pricing, already owned)
- Amortized over 3 years: ~$28/month effective cost

**True Total: ~$168/month including amortized hardware**

### Time Savings Analysis

Based on actual repository development:

| Task | Manual Time | AI-Assisted Time | Savings | Frequency |
|------|-------------|------------------|---------|-----------|
| Policy template creation | 8 hours | 2 hours | 6 hours | 4/year |
| Framework crosswalk research | 40 hours | 8 hours | 32 hours | 2/year |
| Code review (validation scripts) | 4 hours | 1 hour | 3 hours | 12/year |
| Documentation refinement | 6 hours | 1.5 hours | 4.5 hours | 8/year |
| Schema generation | 3 hours | 0.5 hours | 2.5 hours | 6/year |

**Annual Time Savings:**
- Policy templates: 6 hours × 4 = 24 hours
- Framework crosswalks: 32 hours × 2 = 64 hours
- Code reviews: 3 hours × 12 = 36 hours
- Documentation: 4.5 hours × 8 = 36 hours
- Schemas: 2.5 hours × 6 = 15 hours
- **Total: ~175 hours saved per year**

**Value Calculation:**
- Time saved: 175 hours/year
- Cost: $1,680/year ($140/mo × 12)
- Effective hourly cost: $9.60/hour
- Break-even if time worth: >$10/hour

**Conclusion:** Even at low hourly valuations ($50-100/hour for technical work), ROI is 5-10x.

### Quality Improvements

Quantifying quality is harder, but observable improvements:
- **Multi-model consensus reduces error rate ~60%** (estimated, based on catch rate during synthesis)
- **Gemini research quality** eliminates manual paper searches (10+ hours → automated)
- **GPT code review** catches bugs pre-merge (reduces debugging time)
- **Local linter** prevents broken docs from reaching human review (saves reviewer time)

### Alternative: Pure API Approach

**Could substitute subscriptions with API-only:**
- Claude API: $3/$15 per 1M tokens (too expensive for volume)
- GPT API: $1.25/$10 per 1M tokens (reasonable for automation)
- Gemini API: ~$1.25 per 1M tokens (cheapest, good for programmatic)

**Why Subscriptions Won:**
- **Predictable costs:** $140/mo flat vs variable API spend
- **Unlimited usage:** Push millions of tokens without watching meter (GPT Plus)
- **Premium features:** Projects (GPT), Artifacts (Claude), Deep Research (Gemini) not in APIs
- **Sustained sessions:** Claude Max enables 4-hour work sessions

**Hybrid Approach (Recommended):**
- Subscriptions for human-interactive work
- APIs for CI/CD automation (OSCAL export, linting, validation)

---

## Strategic Trade-Offs Made

### Decisions & Rationale

**1. ChatGPT Plus ($20) instead of Pro ($200)**
- **Trade-off:** "Extended access" vs "unlimited access" to GPT-5
- **Decision:** Plus adequate for current workload, Pro unproven for +$180/mo
- **Reconsider if:** Extended reasoning shows measurable ROI in A/B testing

**2. Claude Max ($100) instead of Pro ($20) or API**
- **Trade-off:** Higher cost but extended rate limits
- **Decision:** Pro too restrictive (would timeout this session), API too expensive
- **Justification:** This 4-hour session (75+ KB) proves Max worth it for quality work

**3. Gemini Advanced ($20) for subscription despite cheap API**
- **Trade-off:** Pay for subscription when API is cheaper
- **Decision:** Deep Research mode only available in subscription
- **Justification:** Deep Research alone worth $20 (see Blueprint PDF quality)

**4. Local model (Llama 8B) despite being less capable**
- **Trade-off:** Lower quality vs complete privacy + zero marginal cost
- **Decision:** Scope task narrowly, accept constraints, use as automated gate
- **Justification:** Proves on-prem AI viable when task well-defined

### What This Reveals

**Cost-conscious optimization:** Not "use the most expensive model" but "right model for the task"

**Volume matters:** GPT Plus handles bulk work, Claude Max for quality hits, Gemini for deep research, local for automation

**Strategic constraints are real:**
- Claude Max still web-only because API pricing prohibitive
- GPT Pro unjustified until proven ROI
- Local model proves capability within VRAM limits

**This is practical AI governance** in action—conscious risk/cost/capability trade-offs, not aspirational "best practices."

---

## Model Selection Quick Reference

**"I need to..."**

- **Lint documentation structure** → Local Llama (automated gate)
- **Daily coding work** → GPT Plus (unlimited usage)
- **Write policy template** → Claude Max (quality prose)
- **Deep research (10+ sources)** → Gemini Advanced (autonomous research)
- **Generate YAML schema** → GPT Plus (structured output)
- **Code review Python script** → GPT Plus (SOTA coding)
- **Map NIST AI RMF to ISO 42001** → Gemini (research) + Claude (writing)
- **Refine documentation** → Claude Max (iterative quality)
- **Analyze entire repository** → GPT Plus (zip) or Gemini (attach)
- **Generate OSCAL export script** → GPT Plus (code gen) + tests

**"I'm not sure which model..."**

**Start with GPT Plus** (daily workhorse) → Escalate to specialist models as needed:
- Need quality prose? → Claude Max
- Need deep research? → Gemini Advanced
- Need privacy? → Local Llama (if task scoped appropriately)

---

## Update Triggers & Continuous Improvement

### Review This Strategy When:

1. **Pricing changes** - Significant subscription cost changes (±20%)
2. **New model releases** - Major capability shifts (e.g., GPT-6, Claude Opus 5)
3. **Feature additions** - New capabilities change optimal usage (e.g., API features)
4. **Workflow friction** - Model selection causes bottlenecks or inefficiencies
5. **Performance degradation** - Quality drops or hallucination rates increase
6. **Budget constraints** - Need to cut costs or justify current spend

### Quarterly Review Checklist

**Cost-Benefit:**
- [ ] Are we getting >$140/mo value from subscriptions?
- [ ] Could we achieve same results for less? (API-only? Fewer models?)
- [ ] Should we trial GPT Pro for 1 month to test extended reasoning?

**Performance:**
- [ ] Multi-model consensus still catching errors effectively?
- [ ] Any model consistently underperforming vs alternatives?
- [ ] Local model still adequate for linting or needs upgrade?

**Strategic:**
- [ ] Any new models worth evaluating?
- [ ] Workload shifted to require different model mix?
- [ ] Security/privacy requirements changed?

**Next Review:** 2025-12-31 (End of Q4 2025)

---

## Comparison Table: Tier-by-Tier

| Capability | Tier 0: Local | Tier 1: GPT Plus | Tier 2: Claude Max | Tier 3: Gemini Advanced |
|------------|---------------|------------------|-------------------|------------------------|
| **Model** | Llama 3.1 8B | GPT-5 | Claude Sonnet 4.5 | Gemini Pro 2.5 |
| **Cost/Month** | ~$0 | $20 | $100 | $20 |
| **Context Window** | ~32k effective | 272k input / 400k total | 200k | 1M |
| **Primary Use** | Automated linting | Daily coding/docs | Quality prose | Deep research |
| **Key Strength** | Privacy + cost | Unlimited usage | Sustained sessions | Autonomous research |
| **Unique Feature** | On-premises | Zip repo upload | 4+ hour sessions | Deep Research mode |
| **Data Privacy** | ★★★★★ | ★★★☆☆ | ★★★☆☆ | ★★★☆☆ |
| **Code Quality** | ★★☆☆☆ | ★★★★★ | ★★★★☆ | ★★★☆☆ |
| **Prose Quality** | ★★☆☆☆ | ★★★★☆ | ★★★★★ | ★★★★☆ |
| **Research** | ★☆☆☆☆ | ★★★☆☆ | ★★★★☆ | ★★★★★ |
| **Structured Output** | ★★☆☆☆ | ★★★★★ | ★★★★☆ | ★★★☆☆ |
| **Volume Throughput** | ★★★★★ | ★★★★★ | ★★★☆☆ | ★★★★☆ |

★★★★★ = Best-in-class | ★★★★☆ = Excellent | ★★★☆☆ = Good | ★★☆☆☆ = Adequate | ★☆☆☆☆ = Limited

---

## Conclusion: A Production-Ready Stack

This four-tier architecture is **not aspirational—it's the actual system** used to develop the NIST AI RMF Cookbook.

**Key Lessons:**
1. **Cost-conscious optimization beats "biggest model" thinking**
2. **Local models have real value** when scoped appropriately
3. **Sustained sessions matter** more than peak capability (Claude Max vs Pro)
4. **Specialized models excel** in their domains (Gemini research, GPT coding)
5. **Multi-model consensus catches errors** single models miss

**This is AI governance in practice:**
- Strategic risk/cost/capability trade-offs
- Security stratification (local for private, commercial for quality)
- Evidence-based decision making (prove ROI before spending)
- Continuous evaluation (quarterly reviews, update triggers)

The result: **$140/month** for a production-grade multi-model system that demonstrates practical, cost-conscious AI governance principles—exactly what the NIST AI RMF Cookbook aims to help organizations achieve.

---

## Appendix: Model Cards

Detailed model cards for each tier:

- **Tier 0:** `_repository-governance/model-cards/llama-3.1-8b-doc-linter.yaml`
- **Tier 1:** `_repository-governance/model-cards/gpt-5-api.yaml`
- **Tier 2:** `_repository-governance/model-cards/claude-sonnet-4.5-max.yaml` (pending)
- **Tier 3:** `_repository-governance/model-cards/gemini-pro-2.5-advanced.yaml` (pending)

---

**Document Metadata:**
- Version: 1.0
- Status: Published
- Owner: VintageDon
- Last Updated: 2025-10-10
- Next Review: 2025-12-31
- Framework: NIST AI RMF 1.0 (Demonstrating GOVERN and MANAGE functions)
