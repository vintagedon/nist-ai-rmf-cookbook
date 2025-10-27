# Framework Decision Rationale

## The Problem We Needed to Solve

RadioAstronomy.io is an AI-native organization. Six people managing on-premises infrastructure, producing research datasets that get cited and used downstream. AI is woven into research, analysis, and operations—not a side project, but core to how we work.

That integration created immediate questions:
- How do we govern AI systems responsibly at small-team scale?
- How do we ensure quality when AI assists scientific research?
- How do we manage risks without enterprise budgets or dedicated compliance teams?
- How do we demonstrate trustworthiness to downstream consumers of our datasets?

The answer wasn't obvious. Theoretical frameworks provide structure but not implementation. Enterprise compliance programs assume resources we don't have. Industry-specific guidance often misses small teams entirely.

We needed operational governance we could actually build and maintain. This document explains how we chose frameworks that made that possible.

## Decision Criteria

We evaluated frameworks against practical requirements:

**Operationalizable at small-team scale:**
- Implementable with 6 people and realistic time budgets
- No assumption of dedicated security/compliance staff
- Achievable without enterprise consulting budgets
- Sustainable through normal operational cycles

**Technically grounded:**
- Concrete enough to inform actual system design
- Specific enough to guide implementation decisions
- Measurable enough to assess effectiveness
- Detailed enough for evidence generation

**Multi-framework integration:**
- Complementary rather than redundant
- Reinforcing across governance/risk/technical layers
- Providing crosswalk to multiple compliance contexts
- Satisfying diverse stakeholder expectations

**Credible and defensible:**
- Recognized by regulators, auditors, and stakeholders
- Evidence-based methodology, not opinion
- Peer-reviewed and industry-validated
- Suitable foundation for future certification if needed

**Open and accessible:**
- Publicly available without licensing barriers
- Well-documented with implementation guidance
- Active community and ongoing development
- Suitable for version-controlled, peer-reviewed implementation

## Framework Selection

We integrated four frameworks that satisfy different aspects of governance:

### NIST AI Risk Management Framework 1.0

**What it provides:** Governance structure and lifecycle thinking

**Why we chose it:**
- Federal framework with regulatory momentum (likely influence on future US AI legislation)
- Deliberately abstract—provides structure without prescribing implementation
- Four-function model (Govern, Map, Measure, Manage) maps cleanly to operational process
- Trustworthiness characteristics (valid/reliable, safe, secure/resilient, accountable/transparent, explainable/interpretable, privacy-enhanced, fair with harmful bias managed) provide assessment framework
- Works for any organization size—scalable from startups to enterprises
- Extensive crosswalk documentation to other standards (ISO, NIST CSF, etc.)

**What it doesn't provide:**
- Specific risk assessment methodology (too abstract for direct implementation)
- Technical control baselines (not its purpose)
- Regulatory compliance mapping (framework, not regulation)

**How we use it:**
- Governance policy structure follows NIST AI RMF functions
- Trustworthiness characteristics inform model card assessments
- Lifecycle stages guide when policies/standards apply
- Appendix crosswalk maps to ISO 31000, CIS Controls, regulatory requirements

**Key Resource:** [NIST AI RMF 1.0](https://nvlpubs.nist.gov/nistpubs/ai/NIST.AI.100-1.pdf) (January 2023)

### CIS Risk Assessment Method (CIS-RAM)

**What it provides:** Repeatable risk assessment methodology

**Why we chose it:**
- Systematic approach: Identify, Assess, Prioritize, Respond, Monitor
- Scales appropriately—not too heavy for small teams, rigorous enough for serious risk work
- Integrates naturally with CIS Controls (shared vocabulary and control mapping)
- Provides structured decision framework without being prescriptive about outcomes
- Evidence-based risk rating (likelihood + impact = risk score)
- Free and openly accessible

**What it doesn't provide:**
- AI-specific risk scenarios (we had to build those)
- Control implementation details (intentionally delegated to CIS Controls)
- Regulatory compliance mapping (risk methodology, not compliance framework)

**How we use it:**
- Risk scenario structure follows CIS-RAM methodology
- R01-R10 scenarios apply identify/assess/prioritize pattern
- Control recommendations map to CIS Controls baseline
- Monitoring metrics defined for each risk scenario
- Decision log captures risk acceptance rationale

**Key Resource:** [CIS-RAM Guide](https://www.cisecurity.org/insights/white-papers/cis-ram-risk-assessment-method) (freely available)

### CIS Controls v8.1 Implementation Group 1 (IG1)

**What it provides:** Technical control baseline for small organizations

**Why we chose it:**
- IG1 specifically designed for small teams (< 100 people) with limited resources
- 56 controls instead of full 153—prioritized by impact and feasibility
- Mature framework with 20+ years of refinement
- Maps to multiple compliance requirements (NIST CSF, ISO 27001, PCI DSS, etc.)
- Community-supported with extensive implementation guidance
- Free CIS Controls Navigator tool for tracking implementation

**What it doesn't provide:**
- AI-specific controls (we layer those on top)
- Complete coverage of all possible security concerns (intentionally focused)
- Detailed implementation procedures (provides "what," not "how")

**How we use it:**
- Technical security standard built on IG1 baseline
- Control mapping in risk scenarios references CIS Control IDs
- Tool inventory and asset management align with IG1 requirements
- Security monitoring based on IG1 logging/detection controls
- Vendor assessments evaluate control gaps relative to baseline

**Key Resource:** [CIS Controls v8.1](https://www.cisecurity.org/controls/v8) with IG1 filtering

**Why IG1 Specifically:**
- IG2 (154 controls) and IG3 (all 153 controls) assume dedicated security teams
- IG1 focuses on foundational hygiene achievable by small teams
- Escalation path exists if we grow or risk profile changes
- Better to implement 56 controls well than 153 controls poorly

### Colorado SB24-205 (Voluntary Adoption)

**What it provides:** Concrete regulatory language for AI governance

**Why we chose it:**
- First US state law with specific AI deployment requirements
- Provides operational definitions: "high-risk AI system," "algorithmic discrimination," "consequential decision"
- Specifies disclosure, documentation, and impact assessment obligations
- Voluntary adoption demonstrates proactive compliance posture
- Preview of likely federal regulatory direction
- Concrete enough to inform actual policy language

**What it doesn't provide:**
- Complete governance framework (single-issue regulation)
- Technical implementation guidance (legal requirements, not technical standard)
- Multi-framework integration (we had to build crosswalk)

**How we use it:**
- Risk scenario definitions align with Colorado's "high-risk" criteria
- Transparency standard incorporates disclosure requirements
- Model cards document impact assessments for high-risk systems
- Policy language references Colorado requirements where applicable
- Decision log documents voluntary adoption rationale

**Why voluntary adoption:**
- Not legally required (we're not subject to Colorado law)
- Sets credible standard for responsible AI deployment
- Demonstrates governance seriousness to stakeholders
- Establishes foundation if federal legislation follows similar pattern
- Simpler to adopt proactively than retrofit later

**Key Resource:** [Colorado SB24-205](https://leg.colorado.gov/bills/sb24-205) (effective February 2026)

## What We Explicitly Rejected

### ISO/IEC 42001 AI Management System

**Why we considered it:** International standard, comprehensive AI governance framework

**Why we rejected it:**
- Designed for formal certification (expensive auditing process)
- Heavy documentation requirements assume dedicated compliance team
- Enterprise-focused—difficult to implement meaningfully at 6-person scale
- Certification cost and ongoing maintenance not justified by our risk profile
- Would consume resources better spent on actual risk management

**Future consideration:** If we grow significantly or pursue enterprise contracts requiring certification, ISO 42001 becomes viable. For now, NIST AI RMF provides similar structure without certification overhead.

### SOC 2 Type II

**Why we considered it:** Industry-recognized assurance framework

**Why we rejected it:**
- Service organization controls—designed for SaaS vendors serving enterprise customers
- We produce datasets, not service offerings (wrong fit)
- Annual audit costs (typically $20K-50K+) not justified
- Trust Services Criteria broader than AI-specific governance needs
- Would address stakeholder trust, but not AI risk management directly

**Future consideration:** If we launch commercial data services or pursue enterprise partnerships requiring SOC 2, we would implement. Current research focus doesn't warrant it.

### NIST Cybersecurity Framework (CSF)

**Why we considered it:** Well-established risk management framework

**Why we rejected it:**
- Cybersecurity-focused, not AI-specific
- Substantial overlap with CIS Controls (redundant effort)
- AI RMF provides better governance structure for our primary risk domain
- CSF useful for general IT security, but CIS Controls more actionable for small teams

**What we kept:** NIST AI RMF references and maps to CSF, so we get implicit alignment. Crosswalk documentation covers CSF relationships where relevant.

### FedRAMP / FISMA

**Why we considered it:** Federal government cloud security standards

**Why we rejected it:**
- Designed for government contractors (not applicable to our work)
- Heavy compliance burden requiring dedicated staff
- On-premises infrastructure doesn't match FedRAMP cloud model
- No current federal contracts or plans to pursue them

**Future consideration:** If we pursue federal research grants or partnerships requiring FedRAMP, we would implement. Current self-funded research doesn't require it.

## Framework Integration Pattern

The four frameworks we selected reinforce each other:

**NIST AI RMF** provides governance structure:
- Defines functions: Govern, Map, Measure, Manage
- Establishes trustworthiness characteristics
- Guides lifecycle integration

**CIS-RAM** operationalizes risk assessment:
- Provides methodology for Map and Measure functions
- Structures risk scenario development
- Enables evidence-based prioritization

**CIS Controls IG1** implements technical baseline:
- Satisfies Manage function requirements
- Provides measurable security outcomes
- Enables control gap analysis

**Colorado SB24-205** adds regulatory concreteness:
- Defines high-risk AI systems legally
- Specifies disclosure obligations
- Establishes impact assessment requirements

**Together:** Governance structure + risk methodology + technical controls + regulatory compliance = operational system we can actually implement and defend.

## Validation Through Implementation

We validated framework selection by building actual governance artifacts:

**Policies and standards:**
- AI Governance Policy (NIST AI RMF structure)
- Risk Assessment Standard (CIS-RAM methodology)
- Secure AI Systems Standard (CIS Controls IG1 baseline)
- Transparency & Disclosure Standard (Colorado SB24-205 requirements)

**Risk management:**
- 10 risk scenarios (CIS-RAM structure, NIST trustworthiness mapping)
- Control recommendations (CIS Controls references)
- Monitoring metrics (CIS-RAM response phase)

**Documentation:**
- 130+ model cards (NIST trustworthiness assessment)
- Tool inventory (CIS Controls IG1 asset management)
- Decision log (governance transparency)

**Result:** Complete governance system implemented in ~4 weeks of focused work. Frameworks proved operationalizable at small-team scale without external consultants.

## Decision Authority and Timing

**Who decided:** CEO (radioastronomy.io) with input from team members with high-compliance IT backgrounds

**When decided:** January 2025, during v0.2 governance implementation

**Review cycle:** 90-day framework assessment planned
- Are chosen frameworks still serving operational needs?
- Have new frameworks emerged that better fit our context?
- Has risk profile changed requiring different coverage?
- Should we escalate (e.g., IG1 → IG2) or add frameworks?

**Documented in:** `appendices/appendix-h-decision-log.md` with timestamped rationale

## Lessons for Framework Selection

Based on our experience, consider these principles when choosing governance frameworks:

**Start with your risk profile, not frameworks:**
- What AI systems do you operate?
- What could go wrong, and how bad would it be?
- What regulatory obligations apply?
- What stakeholder expectations exist?

**Choose frameworks that reinforce, not duplicate:**
- Governance structure + risk methodology + technical controls
- Abstract framework + concrete implementation guidance
- Voluntary standards + regulatory requirements

**Prioritize operationalizability over comprehensiveness:**
- Better to implement 4 frameworks well than 10 frameworks poorly
- Small-team versions (IG1) beat enterprise versions (IG3) for our scale
- Free/open beats proprietary when quality is equivalent

**Test through implementation:**
- Can you actually build artifacts using these frameworks?
- Do they answer real operational questions?
- Can you defend decisions based on framework guidance?
- Do they integrate or conflict?

**Accept context specificity:**
- Our choices reflect our risk profile, team size, regulatory environment
- Your context differs, so your choices should too
- Document rationale so future you understands why

## Ongoing Evolution

Framework selection isn't permanent. We expect to revisit these decisions as:

**Risk profile changes:**
- New AI deployments with different risk characteristics
- Shift from research to commercial operations
- Growth requiring different control baselines

**Regulatory environment evolves:**
- Federal AI legislation if enacted
- Additional state laws beyond Colorado
- International regulatory developments if we expand scope

**Organizational capacity grows:**
- Additional team members enabling more rigorous controls
- Budget allowing certification pursuits (ISO 42001, SOC 2)
- External partnerships requiring specific compliance demonstrations

**Framework landscape matures:**
- New AI-specific frameworks emerging
- Existing frameworks updated with AI guidance
- Industry best practices converging around specific approaches

The decision log in `appendices/appendix-h-decision-log.md` captures framework evolution over time. Version control shows when and why changes occur.

## Summary: Why These Frameworks Work for Us

We chose frameworks that:
- Scale to 6-person team reality
- Integrate without redundancy
- Provide concrete operational guidance
- Satisfy multiple stakeholder expectations
- Enable evidence-based governance
- Support continuous improvement

NIST AI RMF + CIS-RAM + CIS Controls IG1 + Colorado SB24-205 = comprehensive governance achievable with realistic resources.

Your context determines your frameworks. Our implementation shows it's achievable. Adapt, don't adopt.

---

**See Also:**
- [`appendices/appendix-a-ai-framework-crosswalk.md`](../policies-proxmox-cluster/appendices/appendix-a-ai-framework-crosswalk.md) - Detailed framework mapping
- [`appendices/appendix-h-decision-log.md`](../policies-proxmox-cluster/appendices/appendix-h-decision-log.md) - Timestamped decision history
- [`getting-started.md`](getting-started.md) - Using this repository effectively
