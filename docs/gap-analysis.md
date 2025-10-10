# Gap Analysis: From Ad-Hoc AI Usage to Formal Governance

NIST AI RMF Cookbook - Repository Governance Journey

---

## Document Control

| Field | Value |
|-------|-------|
| Document ID | NIST-AI-RMF-COOKBOOK-GAP-001 |
| Version | 1.0 |
| Date | 2025-10-10 |
| Status | Published |
| Owner | VintageDon |
| Purpose | Document the journey from ad-hoc AI usage to formalized governance (v0.1) |

---

## Executive Summary

Between September and October 2025, the NIST AI RMF Cookbook repository transitioned from ad-hoc AI tool usage to formalized, framework-aligned governance. This gap analysis documents that journey.

Starting State: Four AI subscriptions ($140/month) used productively but managed informally—no policy, no risk assessment, no documentation of why specific tools were chosen.

Discovery Process: Systematic inventory and framework application revealed gaps across all four NIST AI RMF functions (GOVERN, MAP, MEASURE, MANAGE).

Outcome: v0.1 operational governance system managing the AI tools used to build this repository, with extractable templates for others facing similar challenges.

Key Insight: You don't need perfect governance before using AI productively. You need to formalize what you're already doing, document why it works, and create a framework for evaluating future decisions.

---

## 1. Pre-v0.1 State: Ad-Hoc AI Usage

### What We Were Doing (September 2025)

Active AI Subscriptions:

- ChatGPT Plus ($20/month) - Daily coding and documentation work
- Claude Pro ($20/month) - Policy writing and complex reasoning
- Gemini Advanced ($20/month) - Deep research and long-context analysis
- Local Llama Models (Tier 0) - Experimental work on Proxmox lab

Total Monthly Spend: $60 in subscriptions + sunk hardware costs (NVIDIA RTX A4000)

Usage Patterns:

- Documentation creation: Primarily Claude Pro for prose quality
- Code generation: ChatGPT Plus for Python scripts and YAML schemas
- Research synthesis: Gemini Advanced for framework crosswalks
- Multi-model consensus: Using 2-3 models for critical artifacts

What Was Working:

- High productivity (documentation, code, research happening faster than manual)
- Good tool fit (each model had clear strengths for specific tasks)
- Cost-effective (measurable time savings justified subscription costs)
- Quality outputs (human review caught errors, multi-model consensus added confidence)

### What Was Missing

No Formal Governance:

- ❌ No written AI usage policy
- ❌ No approval process for new AI tools
- ❌ No documented data handling rules
- ❌ No risk assessment for AI-specific threats
- ❌ No connection to any governance framework

No Documentation:

- ❌ Why did we choose these specific models?
- ❌ What are the cost/benefit trade-offs?
- ❌ What limitations or risks do these tools have?
- ❌ How do we handle sensitive information?
- ❌ What happens if a model provider changes terms or pricing?

No Framework Alignment:

- ❌ No NIST AI RMF function coverage assessment
- ❌ No ISO 42001 management system structure
- ❌ No SP 800-53 control mappings
- ❌ No consideration of EU AI Act obligations

Implicit Policies (undocumented):

- ✓ Don't put credentials in AI prompts (common sense, but not written)
- ✓ Use multiple models for important work (learned through experience)
- ✓ Human reviews all AI outputs (professional practice, not policy)
- ✓ Public repository content only (sensitive data on local models)

### The Triggering Question

"If an auditor asked how we govern our AI usage, what would we show them?"

Answer: Nothing formal. We'd explain our process verbally, point to examples of good outcomes, and hope that demonstrated competence.

That's not governance. That's flying by the seat of our pants—productively, but without accountability, documentation, or a framework for scaling.

---

## 2. Discovery Process: Systematic Gap Identification

### Step 1: Inventory (Week 1)

Objective: Document everything we're actually doing.

Activities:

1. List all AI tools and costs
   - Subscriptions: ChatGPT Plus, Claude Pro, Gemini Advanced
   - Self-hosted: Llama 3.1 8B on Proxmox lab (Ollama deployment)
   - Total monthly spend: $60 subscriptions + ~$28/mo amortized hardware

2. Map usage patterns
   - What tasks use which models?
   - How often are tools used?
   - What repository artifacts were created with AI assistance?

3. Identify data flows
   - What information goes into AI prompts?
   - Public repository content? Draft work? Experimental ideas?
   - Are we handling any sensitive data through AI tools?

4. Document implicit policies
   - What unwritten rules are we already following?
   - Why do we do things this way?
   - What would happen if we violated these implicit rules?

Key Findings:

- We were already practicing risk management (multi-model consensus, human review)
- We had implicit data classification (public vs. experimental)
- We were making tool selection decisions, just not documenting them
- We were generating evidence (this repository itself)

### Step 2: Framework Evaluation (Week 2)

Objective: Determine which governance frameworks apply.

Evaluation Criteria:

- Relevance: Does this framework address AI-specific risks?
- Flexibility: Can we tailor it to our actual needs?
- Interoperability: Does it play well with other standards?
- Practicality: Can we implement it without grinding work to a halt?

Frameworks Considered:

| Framework | Relevance | Decision | Rationale |
|-----------|-----------|----------|-----------|
| NIST AI RMF | High | Primary | Flexible risk management process, not prescriptive checklist. Comprehensive lifecycle coverage. |
| ISO/IEC 42001 | High | Secondary | Management system structure complements RMF process. Good for organizational governance. |
| ISO/IEC 23894 | Medium | Reference | Detailed risk management guidance. Use for MAP/MANAGE functions. |
| NIST SP 800-53 | Medium | Reference | Security control mappings. Use for technical implementations. |
| EU AI Act | Medium | Reference | Regulatory context. Likely relevant for future organizational users. |
| OWASP LLM Top 10 | High | Integrated | Practical threat library for LLM-specific risks. |

Decision: Use NIST AI RMF as primary scaffold, crosswalk to complementary frameworks for specific needs.

### Step 3: Gap Analysis by RMF Function (Week 2-3)

Methodology: For each AI RMF function, ask:

1. What does this function require?
2. What are we currently doing (if anything)?
3. What's missing?
4. What's the risk if we don't address the gap?

Analysis documented below (Section 3)

### Step 4: Prioritization (Week 3)

Risk-Based Prioritization:

| Gap | RMF Function | Risk if Unaddressed | Priority | Effort |
|-----|--------------|---------------------|----------|--------|
| No AI usage policy | GOVERN | Medium - Inconsistent practices, no accountability | High | Medium |
| No model documentation | MAP | Medium - Can't assess limitations or biases | High | Low |
| No tool selection rationale | GOVERN | Low - Inefficient decisions, cost creep | High | Low |
| No risk assessment | MAP | Medium - Unknown threat exposure | High | Medium |
| No quality metrics | MEASURE | Low - Can't prove effectiveness | Medium | Low |
| No control mappings | MANAGE | Low - Can't demonstrate compliance | Medium | Medium |
| No incident response | MANAGE | Medium - No plan if something breaks | Low | High |

v0.1 Scope Decision: Focus on high-priority, low-to-medium effort items. Defer incident response to future version (we'll need it when we have more AI systems to manage).

---

## 3. Gap Analysis by NIST AI RMF Function

### GOVERN Function: Policies, Procedures, and Accountability

What GOVERN Requires:

- Organizational AI governance structure (roles, responsibilities)
- Policies for AI development, deployment, and use
- Risk tolerance and acceptance criteria
- Stakeholder engagement and transparency
- Connection to organizational values and risk management

What We Were Doing:

- Informal decisions by repository maintainer (VintageDon)
- No documented approval process for AI tools
- Implicit risk tolerance (use AI for public content, not secrets)
- No stakeholder beyond maintainer (single-person project at this stage)

Gaps Identified:

| Gap | Impact | Evidence |
|-----|--------|----------|
| No AI usage policy | Contributors don't know rules for AI tool use | No document defining acceptable use, data handling, or approved platforms |
| No tool approval process | Could adopt problematic tools without review | Model selection decisions made ad-hoc, no evaluation criteria |
| No documented roles | Unclear who's responsible for AI governance | Single maintainer implicitly responsible, not formally defined |
| No risk tolerance statement | Can't make consistent risk decisions | Some risks accepted implicitly (commercial AI platforms), others rejected (credentials in prompts), but not documented |
| No transparency mechanism | Users don't know how repository content was created | AI contribution acknowledged informally, not systematically |

Risk Assessment:

- Likelihood of problems: Medium (likely confusion as project scales or adds contributors)
- Impact if problems occur: Medium (reputational damage, compliance issues, contributor friction)
- Priority: High (foundational gap affecting all other functions)

### MAP Function: Risk Identification and Context

What MAP Requires:

- Identify AI system characteristics (models, data, intended use)
- Understand context of use (who, what, where, when, why)
- Identify potential harms and impacts
- Assess system limitations and failure modes
- Map risks to affected stakeholders

What We Were Doing:

- Informal understanding of model strengths/weaknesses
- Ad-hoc risk avoidance (don't put credentials in prompts)
- Implicit awareness of limitations (Llama 8B not as capable as frontier models)
- No documentation of any of this

Gaps Identified:

| Gap | Impact | Evidence |
|-----|--------|----------|
| No model cards | Can't assess model capabilities, limitations, biases | No documentation of Claude, GPT, Gemini, Llama properties |
| No risk register | Unknown threat exposure, can't prioritize mitigations | No systematic identification of prompt injection, data leakage, hallucination risks |
| No data classification | Unclear what data is safe to process | Implicit "public content only" rule not documented |
| No limitation documentation | Don't know when models will fail | Local Llama VRAM constraints not documented, frontier model rate limits not tracked |
| No failure mode analysis | No plan for when AI produces bad outputs | Relying on human review, but process not formalized |

Risk Assessment:

- Likelihood of problems: High (AI systems have known failure modes)
- Impact if problems occur: Medium-High (incorrect documentation, security vulnerabilities, compliance violations)
- Priority: High (need to know what we're dealing with)

### MEASURE Function: Testing, Evaluation, and Metrics

What MEASURE Requires:

- Define performance metrics and acceptance criteria
- Test AI systems against benchmarks and real-world scenarios
- Evaluate fairness, bias, and robustness
- Monitor ongoing performance
- Validate that systems meet requirements

What We Were Doing:

- Subjective quality assessment ("Claude writes better docs")
- Multi-model consensus as implicit quality gate
- Human review of all outputs
- No quantitative metrics
- No systematic testing

Gaps Identified:

| Gap | Impact | Evidence |
|-----|--------|----------|
| No defined quality metrics | Can't prove AI outputs are good enough | "Feels right" vs measurable criteria |
| No systematic testing | Don't know if models meet requirements | No benchmark datasets, no failure rate tracking |
| No performance monitoring | Can't detect degradation over time | If model quality drops, we'd notice eventually but not systematically |
| No fairness evaluation | Unknown if outputs are biased | No demographic analysis, no disparate impact assessment (less relevant for documentation, but still a gap) |
| No cost-benefit validation | Can't prove $140/mo spend is justified | Time savings estimated but not tracked |

Risk Assessment:

- Likelihood of problems: Medium (models usually work well, but no proof)
- Impact if problems occur: Medium (poor quality outputs, wasted money)
- Priority: Medium (important for demonstrating value, but not blocking)

### MANAGE Function: Risk Treatment and Continuous Monitoring

What MANAGE Requires:

- Implement controls to mitigate identified risks
- Document control effectiveness and evidence
- Monitor for new risks and changing context
- Maintain incident response capability
- Continuously improve based on lessons learned

What We Were Doing:

- Human review as primary control
- Multi-model consensus for critical work
- Avoiding obvious bad practices (credentials in prompts)
- No documentation of controls
- No systematic monitoring
- No incident response plan

Gaps Identified:

| Gap | Impact | Evidence |
|-----|--------|----------|
| No control documentation | Can't demonstrate risk mitigation | Using controls (human review) but not documented |
| No evidence artifacts | Can't prove controls are working | No test reports, no validation logs |
| No monitoring process | Won't notice if risks increase | No quarterly reviews, no trigger for re-evaluation |
| No incident response | No plan if AI generates harmful output | Hope we catch it in human review, but no formal process |
| No continuous improvement | Not learning from experience | No lessons-learned process, no feedback loop |

Risk Assessment:

- Likelihood of problems: Medium (controls probably work, but no proof)
- Impact if problems occur: Medium-High (can't demonstrate compliance, incidents handled poorly)
- Priority: High (need evidence that governance works, not just claims)

---

## 4. Framework Application Process

### Choosing NIST AI RMF as Primary Scaffold

Why NIST AI RMF?

1. Flexible, not prescriptive: It's a risk management process, not a checklist. We can tailor it to our actual context (single maintainer, public repository, documentation focus).

2. Comprehensive lifecycle coverage: The four functions (GOVERN, MAP, MEASURE, MANAGE) cover everything from policy to operations.

3. AI-specific: Unlike general IT risk frameworks, it addresses unique AI challenges (bias, hallucination, prompt injection).

4. Voluntary and free: No certification required, no licensing costs. We can adopt what makes sense.

5. Interoperable: Explicitly designed to work alongside ISO, NIST SP 800-53, and other frameworks.

How We Applied It:

```markdown
Step 1: GOVERN
├─ Create AI Acceptable Use Policy
├─ Document model selection strategy
├─ Define roles (repository maintainer = AI governance lead)
└─ Establish risk tolerance (public content OK, secrets never)

Step 2: MAP
├─ Create model cards for all tools in use
├─ Identify risks by tier (local vs commercial)
├─ Document limitations and failure modes
└─ Classify data (public repository content, draft work)

Step 3: MEASURE
├─ Define quality criteria (multi-model consensus, human review)
├─ Track cost-benefit (time saved vs subscription costs)
├─ Establish review triggers (quarterly, model version changes)
└─ Document methodology (how we actually work)

Step 4: MANAGE
├─ Implement controls (human review, consensus, avoid credentials)
├─ Document evidence (model cards, policies, this gap analysis)
├─ Establish monitoring (quarterly reviews, model exit interviews)
└─ Create feedback loop (update policies based on experience)
```

### Multi-Framework Crosswalks

Why Multiple Frameworks?

Because real organizations face multiple compliance obligations simultaneously. A company might need:

- ISO 42001 certification for customer contracts
- NIST SP 800-53 compliance for government work
- EU AI Act adherence for European operations

We wanted to prove that one operational system can satisfy multiple frameworks.

Crosswalk Process:

1. Map NIST AI RMF functions to each framework
   - GOVERN → ISO 42001 Clause 5 (Leadership)
   - MAP → ISO 23894 Clause 6.4-6.6 (Risk identification)
   - MEASURE → ISO 42001 Clause 9 (Performance evaluation)
   - MANAGE → SP 800-53 Risk Assessment and Continuous Monitoring controls

2. Document in `docs/crosswalks.md`
   - Tables showing function-to-clause mappings
   - Notes on how each framework complements the others
   - Operational examples from this repository

3. Use crosswalks to guide artifact creation
   - Policy structure follows ISO 42001 management system requirements
   - Risk assessment follows ISO 23894 guidance
   - Control mappings reference SP 800-53 control families
   - Transparency requirements address EU AI Act Article 13

Result: One operational system, multiple framework compliance paths.

---

## 5. v0.1 Deliverables: What We Built

### Repository Governance (`_repository-governance/`)

AI Acceptable Use Policy (`ai-acceptable-use-policy.md`):

- Defines approved platforms (Claude Max, ChatGPT Plus, Gemini Advanced, local Llama)
- Data handling rules (public content OK, secrets never, draft work acceptable)
- Multi-model consensus requirements for critical artifacts
- Human verification mandatory for all AI-assisted work
- Transparency and attribution requirements

Model Selection Strategy (`model-selection-strategy.md`):

- Four-tier architecture documented:
  - Tier 0: Local (Llama 3.1 8B) - Privacy-first gatekeeper
  - Tier 1: ChatGPT Plus ($20/mo) - Daily workhorse
  - Tier 2: Claude Max ($100/mo) - Quality specialist
  - Tier 3: Gemini Advanced ($20/mo) - Deep research specialist
- Cost justification ($140/mo for 175 hours/year saved = $9.60/hour effective cost)
- Security stratification (local for sensitive, commercial for quality)
- Quarterly review triggers and model exit interview process

Model Cards (`models/`):

- Claude Sonnet 4.5 (`claude-sonnet-pro-45/claude-sonnet-45-repository-use.yaml`)
  - Capabilities: Superior prose quality, sustained multi-hour sessions
  - Limitations: Rate limits on Pro would be restrictive, API cost-prohibitive
  - Intended use: Policy templates, framework analysis, complex documentation
  - Evaluation: Human review + multi-model cross-validation

- GPT-5 (`chat-gpt-5/chat-gpt-5.md`)
  - Capabilities: SOTA coding (74.9% SWE-bench), structured output, 50MB zip upload
  - Limitations: Projects feature requires manual setup, reasoning less nuanced than Claude
  - Intended use: Daily coding, schema generation, repository analysis
  - Evaluation: Test suite execution, schema validation

- Gemini Pro 2.5 (`gemini-pro-25/gemini-pro-repository-use.yaml`)
  - Capabilities: Deep Research mode (autonomous 10+ source synthesis), 1M token context
  - Limitations: Reasoning depth less than Claude/GPT, no artifact system
  - Intended use: Framework crosswalks, academic research, full repo analysis
  - Evaluation: Citation accuracy, cross-reference validation

- Llama 3.1 8B (`llama-3.1-8b-doc-linter/llama-3.1-8b-doc-linter.yaml`)
  - Capabilities: Complete data privacy, 24/7 availability, zero marginal cost
  - Limitations: 16GB VRAM constraint, quality lower than frontier models
  - Intended use: Automated linting, offline work, scoped quality checks
  - Evaluation: Lint rule accuracy, false positive/negative rates

Methodology Documentation (`docs/methodology.md`):

- Multi-model consensus process (2-3 models + human synthesis)
- Quality verification requirements (source checking, consistency validation)
- When to use consensus vs single model
- Evidence generation and version control

### Generic Templates (`policies/`, `schemas/`)

AI Acceptable Use Policy Template (`policies/ai-acceptable-use/ai-acceptable-use-policy.md`):

- Extracted from repository-specific policy
- Placeholders for organization name, policy owner, approved platforms
- Educational 📘 boxes explaining customization decisions
- Sections: Document control, purpose, scope, definitions, platform approval, data restrictions, violations, roles

YAML Schemas (`schemas/`):

- `model-card.schema.yaml` - Structure for documenting models
- `data-card.schema.yaml` - Structure for documenting datasets
- `risk.schema.yaml` - Structure for risk identification
- `control-mapping.schema.yaml` - Links risks to controls and evidence
- `eval-metric.schema.yaml` - Defines testing and metrics

Framework Crosswalks (`docs/crosswalks.md`):

- NIST AI RMF ↔ ISO/IEC 42001 (management system clauses)
- NIST AI RMF ↔ ISO/IEC 23894 (risk management processes)
- NIST AI RMF ↔ NIST SP 800-53 Rev. 5 (security controls)
- NIST AI RMF ↔ EU AI Act (high-risk obligations)
- Tables showing function-to-requirement mappings
- Operational examples from this repository

### Evidence of Operational Use

This Repository Itself:

- Every markdown file created using governed AI tools
- Multi-model consensus applied to policies, crosswalks, methodology
- Human review verified all framework mappings against official sources
- Model cards document the tools that created the model cards (meta-governance)

Documented Decisions:

- Why Claude Max instead of Pro? (Sustained sessions justify cost)
- Why ChatGPT Plus instead of Pro? (Value proposition unclear for +$180/mo)
- Why local Llama despite lower quality? (Privacy for experimentation)
- Why Gemini Advanced? (Deep Research mode alone worth $20/mo)

Cost-Benefit Tracking:

- Time savings: 175 hours/year across policy creation, framework research, code review, documentation refinement, schema generation
- Cost: $140/mo ($1,680/year)
- Effective hourly rate: $9.60/hour
- Break-even if time worth: >$10/hour (easily cleared for technical work)

---

## 6. Lessons Learned

### What Worked Well

Starting with inventory, not ideals:

- We didn't try to design "perfect" governance from scratch
- We documented what we were already doing, then formalized it
- This made adoption easy (we were already compliant with our own policy)

Multi-framework approach:

- Using NIST AI RMF as primary scaffold worked well (flexible, comprehensive)
- Crosswalking to complementary frameworks proved operational interoperability
- Single system satisfying multiple requirements is achievable

Evidence-based decision making:

- Documenting cost/benefit (175 hours, $140/mo) made trade-offs explicit
- Model cards forced us to articulate why we chose each tool
- Gap analysis itself is evidence of systematic approach

Transparency and honesty:

- Acknowledging gaps (no incident response yet) builds credibility
- Admitting uncertainty (we're learning what Business GPT eval looks like) is better than fake confidence
- Showing real constraints (16GB VRAM, $140/mo budget) makes this relatable

### What Was Challenging

Scope creep temptation:

- Easy to fall into "let's build everything" trap
- Had to actively constrain v0.1 to formalization only
- Automation, full examples, incident response deferred intentionally

Framework interpretation:

- NIST AI RMF is principles-based, not prescriptive
- "How much is enough?" has no universal answer
- Had to make judgment calls (e.g., fairness metrics less relevant for documentation)

Time investment:

- Gap analysis, policy writing, model cards took ~40-60 hours
- This is substantial for a side project
- Would be easier with dedicated GRC support in an organization

Proving value:

- ROI calculation required assumptions (time savings estimates)
- Hard to quantify quality improvements from multi-model consensus
- "Feels better" isn't compelling evidence

### What We'd Do Differently

Start with lighter documentation:

- Model cards could have been simpler in v0.1
- Full methodology doc could have waited
- Bias toward "good enough now, refine later"

Engage stakeholders earlier (if this were an organization):

- GRC, legal, security should review policy before it's "done"
- Engineers should validate schemas are actually usable
- Early feedback prevents rework

Define "done" criteria upfront:

- We knew v0.1 was "formalization" but didn't have clear exit criteria
- Should have written: "v0.1 is done when we have policy, model cards, crosswalks, and gap analysis"
- This would have prevented scope drift

---

## 7. Template for Others: How to Replicate This Process

This gap analysis can serve as a template for other organizations facing similar challenges. Here's the step-by-step process:

### Phase 1: Inventory (1 Week)

Deliverable: Complete picture of current AI usage

Activities:

1. List all AI tools:
   - Subscriptions (ChatGPT, Claude, Gemini, etc.)
   - Self-hosted models (Ollama, vLLM, etc.)
   - API usage (OpenAI, Anthropic, Google)
   - Embedded AI in other tools (GitHub Copilot, Office 365, etc.)

2. Track costs:
   - Monthly subscription fees
   - API usage charges (last 3 months average)
   - Infrastructure costs (compute, storage)
   - Personnel time (who's managing this?)

3. Map usage patterns:
   - What tasks use which tools?
   - Which teams/people are using AI?
   - What data is being processed?
   - What outputs are being generated?

4. Document implicit policies:
   - What unwritten rules are people following?
   - What's considered "safe" vs "risky" AI use?
   - Who makes decisions about new AI tools?
   - How do people handle sensitive information?

Template: See Appendix A: Inventory Template

### Phase 2: Framework Selection (1 Week)

Deliverable: Primary governance framework chosen, complementary frameworks identified

Activities:

1. Evaluate regulatory obligations:
   - Are you in healthcare (HIPAA), finance (SOX, GLBA), government (FedRAMP, CMMC)?
   - Do you operate in EU (AI Act), California (CCPA), specific sectors?
   - What customer contracts require specific certifications (ISO, SOC2)?

2. Assess organizational maturity:
   - Do you have existing GRC programs? (If yes, extend them)
   - Do you have a CISO or security team? (If yes, align with their frameworks)
   - Are you starting from scratch? (If yes, NIST AI RMF is a good scaffold)

3. Choose primary framework:
   - NIST AI RMF: Best for flexible, risk-based approach
   - ISO 42001: Best if you need certifiable management system
   - Industry-specific: HITRUST (healthcare), PCI-DSS (payment cards), etc.

4. Identify complementary frameworks:
   - NIST SP 800-53 for security controls
   - ISO 23894 for detailed risk management
   - EU AI Act for regulatory compliance (if applicable)

Decision Matrix: See Appendix B: Framework Selection Matrix

### Phase 3: Gap Analysis (2 Weeks)

Deliverable: Prioritized list of gaps and remediation plan

Activities:

1. Apply framework functions:
   - For each function (GOVERN, MAP, MEASURE, MANAGE), ask:
     - What does this require?
     - What are we doing now?
     - What's missing?
     - What's the risk if we don't fix it?

2. Document findings:
   - Use this document as template
   - Be honest about current state
   - Don't exaggerate risks or downplay gaps

3. Prioritize gaps:
   - Risk-based prioritization (likelihood × impact)
   - Consider effort required (quick wins vs major projects)
   - Regulatory obligations trump nice-to-haves

4. Define v0.1 scope:
   - What MUST be in first release?
   - What can wait for v0.2, v0.3?
   - Be realistic about resources and timeline

Template: See Appendix C: Gap Analysis Template

### Phase 4: Implementation (4-6 Weeks)

Deliverable: Operational governance system (your v0.1)

Activities:

1. Create foundational policies (Week 1-2):
   - AI Acceptable Use Policy (use our template)
   - Model selection or approval process
   - Data handling rules

2. Document existing systems (Week 2-3):
   - Model cards for AI tools in use
   - Data cards if applicable
   - Risk register

3. Establish processes (Week 3-4):
   - How do you approve new AI tools?
   - How do you handle incidents?
   - How do you review and update governance?

4. Generate evidence (Week 4-6):
   - Policy acknowledgments
   - Framework crosswalks
   - Gap analysis (this document)

Success Criteria: See Appendix D: v0.1 Success Criteria

---

## 8. Next Steps: v0.2 and Beyond

### What v0.2 Will Address

Framework-Guided Decision: Business GPT Evaluation

We've informally decided Business GPT is worth exploring. v0.2 will document the formal evaluation using our governance framework:

MAP Function Applied:

- Identify new risks (enterprise data access, Entra ID integration)
- Update risk register with Business GPT-specific threats
- Assess changes to attack surface

MEASURE Function Applied:

- Define evaluation criteria (cost, capability, integration, security)
- Conduct pilot with test users
- Compare against existing four-tier stack

MANAGE Function Applied:

- Implement controls for new risks
- Document integration strategy
- Generate evidence artifacts (pilot results, security assessment)

Expected Artifacts:

- `examples/business-gpt-evaluation/` - Complete evaluation documentation
- Updated AI Acceptable Use Policy (enterprise integration considerations)
- Model card for Business GPT (if adopted)
- Lessons learned: "How framework guided a real decision"

### Continuous Improvement

Quarterly Reviews (triggered by calendar or events):

- Are current AI tools still meeting needs?
- Have any model providers changed terms, pricing, or capabilities?
- Are there new frameworks or regulations we need to consider?
- What have we learned since last review?

Model Exit Interviews (when deprecating a tool):

- Why are we removing this tool?
- What did we learn from using it?
- What evidence should we preserve?
- Template: `_repository-governance/templates/model-exit-interview-template.md`

Policy Updates (as needed):

- Add new policies when we discover gaps (incident response, vendor management)
- Update existing policies based on experience
- Maintain version history and change log

---

## Appendices

### Appendix A: Inventory Template

```markdown
# AI Tool Inventory

Date: YYYY-MM-DD
Completed By: [Name/Role]

## Subscriptions

| Tool | Cost/Month | Users | Primary Use Cases |
|------|------------|-------|-------------------|
| [Example: ChatGPT Plus] | $20 | [Team/Individual] | [Coding, documentation] |

Total Monthly Cost: $______

## Self-Hosted / On-Premises

| Tool | Infrastructure Cost | Users | Primary Use Cases |
|------|---------------------|-------|-------------------|
| [Example: Llama 3.1 8B] | [GPU cost amortized] | [Team] | [Experimental, private] |

## API Usage

| Service | Last 3 Months Average | Users | Primary Use Cases |
|---------|----------------------|-------|-------------------|
| [Example: OpenAI API] | $__/month | [Application] | [Customer-facing chatbot] |

## Usage Patterns

What tasks use AI?
- [List tasks and tools used]

What data is processed?
- [List data types: customer data, internal docs, code, etc.]

What outputs are generated?
- [List: documentation, code, analysis, customer-facing content, etc.]

## Implicit Policies

What unwritten rules exist?
- [Example: Don't put credentials in AI prompts]
- [Example: Review all AI outputs before using]

Who makes decisions about AI tools?
- [Individual, team, committee?]

How is sensitive information handled?
- [Example: Use local models only, don't use AI at all, etc.]
```

### Appendix B: Framework Selection Matrix

```markdown
# Framework Selection Decision Matrix

## Regulatory Obligations

- [ ] Healthcare (HIPAA)
- [ ] Finance (SOX, GLBA)
- [ ] Government (FedRAMP, CMMC)
- [ ] EU Operations (GDPR, AI Act)
- [ ] California (CCPA)
- [ ] Industry-specific: __________

## Organizational Context

- [ ] Existing GRC program (extend it)
- [ ] Security/compliance team (align with their frameworks)
- [ ] Starting from scratch (need flexible framework)
- [ ] Need certification (ISO 42001, SOC2)

## Framework Evaluation

| Framework | Relevance | Flexibility | Effort | Decision |
|-----------|-----------|-------------|--------|----------|
| NIST AI RMF | [Rate 1-5] | [Rate 1-5] | [Low/Med/High] | [Primary/Secondary/No] |
| ISO 42001 | [Rate 1-5] | [Rate 1-5] | [Low/Med/High] | [Primary/Secondary/No] |
| NIST SP 800-53 | [Rate 1-5] | [Rate 1-5] | [Low/Med/High] | [Primary/Secondary/No] |
| EU AI Act | [Rate 1-5] | [Rate 1-5] | [Low/Med/High] | [Primary/Secondary/No] |

## Decision

Primary Framework: [Name]
Rationale: [Why this one?]

Complementary Frameworks: [List]
Rationale: [Why these?]
```

### Appendix C: Gap Analysis Template

```markdown
# Gap Analysis Template

For each framework function, complete:

## [Function Name] (e.g., GOVERN)

What This Function Requires:
- [Requirement 1]
- [Requirement 2]

What We're Currently Doing:
- [Current practice 1]
- [Current practice 2]

Gaps Identified:

| Gap | Impact | Priority | Effort |
|-----|--------|----------|--------|
| [Gap description] | [High/Med/Low] | [High/Med/Low] | [High/Med/Low] |

Remediation Plan:
- [Action 1] - [Owner] - [Timeline]
- [Action 2] - [Owner] - [Timeline]
```

### Appendix D: v0.1 Success Criteria

```markdown
# v0.1 Success Criteria

v0.1 is considered complete when:

## Foundational Documents
- [ ] AI Acceptable Use Policy published
- [ ] Model selection strategy documented
- [ ] Framework crosswalks completed
- [ ] Gap analysis published

## System Documentation
- [ ] Model cards for all AI tools in use
- [ ] Data cards if applicable
- [ ] Risk register populated
- [ ] Control mappings defined

## Process Establishment
- [ ] Policy approval process defined
- [ ] Review triggers established (quarterly, model changes)
- [ ] Roles and responsibilities assigned

## Evidence Generation
- [ ] This repository demonstrates operational use
- [ ] Policy acknowledgments tracked
- [ ] Cost-benefit analysis documented

## Framework Alignment
- [ ] NIST AI RMF functions all addressed
- [ ] Primary complementary framework mapped (ISO 42001, SP 800-53, or EU AI Act)
- [ ] Crosswalk tables validated against official sources

## Stakeholder Review
- [ ] GRC/compliance review (if applicable)
- [ ] Legal review (if applicable)
- [ ] Engineering team validation (schemas are usable)
- [ ] Leadership approval (if applicable)
```

---

## Document Metadata

| Field | Value |
|-------|-------|
| Version | 1.0 |
| Status | Published |
| Date | 2025-10-10 |
| Owner | VintageDon |
| Purpose | Document the journey from ad-hoc AI usage to formalized governance |
| Framework | NIST AI RMF 1.0 |
| Related Documents | README.md, `_repository-governance/`, `docs/crosswalks.md`, `docs/methodology.md` |

---

Document Version: 1.0 | Last Updated: 2025-10-10 | Status: Published
