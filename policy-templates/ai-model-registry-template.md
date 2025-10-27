# AI Model Registry Template

Version: [Your version number]  
Effective Date: [YYYY-MM-DD]  
Last Review: [YYYY-MM-DD]  
Next Review: [YYYY-MM-DD]

---

## Purpose

[GUIDANCE: Explain what this registry DOES operationally—not just what it documents. How do people use it day-to-day? This should be your operational source of truth that connects who uses what models (Role-Based AI Stack) to why those choices are safe (framework compliance).]

Framework Alignment: All approved models have been assessed against:

- [Framework 1 - recommend at least one risk/governance framework]
- [Framework 2 - recommend at least one technical control baseline]
- [Framework 3+ - add regulatory/legal requirements if applicable]

[GUIDANCE: List the frameworks you're using for governance. At minimum include one risk framework (NIST AI RMF, ISO 42001, etc.) and one technical control baseline (CIS Controls, NIST CSF, etc.). Add regulatory requirements if applicable to your jurisdiction or industry.]

Models not listed as approved have not been validated against the crosswalk and must not be used for organizational work.

---

> How RadioAstronomy.io Does This:
>
> Our registry is the operational reference for model selection tied to our Role-Based AI Stack. It answers "which model for this task?" in 30 seconds without requiring deep technical knowledge.
>
> Our Framework Alignment:
>
> - NIST AI RMF - Governance and risk management foundation
> - CIS Controls v8.1 (IG1) - Technical control baseline for small organizations
> - Colorado SB-24-205 - Legal compliance for voluntary high-risk deployer duties
> - CIS-RAM - Risk assessment methodology
>
> Why we chose these frameworks: We needed one governance/risk framework (AI RMF), one technical baseline (CIS IG1 - sized for small orgs), and one legal framework (SB-24-205 because it's the first real, standing AI Law for the US, voluntary inclusion, we are not Colorado based). CIS-RAM provides the assessment methodology to tie them together. This creates crosswalk validation without framework hallucination.
>
> Why we focus on operational use: People need "can I use this model?" answers immediately, not governance white papers. The registry connects daily decisions to compliance proof through cross-references to our detailed crosswalk (Appendix A).

---

## Approved Models (Active Use)

[GUIDANCE: This section contains models that have passed your validation process. Each entry should answer: WHO uses it, WHAT FOR, with WHAT data, and HOW does it satisfy your governance requirements. The pattern below repeats for each approved model.]

### [Model Name]

Model Identifier: [vendor-model-version]  
Role: [Organizational role or user group - who has access?]  
Access Method: [How users access - API, web interface, CLI, desktop app, etc.]

Use Cases:

- [Specific operational use case 1]
- [Specific operational use case 2]
- [Additional use cases as needed]

[GUIDANCE: Use cases should be specific enough to guide decisions but broad enough to avoid constant updates. Focus on data patterns and consequence levels rather than specific tasks.]

Data Classification Boundary: [Highest sensitivity level allowed]

[GUIDANCE: Explicitly state what data CAN'T be used with this model. This is your enforcement boundary. Make it bold and clear - this is where compliance violations happen.]

Access Control: [How access is managed - SSO, RBAC, role assignment, etc.]

Governance Alignment:

- [Framework 1]: [How this model's deployment satisfies framework requirements]
- [Framework 2]: [Technical controls or principles this model implements]
- [Framework 3]: [Regulatory compliance measures if applicable]

[GUIDANCE: Connect deployment patterns to control satisfaction. Don't just reference frameworks—explain the operational link. For example: "CIS Control 6.x - Access managed via enterprise SSO with MFA" not just "satisfies CIS Controls."]

Economic Model: [Cost structure - free tier, fixed subscription, usage-based, hardware cost]  
Knowledge Cutoff: [Model training date if known, or "dynamic" for real-time models]

Model Card: [Link to detailed model card in your model-cards/ directory]

[GUIDANCE: Repeat this pattern for each approved model. Keep entries consistent in structure even if some fields don't apply to all models.]

---

> RadioAstronomy.io Example 1 - Gemini 2.5 Pro:
>
> ### Gemini 2.5 Pro
>
> Model Identifier: `gemini-2.5-pro`  
> Role: Work Fabric (Everyone)  
> Access Method: Google Workspace Enterprise (AI Studio, Docs, Gmail, Meet, Drive)
>
> Use Cases:
>
> - Day-to-day chat, drafting, research, and analysis
> - Workspace-native tasks (summaries, meeting notes, document linting, inbox triage)
> - Code assistance for internal work with Public-Internal data
>
> Data Classification Boundary: Public-Internal only  
> Access Control: Workspace Enterprise SSO, MFA, centralized admin
>
> Governance Alignment:
>
> - NIST AI RMF: Secure, Privacy-Enhanced (training opt-out by contract via Google Workspace Enterprise accounts)
> - CIS v8.1 IG1: Audit logging via Workspace (Control 8.09), Identity management (Controls 5.x, 6.x)
> - SB-205: Public-Internal data boundary enforced; organizational audit trail maintained
>
> Economic Model: Unlimited usage within Workspace subscription; 1M token context window  
> Knowledge Cutoff: January 2025
>
> Model Card: `gemini-2.5-pro-model-card.yaml`
>
> ---
>
> Why we structured it this way:
>
> - Role first: People think "what can I use?" not "what are model capabilities?" Starting with Role makes the registry user-centric.
> - Data Classification Boundary is bold: This is our enforcement point. Making it visually prominent prevents "oops, wrong data" incidents.
> - Governance Alignment is operational: We don't just say "complies with CIS" - we say "Control 8.09 satisfied via Workspace audit logging." This makes audits straightforward.
> - Economic Model explicit: Cost visibility prevents surprise bills and supports budget planning.
> - Enterprise contract changes everything: Gemini becomes our "default yes" model because Workspace Enterprise pulls our data inside the contractual fence. Training opt-out is negotiated at the enterprise level, not per-user.

---

> RadioAstronomy.io Example 2 - Z.ai:
>
> ### Z.ai
>
> Model Identifier: `z.ai` (GLM-4 via z.ai platform)  
> Role: Public Code Workhorse (Engineer Role Only)  
> Access Method: Z.ai platform (web + CLI)
>
> Use Cases:
>
> - External repository contributions (OSS, community projects)
> - Citizen science code development destined for public release
> - Rapid prototyping on public datasets bound for Zenodo publication
> - Pull request reviews on repos not under organizational control
> - Test generation and scaffolding for upstream contributions
>
> Data Classification Boundary: Public-External ONLY  
> Access Control: Engineer role assignment; organizational repos explicitly prohibited
>
> Governance Alignment:
>
> - NIST AI RMF: Transparent (used only for public work), Accountable (role-gated access)
> - CIS v8.1 IG1: Access control via role assignment (Control 6.x)
> - SB-205: Public-External boundary prevents impact on organizational deployer duties
>
> Economic Model: $30/month (max tier), 2400 requests per 6 hours - sufficient for entire engineering team 24/7  
> Knowledge Cutoff: Dynamic (model updates regularly)
>
> Critical Restriction: Z.ai trains on submitted data. This model is strictly prohibited for any organizational repository (Public-Internal) or Protected data. Violation of this boundary is a security incident.
>
> Model Card: `z-ai-model-card.yaml`
>
> ---
>
> Why this model works for us (and why it raised hackles at first):
>
> Z.ai trains on everything you submit. Initial reaction: "Absolutely not." Then we realized: as a research cluster doing citizen science, most of our output is destined for public release anyway - Zenodo datasets, public GitHub repos, published papers. If the data's going public regardless, training on it is irrelevant.
>
> The economic arbitrage: GLM-4 is frontier-tier (Claude Code level capability). At $30/month with 2400 req/6hr, it supports our entire engineering team 24/7 on public work. This is incredible value - but only accessible because our data classification clarity lets us use a tool others can't.
>
> The boundary enforcement: Z.ai earned its own data classification tier (Public-External). It's not "use sparingly" - it's "use freely in the right domain, never cross the boundary." Role-gating to Engineer (has the SME knowledge to make this distinction + Public-External-only) makes this enforceable.
>
> Strategic insight: Data destiny (where it's going) matters more than current state for some tools. Knowing your data's endpoint unlocks capabilities that would be restricted if you only thought about current sensitivity.

---

## Pending Review (Not Yet Validated Against Crosswalk)

[GUIDANCE: This section lists models that are accessible in your ecosystem but have NOT been assessed for alignment with your governance frameworks. This prevents shadow AI (people using unapproved tools) while maintaining agility (you can document what exists without blocking experimentation).]

The following models are accessible in our ecosystem but have not been assessed for alignment with [Your Governance Crosswalk reference].

Do not use these models for organizational work until validation is complete.

### [Pending Model or Model Group Name]

Models:

- [Model variant 1]
- [Model variant 2]

Why Pending:

- [Reason 1 - e.g., use case boundaries unclear]
- [Reason 2 - e.g., pricing/capability differences need operational testing]
- [Reason 3 - e.g., framework alignment not yet validated]

Economic Note: [Cost structure or access availability]

---

[GUIDANCE: Repeat pattern for each pending model or model group. Keep this section updated as new models become available or as validation completes.]

### Review Trigger

Models move from Pending Review to Approved when:

1. Specific use case emerges that cannot be satisfied by currently approved models
2. Validation against Crosswalk using your defined methodology
3. Framework alignment documented:
   - [Framework 1] requirements satisfied for intended use
   - [Framework 2] controls documented and enforceable
   - [Framework 3+] compliance assessed and addressed (if applicable)
4. Model card created documenting validation findings and operational boundaries
5. Cost/benefit analysis if model requires paid tier or API usage

Process Owner: [Role responsible for model approval]  
Escalation Path: [How to request model validation]

---

> How RadioAstronomy.io Uses Pending Review:
>
> We list Google AI Studio model variants (Flash, Flash-Lite), image generation models (Imagen 4), development agents (Jules), and research tools (NotebookLM) in Pending Review. These are accessible via our Workspace Enterprise subscription but we haven't validated use cases or governance alignment yet.
>
> Why we do this: It prevents shadow AI - people know these exist and know they're not approved yet. It also prevents repetitive questions ("Can I use Jules?" - "Not yet, it's in Pending Review, here's why").
>
> Universal applicability: Every organization has accessible-but-not-validated models. Documenting them openly prevents compliance violations while maintaining innovation speed.

---

## Cost Discipline & Economic Strategy

[GUIDANCE: Document your organization's approach to model cost management. This section helps prevent budget drift and usage-based billing surprises.]

Our model selection prioritizes [your cost strategy - e.g., free/fixed-cost tiers, usage-based with caps, etc.] to [rationale - e.g., maintain budget predictability, enable unlimited experimentation, etc.].

Current Economics:

- [Model 1]: [Cost structure and value proposition]
- [Model 2]: [Cost structure and value proposition]
- [Continue for all approved models]

Cost Triggers for Review:

- [Trigger 1 - e.g., pending models requiring paid API access]
- [Trigger 2 - e.g., usage patterns exceeding free tier limits]
- [Trigger 3 - e.g., additional seats/licenses needed]

[GUIDANCE: This transparency helps leadership understand AI spend and supports budget planning. Include both current costs and what would trigger cost increases.]

---

> RadioAstronomy.io Economic Strategy:
>
> We prioritize free features within approved tools or fixed-cost tiers to maintain budget predictability and avoid usage-based billing complexity.
>
> Current Economics:
>
> - Gemini 2.5 Pro (Workspace): Unlimited usage, included in Workspace Enterprise subscription -- $22/seat (
> - Gemini CLI with Code Assist Standard: 120 req/min free tier, sufficient for entire current automation load ($25/mo for Google Developer Premium which gives $45/mo in Google Cloud Platform credit)
> - Claude Sonnet 4: $100/month fixed cost, single CTO seat
> - Z.ai: $30/month fixed cost (max tier), supports entire engineering team
> - Llama-3-7B: Hardware cost only (one-time), no recurring inference cost
>
> Total AI operational cost: $287/month fixed, effectively unlimited usage within operational bounds for six person team including full automation of all on prem cluster needs.
>
> Why fixed-cost preference: Usage-based billing creates financial drift - you can't budget accurately when costs scale with activity. Fixed costs stay predictable even as usage grows. Credit-based models are middle ground but still create usage anxiety.
>
> Alternative approaches:
>
> - Usage-based with caps: Set hard spending limits, monitor closely - works if you need flex capacity
> - Credit-based pools: Buy credits in advance, track burn rate - works for predictable workloads
>
> Our recommendation: If you can find fixed-cost options for your use case, take them. Budget predictability is worth more than perfect capability matching.

---

## Restricted Models

[GUIDANCE: Document what's explicitly prohibited and why. This section prevents compliance violations by making restrictions visible and justified.]

### [Restriction Category 1]

Status: [Prohibited/Restricted/Conditional]  
Reason: [Compliance, technical, or policy rationale]

[Continue pattern for each restriction]

---

> RadioAstronomy.io Restrictions:
>
> ### Personal AI Accounts
>
> Status: Prohibited  
> Reason: Audit trail, data governance, and training opt-out enforcement require contractually mandated no-training, data control and residency, and centralized administration. Personal accounts (Google, Claude, etc.) do not satisfy CIS v8.1 IG1 identity and access management controls.
>
> ### Non-Enterprise Claude Access
>
> Status: CTO workspace only  
> Reason: Protected data processing requires isolation. Cost discipline requires limiting seats. Editorial control function benefits from single decision-maker pattern.
>
> ---
>
> Why explicit restrictions matter: People will use tools if they're convenient and accessible. Saying "personal accounts prohibited" isn't enough - explaining WHY (audit trail, SSO, training opt-out) makes the restriction defensible and understandable.

---

## Model Selection Decision Tree

[GUIDANCE: Provide a simple decision framework that maps user context to approved model. Should be answerable without deep technical knowledge. This operationalizes your registry - people follow the tree to find their answer.]

Question 1: [Primary decision dimension - e.g., data classification, role, capability need]

- [Option A] → [Approved model(s)]
- [Option B] → [Approved model(s)]

Question 2: [Secondary dimension - e.g., use case type, automation needs]

- [Condition] → [Specific model or additional guidance]

Question 3: [Tertiary dimension - e.g., consequence level, visibility]

- [Final routing to specific model]

[GUIDANCE: Keep this simple - 3 questions maximum. Complex decision trees don't get used. The goal is fast, correct decisions without requiring governance expertise.]

---

> RadioAstronomy.io Decision Tree:
>
> Question 1: What is the data classification?
>
> - Secrets → Never use AI (per AUP)
> - Protected → Local models, Claude or Gemini
> - Public-Internal → Gemini (everyone) OR Gemini + Claude (CTO for governance artifacts)
> - Public-External → Z.ai allowed (confined to Engineer role due to SME knowledge required for boundary control)
>
> Question 2: Is this autonomous ops or batch synthesis?
>
> - Yes → Gemini CLI (RBAC service accounts, logged to Workspace/GCP)
>
> Question 3: Is the output governance-grade or board-facing?
>
> - Yes → Pass through Claude (CTO) as editorial/quality gate
>
> This decision tree keeps people fast and compliant without needing to understand vendor nuances—only data class and consequence.
>
> ---
>
> Why data-classification-first: Our data governance is mature, so classification is already known for most work. Putting it first prevents the "oops, wrong data" problem. The tree matches how people actually think: "Can I use AI with this data?" then "Which AI?" then "Any special handling?" This also allows us to do Access Control by role and security group, allowing a security baseline in the tenancy itself.
>
> Alternative approaches (brief):
>
> - Role-based-first: "What's your role?" → Routes to role-specific models. Good for orgs with clear RBAC and role-differentiated needs.
> - Capability-based-first: "What do you need to do?" → Routes by task type (code, writing, analysis). Good for research-heavy or cross-functional environments.
> - Consequence-based-first: "How visible/critical is this output?" → Routes by risk level. Good for regulated industries.
>
> Choose the dimension your organization already understands best. Don't force people to learn new classification schemes to use AI.

---

## Validation Methodology

[GUIDANCE: Reference your validation process. If using multi-framework crosswalk, describe how you prevent hallucination and ensure logical mappings. Keep this high-level - detailed methodology should live in a separate validation guide.]

All approved models have been validated using [your methodology name/reference], which [brief description of approach].

Validation ensures:

- [Framework 1 requirement type satisfied]
- [Framework 2 requirement type satisfied]
- [Framework 3+ requirement type satisfied]
- [Additional validation criteria]

Validation performed by: [Who/what validates - e.g., compliance team, multi-model consensus, etc.]  
Validation artifacts: [Where validation evidence is stored - e.g., model card files, assessment reports, etc.]

---

> RadioAstronomy.io Validation Methodology:
>
> All approved models have been validated using the AI Crosswalk Validation Guide methodology, which employs Negative Space Bounding (NSB) to prevent framework hallucination and scope creep. Policies and crosswalks are reviewed by humans in the loop and any frontier models which fall inside our security perimeter or data classification. Since we also publish our policies to Github (we have a private 'internal' rider for sensitive items), this allows validation by all the major frontier models without concerns of data spill-out, plus two human reviews before final publishing.
>
> Validation ensures:
>
> - Alignment with NIST AI RMF trustworthiness characteristics
> - Satisfaction of CIS v8.1 IG1 technical controls
> - Compliance with Colorado SB-205 deployer duties (where applicable)
> - Reference alignment with ISO/IEC 42001 (informational only, not enforced)
>
> Validation performed by: Multi-model consensus (Claude Opus 4.1, Gemini 2.5 Pro, GPT-5 Pro) to reduce single-model bias + dual human review.
> Validation artifacts: Stored in model card YAML files with crosswalk mappings documented
>
> ---
>
> Why multi-model consensus: Single AI models hallucinate framework compliance. Using 3+ models to validate each other catches hallucinations and produces more reliable mappings. We then gate this through a Staff Engineer and an outside consultant. This is crosswalk validation, not just "does it sound compliant?"
>
> What NSB prevents in AI Research/Validation: Frameworks naturally want to expand scope ("you should also consider X, Y, Z"). NSB bounds the validation to only what you explicitly chose to enforce, preventing compliance theater and scope creep.

---

## Continuous Improvement

This registry is a living document that evolves through operational experience:

- [Review cadence] of approved model usage patterns and effectiveness
- On-demand reviews when new models or use cases emerge
- Post-incident reviews if model usage contributes to compliance or operational issues
- Framework updates trigger re-validation of affected models

Suggest improvements: [How people should submit feedback or suggest changes]

---

> RadioAstronomy.io Continuous Improvement:
>
> We review this registry:
>
> - Quarterly: Usage patterns, cost actuals, effectiveness of approved models
> - On-demand: When new models emerge or use cases change
> - Post-incident: If model usage contributes to any compliance or operational issue
> - Framework updates: When NIST, CIS, or SB-205 guidance changes
>
> Suggest improvements: Automation agents drop notification to `staging/` or employees raise directly with CTO during work sessions
>
> ---
>
> Why quarterly + on-demand: Quarterly prevents drift and catches cost/usage changes. On-demand prevents blocking innovation - we don't wait 3 months if a critical new capability emerges such as Gemini Pro 3.0 now schedule for release by end of year. Post-incident reviews close the loop when something goes wrong. Framework updates are rare but important - we revalidate affected models when guidance changes.

---

## Appendices

Appendix A: [Your primary governance reference - e.g., AI Framework Crosswalk]  
Appendix B: [Validation methodology documentation]  
Model Cards: [Location of detailed model cards - e.g., model-cards/ directory]

[GUIDANCE: Cross-reference supporting documentation. Keep the registry focused on operational model selection - deep governance details live in appendices.]

---

## Revision History

| Version | Date       | Changes                              | Author      |
|---------|------------|--------------------------------------|-------------|
| [x.x]   | [YYYY-MM-DD] | [Description of changes]            | [Name/Role] |

[GUIDANCE: Track changes over time. This supports audits and shows governance maturity. Include version, date, what changed, and who authorized the change.]

---

> RadioAstronomy.io Revision History:
>
> | Version | Date       | Changes                              | Author      |
> |---------|------------|--------------------------------------|-------------|
> | 1.0     | 2025-10-26 | Initial registry creation            | CTO + NIST AI RMF PM |
>
> ---
>
> Why we version control governance docs: Changes to approved models or boundaries are significant. Version history creates an audit trail and shows continuous improvement. It also prevents "wait, when did this change?" confusion.

---

Questions or Review Requests: [How to contact governance/compliance team]

---

> RadioAstronomy.io Contact:
>
> Use staging notifications or raise directly with CTO during work sessions.
