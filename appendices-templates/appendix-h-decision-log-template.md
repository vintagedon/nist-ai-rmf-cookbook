# Appendix: AI Governance Decision Log Template

[GUIDANCE: This decision log documents significant AI governance decisions over time. It answers: WHAT was decided, WHO decided it, WHY that choice was made, and WHAT impact it had. This is your accountability record—not meeting minutes, but structured decision documentation that provides complete context for future review boards, auditors, or incident investigations.]

**Organization:** [Organization Name]  
**Effective Date:** [YYYY-MM-DD]  
**Version:** [X.Y]  
**Parent Document:** [AI Governance Policy or equivalent]

---

## 1. Purpose

[GUIDANCE: Explain what this decision log DOES operationally. This should be your historical record of governance choices, providing context and rationale that persists beyond the people who made the decisions. Essential for audit trails, onboarding new board members, and understanding policy evolution.]

This appendix maintains a chronological record of significant AI governance decisions made by [Organization]. Each entry documents the context, decision, rationale, and operational impact to provide:

- **Accountability:** Clear attribution of governance decisions
- **Traceability:** Link between decisions and policy changes
- **Context:** Understanding of constraints and alternatives considered
- **Audit Trail:** Evidence of deliberative decision-making process
- **Institutional Memory:** Knowledge that persists beyond current personnel

[GUIDANCE: Decision log complements version control. Version control shows WHAT changed in documents; decision log shows WHY those changes were made and WHAT trade-offs were considered.]

---

## 2. Scope and Inclusion Criteria

### 2.1 What Gets Logged

[GUIDANCE: Define what constitutes a "significant decision" worthy of logging. Too broad = noise, too narrow = missing critical context. Focus on choices with lasting impact or where alternatives were seriously debated.]

**Decisions requiring logging:**
- New AI model approvals or rejections
- Policy or standard changes (MINOR/MAJOR versions)
- Risk acceptance decisions above normal appetite
- Framework adoption or significant interpretation choices
- Control implementation approaches with trade-offs
- Incident response decisions affecting governance
- Organizational risk appetite adjustments
- Vendor selection for high-risk AI systems
- Data classification or boundary changes

[GUIDANCE: Adjust to your organization. Small orgs may log more; large orgs may need higher threshold to avoid log bloat.]

**Decisions NOT requiring logging:**
- Routine operational choices within approved policies
- PATCH version corrections (typos, formatting)
- Administrative updates (contact info, meeting schedules)
- Individual project decisions following established patterns
- Routine model usage within approved boundaries

[GUIDANCE: These belong in other systems—project documentation, meeting minutes, version control commits. Decision log is for governance-level choices with organizational impact.]

### 2.2 Logging Authority

[GUIDANCE: Who can add entries to the decision log? Balance documentation burden with accountability. Typically governance lead or board secretary, not distributed across organization.]

**Authorized to Create Entries:**
- [Role 1]: [Types of decisions they can log]
- [Role 2]: [Types of decisions they can log]

**Review and Approval:**
- [Process for verifying entry accuracy]
- [Who approves before entry is finalized]

---

## 3. Decision Entry Structure

[GUIDANCE: Consistent structure makes log searchable and audit-ready. Each entry should be self-contained—readable years later without additional context.]

### 3.1 Required Fields

**Decision ID:** [Unique identifier - e.g., DEC-YYYY-NNN]

[GUIDANCE: Sequential numbering within year makes cross-referencing easy. Format: DEC-2025-001, DEC-2025-002, etc.]

**Date:** [YYYY-MM-DD]

[GUIDANCE: Date decision was made, not logged. If multi-meeting decision, use final approval date.]

**Decision Maker:** [Individual or body with authority]

[GUIDANCE: Be specific. "Review Board" or "CTO" or "Security Lead." If committee decision, note if consensus or vote (with breakdown if relevant).]

**Category:** [Classification of decision type]

[GUIDANCE: Define categories matching your governance structure. Examples: Model Approval, Policy Change, Risk Acceptance, Control Implementation, Vendor Selection, Framework Interpretation.]

**Status:** [Current / Superseded / Reversed]

[GUIDANCE: "Current" = active decision. "Superseded" = replaced by newer decision (note superseding DEC-ID). "Reversed" = explicitly reversed (note why and when).]

### 3.2 Decision Content

**Context:**

[GUIDANCE: What situation prompted this decision? What was the business/operational need? What constraints existed? This section should explain why a decision was needed at all.]

[1-3 paragraphs describing situation, need, and constraints]

**Decision:**

[GUIDANCE: What was actually decided? Be specific and actionable. Avoid vague language. Good: "Approve Anthropic Claude Sonnet 4 for Protected data processing with CTO-only access." Bad: "Consider using Claude for sensitive work."]

[Clear statement of what was decided - specific and actionable]

**Rationale:**

[GUIDANCE: WHY this decision was made. What factors were weighted? What principles or frameworks guided the choice? This is the most important section for future understanding.]

[2-4 paragraphs explaining reasoning, including:]
- Framework alignment considerations
- Risk assessment and trade-offs
- Cost/benefit analysis if applicable
- Stakeholder input and concerns
- Principles or values applied

**Alternatives Considered:**

[GUIDANCE: What other options were seriously evaluated? Why were they rejected? This shows deliberative process and helps future boards understand constraints.]

1. **[Alternative 1]:** [Brief description and why not chosen]
2. **[Alternative 2]:** [Brief description and why not chosen]
3. **[Alternative N]:** [Brief description and why not chosen]

[GUIDANCE: "No alternatives considered" is acceptable for some decisions, but if you're logging it, usually means there was debate.]

**Impact Assessment:**

[GUIDANCE: Who is affected by this decision? What changes operationally? What risks are introduced or mitigated?]

- **Affected Stakeholders:** [Who this impacts]
- **Operational Changes:** [What changes in day-to-day work]
- **Resource Requirements:** [Cost, time, personnel needs]
- **Risk Impact:** [Risks mitigated or introduced]
- **Timeline:** [When decision takes effect, transition period]

### 3.3 Cross-References

[GUIDANCE: Link decisions to related governance artifacts. This creates traceability web for auditors and future review boards.]

**Framework Alignment:**
- **[Framework 1]:** [How this decision satisfies framework requirements]
- **[Framework 2]:** [Relevant controls or principles]

[GUIDANCE: Reference specific framework sections. Example: "NIST AI RMF GOVERN-1.3 (accountability structures), CIS Control 4.1 (secure configuration)."]

**Related Documents:**
- [Link to policy/standard affected]
- [Link to risk scenario if applicable]
- [Link to ADR if significant architectural choice]

**Related Decisions:**
- [DEC-YYYY-NNN]: [Relationship - supersedes, relates to, conflicts with]

[GUIDANCE: Create decision dependency graph. Example: "DEC-2025-012 supersedes DEC-2024-008" or "DEC-2025-015 implements DEC-2025-003."]

---

## 4. Organization and Maintenance

### 4.1 Log Structure

[GUIDANCE: How decisions are organized for easy navigation. Options: (1) Chronological single document, (2) Annual documents, (3) Category-based documents. Choose based on decision volume and search patterns.]

**Format:** [Single document / Annual documents / Categorized documents]

**Location:** [Where log is maintained - repo path, system, etc.]

**File Naming:** [Convention if multiple files - e.g., decision-log-YYYY.md]

### 4.2 Search and Retrieval

[GUIDANCE: How to find specific decisions. In version-controlled markdown, git search works well. If using database/system, describe search capabilities.]

**Finding Decisions:**
- **By Date:** [Chronological organization]
- **By Category:** [Tag or section-based filtering]
- **By Decision Maker:** [How to filter by authority]
- **By Framework:** [How to find framework-related decisions]
- **By Status:** [How to filter Current/Superseded/Reversed]

**Cross-Reference Tools:**
- [Links between related decisions]
- [Index of superseded decisions]
- [Framework alignment matrix if applicable]

### 4.3 Review and Updates

[GUIDANCE: Decisions may need updates (superseded by new decision, implementation learnings, status changes). Define how log evolves without losing history.]

**Status Updates:**
- Original entry remains intact with historical context
- Status field updated to "Superseded" or "Reversed"
- Cross-reference added to superseding decision
- Brief note added explaining relationship

[GUIDANCE: Never delete or heavily edit original entries. Historical accuracy matters for audit. Add notes, but preserve original reasoning.]

**Periodic Review:**
- [Cadence]: Review all "Current" decisions for continued relevance
- Identify decisions that should be codified into policy
- Identify patterns suggesting policy gaps
- Update cross-references as documents evolve

---

## 5. Decision Templates

[GUIDANCE: Provide templates for common decision types to ensure consistency and completeness. Adjust these to match your decision patterns.]

### 5.1 Model Approval Decision

```markdown
**Decision ID:** DEC-YYYY-NNN  
**Date:** YYYY-MM-DD  
**Decision Maker:** [Authority]  
**Category:** Model Approval  
**Status:** Current

**Context:**
[Why this model was requested, business need, use case requirements]

**Decision:**
[Approve/Reject] [Model Name] for [use cases] with [data classification boundary] and [role assignments].

**Rationale:**
- Framework alignment: [How model satisfies governance requirements]
- Risk assessment: [Risk evaluation and control adequacy]
- Data boundary: [Justification for classification limit]
- Training disclosure: [If model trains on data, transparency rationale]

**Alternatives Considered:**
1. [Alternative model]: [Why not chosen]
2. [Different deployment approach]: [Why not chosen]

**Impact Assessment:**
- Affected Stakeholders: [Roles who can use model]
- Operational Changes: [How work changes]
- Resource Requirements: [Costs, training needs]
- Risk Impact: [Risks mitigated by approval, risks introduced]
- Timeline: [Effective date, rollout plan]

**Framework Alignment:**
- NIST AI RMF: [Specific functions/subcategories satisfied]
- [Other frameworks]: [Relevant controls]

**Related Documents:**
- Updated: [ai-model-inventory.md with new entry]
- References: [Risk scenarios addressed by model controls]
```

### 5.2 Risk Acceptance Decision

```markdown
**Decision ID:** DEC-YYYY-NNN  
**Date:** YYYY-MM-DD  
**Decision Maker:** [Authority]  
**Category:** Risk Acceptance  
**Status:** Current

**Context:**
[Risk scenario, why residual risk exists, why standard controls insufficient]

**Decision:**
Accept residual risk of [specific risk] at [likelihood/impact level] for [time period or conditions].

**Rationale:**
- Risk vs. benefit: [Business justification]
- Control limitations: [Why complete mitigation not feasible]
- Compensating measures: [Additional controls to reduce residual risk]
- Monitoring approach: [How risk is tracked]
- Review trigger: [Conditions requiring re-evaluation]

**Alternatives Considered:**
1. [Complete mitigation]: [Why not feasible - cost, time, capability]
2. [Different compensating controls]: [Why not chosen]
3. [Reject/delay activity]: [Why not chosen]

**Impact Assessment:**
- Affected Stakeholders: [Who bears risk]
- Operational Changes: [Compensating controls implemented]
- Resource Requirements: [Monitoring and review costs]
- Risk Impact: [Residual risk level accepted]
- Timeline: [Review date, expiration conditions]

**Framework Alignment:**
- NIST AI RMF: [Risk management function alignment]
- [Risk framework]: [Appetite consistency]

**Related Documents:**
- Updated: [risk-register.md with acceptance documented]
- References: [Risk scenario R-XX, related controls]
```

### 5.3 Policy Change Decision

```markdown
**Decision ID:** DEC-YYYY-NNN  
**Date:** YYYY-MM-DD  
**Decision Maker:** [Authority]  
**Category:** Policy Change  
**Status:** Current

**Context:**
[What gap or issue prompted change, regulatory driver, incident, or improvement]

**Decision:**
[Approve/Reject] [policy/standard name] version [X.Y] with changes to [sections affected].

**Rationale:**
- Gap addressed: [What problem this solves]
- Framework alignment: [How change improves compliance]
- Stakeholder input: [Consultation conducted, concerns addressed]
- Implementation feasibility: [Resource availability, transition plan]

**Alternatives Considered:**
1. [Different policy approach]: [Why not chosen]
2. [Defer change]: [Why now is appropriate]

**Impact Assessment:**
- Affected Stakeholders: [Roles whose workflows change]
- Operational Changes: [Specific process modifications]
- Resource Requirements: [Training, tooling, time to implement]
- Risk Impact: [How change affects risk posture]
- Timeline: [Effective date, transition period, re-acknowledgment if needed]

**Framework Alignment:**
- [Frameworks]: [Requirements now satisfied]

**Related Documents:**
- Updated: [policy-name.md to version X.Y]
- References: [ADR if architectural decision, related standards]
- Version Control: [Git tag, CHANGELOG entry]
```

---

## 6. Audit and Compliance Use

### 6.1 Providing Decision Evidence

[GUIDANCE: How to use decision log during audits or compliance reviews. Make this practical for whoever will be pulling evidence.]

**For Auditors:**
- Provide decision log file(s) for review period
- Highlight decisions related to specific framework requirements
- Show decision → policy change → implementation traceability
- Demonstrate deliberative process and alternative consideration

**For Compliance Certification:**
- Map decisions to framework requirements
- Show risk acceptance process documentation
- Demonstrate stakeholder consultation
- Provide evidence of periodic review

**For Incident Investigation:**
- Trace decisions related to incident pathway
- Show risk acceptance and control choices
- Document what was known at time of decision
- Identify lessons learned for future decisions

### 6.2 Retention

[GUIDANCE: How long to keep decision log entries. Consider regulatory requirements, litigation hold policies, and institutional memory needs.]

**Retention Period:** [Minimum duration - e.g., 7 years minimum, indefinitely preferred]

**Superseded Decisions:** [Retained with status update, never deleted]

**Reversed Decisions:** [Retained with reversal rationale documented]

**Archive Process:** [How old entries are archived while maintaining accessibility]

---

## 7. Related Documents

**Core Governance Framework:**
- [Policy/Standard] (Section X: Decision-Making Authority)
- [Review Board Charter] (Authority and Process)
- [Version Control Appendix] (Change Management)

**Operational Artifacts:**
- AI Model Inventory (model approval decisions)
- Risk Register (risk acceptance decisions)
- CHANGELOG.md (policy version history)

---

**Document Control:**
- Source: [Location]
- Contact: [Governance contact]
- Next Review: [YYYY-MM-DD]
- Version History: See [version control system]

---

## Example Implementation: RadioAstronomy.io Decision Log

[GUIDANCE: Below is a working example showing structured decision documentation with complete context and cross-references. This demonstrates how comprehensive decision logging creates institutional memory and audit-ready evidence.]

### 1. Purpose

This appendix maintains a chronological record of significant AI governance decisions made by RadioAstronomy.io Review Board and CTO. Each entry documents the context, decision, rationale, and operational impact to provide accountability, traceability, and institutional memory.

### 2. Scope and Inclusion Criteria

#### 2.1 What Gets Logged

**Decisions requiring logging:**
- New AI model approvals or rejections
- Policy or standard changes (MINOR/MAJOR versions)
- Risk acceptance decisions above normal appetite
- Framework adoption or interpretation choices
- Data classification boundary changes
- Vendor selection for AI systems
- Control implementation approaches with significant trade-offs
- Incident response decisions affecting governance

**Decisions NOT requiring logging:**
- Routine model usage within approved boundaries
- PATCH version corrections (typos, formatting)
- Administrative updates (contact info, meeting schedules)
- Individual project decisions following established patterns

#### 2.2 Logging Authority

**Authorized to Create Entries:**
- CTO: All decision types
- Security Lead: Model approvals, policy changes, control implementations

**Review and Approval:**
- CTO reviews entries before finalization
- Review Board ratifies entries at quarterly meetings

### 3. Decision Entries

---

#### Decision ID: DEC-2025-001

**Date:** 2025-01-15  
**Decision Maker:** CTO (Review Board ratification 2025-01-26)  
**Category:** Framework Adoption  
**Status:** Current

**Context:**

RadioAstronomy.io operates as AI-native organization with significant AI deployment across all workflows. Need foundational governance framework that:
- Provides structured risk management approach
- Satisfies voluntary high-risk deployer posture
- Aligns with Colorado SB24-205 requirements
- Supports SMB resource constraints
- Enables framework crosswalk validation methodology

Multiple framework options available: NIST AI RMF, ISO 42001, EU AI Act, custom approach. Organization lacks resources for heavy certification processes but needs rigorous governance.

**Decision:**

Adopt NIST AI Risk Management Framework (AI RMF 1.0) as primary governance framework, with CIS Controls v8.1 IG1 as technical control baseline and Colorado SB24-205 as regulatory reference (voluntary compliance).

**Rationale:**

**NIST AI RMF selection:**
- Voluntary framework reduces compliance burden while providing comprehensive structure
- Colorado SB24-205 creates rebuttable presumption of reasonable care for NIST adoption
- Well-documented with extensive implementation guidance and community resources
- Flexible enough for SMB context without sacrificing rigor
- Functions (Govern, Map, Measure, Manage) align with operational workflows

**CIS Controls IG1 selection:**
- Resource-appropriate technical baseline (56 safeguards vs. 153 total)
- Maps well to infrastructure automation capabilities
- Provides concrete implementation guidance missing from pure risk frameworks
- Industry-standard language for technical controls

**Multi-framework approach:**
- Crosswalk methodology prevents single-framework hallucination
- Validates logical control mappings across frameworks
- Creates more robust governance through multiple lenses
- Supports future regulatory expansions without framework replacement

**Alternatives Considered:**

1. **ISO 42001:** More prescriptive AIMS framework with certification pathway. Rejected due to cost (certification fees, consultant requirements) and organizational size (designed for enterprise scale). May reconsider at 10+ employee mark.

2. **EU AI Act:** Not applicable to U.S.-based organization, though high-risk classification approach informed voluntary posture. Monitoring for U.S. federal AI legislation that may adopt similar approach.

3. **Custom Framework:** Considered building organization-specific governance. Rejected due to resource requirements (no governance expertise in-house), lack of external validation, and difficulty demonstrating compliance to stakeholders. Custom approach increases risk of gaps.

4. **Single-Framework Approach:** Considered NIST-only without crosswalk. Rejected due to governance hallucination risk—multiple frameworks provide validation that controls actually map logically to risks.

**Impact Assessment:**

- **Affected Stakeholders:** All personnel (framework defines governance for all AI use)
- **Operational Changes:** 
  - Implement NIST AI RMF functions in policy structure
  - Map all AI systems to framework requirements
  - Establish crosswalk methodology in Appendix C
  - Create framework-aligned documentation (model cards, risk scenarios)
- **Resource Requirements:** 
  - 40 hours to develop initial framework mapping
  - Quarterly review board meetings for framework alignment checks
  - Training materials for personnel on framework approach
- **Risk Impact:** 
  - Mitigates governance gap risk through structured approach
  - Reduces regulatory risk via Colorado SB24-205 alignment
  - Introduces framework interpretation risk (mitigated by crosswalk)
- **Timeline:** Effective immediately (2025-01-15), framework implementation over Q1 2025

**Framework Alignment:**
- **NIST AI RMF 1.0:** Foundation framework—all governance functions aligned to GOVERN, MAP, MEASURE, MANAGE
- **CIS Controls v8.1 IG1:** Technical control baseline satisfying MAP and MANAGE functions
- **Colorado SB24-205:** Regulatory alignment for high-risk deployer transparency and accountability

**Related Documents:**
- Created: AI Governance Policy v1.0 (structure aligned to NIST functions)
- Created: Appendix C - Framework Crosswalk (crosswalk methodology)
- Created: decisions/ADR-001-adopt-nist-ai-rmf.md (detailed architectural decision record)

**Related Decisions:**
- Foundation for all subsequent governance decisions
- Referenced by DEC-2025-002 (data classification), DEC-2025-003 (model inventory approach)

---

#### Decision ID: DEC-2025-002

**Date:** 2025-01-18  
**Decision Maker:** CTO  
**Category:** Data Classification  
**Status:** Current

**Context:**

AI-native organization requires clear data boundaries for AI system usage. Must balance:
- Operational efficiency (AI assists all workflows)
- Data protection requirements
- Regulatory compliance (GDPR, Colorado Privacy Act)
- Model training concerns (vendor data usage)
- Framework requirements (NIST AI RMF MAP-1.5, CIS 3.12)

Existing simple classification (Public/Private) insufficient for nuanced AI deployment decisions. Need classification scheme that:
- Maps to model training policies (opt-out vs. trains on data)
- Guides deployment decisions (local vs. cloud, which models)
- Satisfies framework control requirements
- Remains operationally practical for small team

**Decision:**

Adopt 4-tier data classification scheme:
1. **Public-External:** Publicly available or intended for publication
2. **Public-Internal:** Internal work products, training opt-out required
3. **Protected:** Sensitive analysis, local processing or isolated access only
4. **Secrets:** Credentials and keys, no AI processing

**Rationale:**

**Classification granularity:**
- Four tiers balance protection needs with operational simplicity
- Maps directly to model deployment patterns (Gemini/Public-Internal, Local/Protected, No-AI/Secrets)
- Distinguishes "public because we'll publish" from "internal but not sensitive"
- Separates "sensitive but processable" from "absolutely no AI"

**Training disclosure alignment:**
- Public-External explicitly acknowledges outputs may be published, training acceptable
- Public-Internal requires training opt-out, protects organizational IP
- Protected and Secrets never sent to external models regardless of training policy

**Framework satisfaction:**
- NIST AI RMF MAP-1.5: Data classification enables risk-based model selection
- CIS 3.12: Data protection based on sensitivity level
- Colorado SB24-205: Transparency about data handling based on classification

**Operational feasibility:**
- Four tiers manageable by small team without constant classification debates
- Clear decision boundaries: "Is this going to Zenodo/GitHub? → Public-External"
- Aligns with existing workflow patterns (most work is Public-Internal)

**Alternatives Considered:**

1. **3-Tier (Public/Confidential/Restricted):** Simpler but loses critical distinction between "public work" and "internal IP." Makes training opt-out decisions harder. Rejected due to insufficient granularity for AI deployment patterns.

2. **5-Tier (Adding "Confidential" between Public-Internal and Protected):** More granular but creates "which tier?" debates. Small org doesn't have clear operational distinction between tiers 3 and 4. Rejected due to excessive complexity for team size.

3. **Risk-Based Labels (Low/Medium/High/Critical):** Considered but rejected because risk levels don't map cleanly to deployment decisions. "Medium risk" data might still require training opt-out, creating confusion.

**Impact Assessment:**

- **Affected Stakeholders:** All personnel (everyone classifies data before AI use)
- **Operational Changes:**
  - Add classification headers to documents
  - Update model inventory with data boundaries
  - Modify workflows to include classification step
  - Train personnel on classification decisions
- **Resource Requirements:**
  - 2 hours training on classification scheme
  - Template updates with classification headers
  - Ongoing: ~1 minute per document for classification decision
- **Risk Impact:**
  - Mitigates data exposure risk through clear boundaries
  - Reduces training-on-data risk via Public-Internal distinction
  - Introduces classification error risk (mitigated by conservative defaults)
- **Timeline:** Effective 2025-01-22, 1-week transition for existing documents

**Framework Alignment:**
- **NIST AI RMF MAP-1.5:** Data classification enables context-appropriate model deployment
- **CIS Control 3.12:** Data protection according to sensitivity level
- **Colorado SB24-205 §6-1-1703(3)(c):** Data minimization and privacy-by-design through classification

**Related Documents:**
- Updated: AI Governance Policy v1.0 (Section 4.2: Data Classification)
- Updated: AI Model Inventory (data boundary documentation per model)
- Created: Data Classification Quick Reference (training material)

**Related Decisions:**
- Implements DEC-2025-001 (framework adoption - MAP-1.5 requirement)
- Enables DEC-2025-003 (model inventory with data boundaries)

---

#### Decision ID: DEC-2025-003

**Date:** 2025-01-20  
**Decision Maker:** CTO  
**Category:** Model Approval  
**Status:** Current

**Context:**

Need to approve GLM-4 (via Z.ai interface) for Engineer role. Model characteristics:
- High capability for code generation and review
- Trains on submitted data per vendor terms
- Lower cost than alternatives with training opt-out
- Valuable for OSS contributions and public dataset work

Organization already using Gemini (training opt-out) for internal work. Question: Can we deploy training-accepting model within governance framework?

Key tension: Training on data normally unacceptable for IP protection, but much of organization's output is destined for public repositories (GitHub, Zenodo). Could role-based deployment and data classification enable safe use?

**Decision:**

Approve GLM-4 (Z.ai) for Engineer role with strict data boundary: **Public-External only**. Cannot process Public-Internal, Protected, or Secrets data.

**Rationale:**

**Training transparency:**
- Colorado SB24-205 requires transparency about model training
- Organization's Public-External outputs (GitHub repos, Zenodo datasets) are intentionally public
- If data is destined for public release, training on it during creation is acceptable
- Satisfies transparency requirement by explicit classification and user education

**Use case alignment:**
- OSS contributions: PRs on external repositories we don't control
- Public dataset prototyping: Analysis bound for Zenodo publication
- Community science: Citizen-science projects with public outputs
- These use cases don't involve organizational IP or Protected data

**Role-based access control:**
- Engineer role understands Public-External vs Public-Internal distinction
- Single role reduces enforcement complexity
- Clear accountability: Engineer responsible for classification before use

**Cost-benefit:**
- Significant cost savings on public-facing work
- Accelerates community engagement and OSS contributions
- Risk contained by strict data boundary

**Training opt-out models for internal work:**
- Gemini Pro 2.5 remains primary model for Public-Internal work
- Claude Sonnet 4 for governance and Protected data (CTO-isolated)
- Clear separation prevents accidental IP exposure

**Alternatives Considered:**

1. **Reject GLM-4, use only training-opt-out models:** Most conservative approach. Rejected due to cost (training-opt-out models more expensive) and missed opportunity (public work doesn't require IP protection). Would slow community engagement.

2. **Approve GLM-4 for Public-Internal with training opt-out negotiation:** Attempted but Z.ai doesn't offer training opt-out tier. Could use GLM-4 API with own infrastructure and training agreement, but cost and complexity outweigh benefit given Gemini already fills this role.

3. **Approve for Engineer + Founder roles:** Broader access considered. Rejected due to Founder's need to process Protected data frequently. Limiting to Engineer role ensures Protected data never encounters training-accepting model.

**Impact Assessment:**

- **Affected Stakeholders:** Engineer role only (initially single person, scales to future engineering hires)
- **Operational Changes:**
  - Add GLM-4 to model inventory with Public-External boundary
  - Update training materials with "when to use which model"
  - Modify AUP to include role-based model access
  - Create classification checklist for model selection
- **Resource Requirements:**
  - Z.ai account: ~$20/month for Engineer access
  - 1 hour training on model boundaries and classification
  - Ongoing: classification decision before each use
- **Risk Impact:**
  - Mitigates public work cost through lower-cost model
  - Introduces IP exposure risk (mitigated by strict data boundary and role limit)
  - Satisfies transparency requirement through explicit training disclosure
- **Timeline:** Effective 2025-01-25, Engineer role training completed 2025-01-24

**Framework Alignment:**
- **NIST AI RMF GOVERN-1.5:** Transparency obligation satisfied—user informed model trains on data
- **CIS Control 4.1:** Role-based access control enforces data boundary
- **Colorado SB24-205 §6-1-1704(1)(b)(I):** Training disclosure satisfies transparency requirement for high-risk deployer

**Related Documents:**
- Updated: AI Model Inventory (added GLM-4 entry with restrictions)
- Updated: AI Governance Policy (Section 4.3: Model Selection Criteria)
- Updated: Acceptable Use Policy (role-based model access)
- Created: Model Selection Decision Tree (classification → model flowchart)

**Related Decisions:**
- Implements DEC-2025-002 (data classification enabling boundary enforcement)
- Complements existing Gemini approval (training opt-out for Public-Internal)
- Related to DEC-2025-001 (framework transparency requirements)

---

### 4. Organization and Maintenance

#### 4.1 Log Structure

**Format:** Annual documents (decision-log-YYYY.md)

**Location:** `repo/nist-ai-rmf-cookbook/work-logs/decision-log-YYYY.md`

**File Naming:** `decision-log-YYYY.md` (e.g., decision-log-2025.md)

#### 4.2 Search and Retrieval

**Finding Decisions:**
- **By Date:** Chronological within annual file
- **By Category:** Search for "Category: [Type]"
- **By Decision Maker:** Search for "Decision Maker: [Name]"
- **By Framework:** Search framework names in "Framework Alignment" sections
- **By Status:** Search for "Status: Current/Superseded/Reversed"

**Cross-Reference Tools:**
- Related Decisions section links to prior/subsequent decisions
- Related Documents section links to affected governance artifacts
- Decision IDs enable grep/search across all documents

#### 4.3 Review and Updates

**Status Updates:**
- Original entry remains intact
- Status field updated with date and superseding decision ID
- Brief note added: "Superseded by DEC-YYYY-NNN on YYYY-MM-DD: [reason]"

**Periodic Review:**
- Quarterly: Review all "Current" decisions for continued relevance
- Annual: Identify decisions that should be codified into policy
- Identify patterns suggesting policy gaps
- Update cross-references as documents evolve

### 5. Audit and Compliance Use

#### 5.1 Providing Decision Evidence

**For Auditors:**
- Provide decision log file(s) for review period
- Highlight decisions related to specific framework requirements
- Show decision → policy change → implementation traceability
- Demonstrate deliberative process via alternatives considered

**For Compliance Certification:**
- Map decisions to NIST AI RMF functions
- Show risk acceptance documentation (DEC-YYYY-NNN references)
- Demonstrate stakeholder consultation in decision rationale
- Provide evidence of periodic review

**For Incident Investigation:**
- Trace decisions related to incident pathway
- Show what was known at time of decision
- Document risk acceptance and control trade-offs
- Identify lessons learned for policy updates

#### 5.2 Retention

**Retention Period:** Indefinitely (complete decision history maintained)

**Superseded Decisions:** Retained with status update, never deleted

**Reversed Decisions:** Retained with reversal rationale documented

**Archive Process:** Annual files remain in version control, searchable via git history

### 6. Related Documents

**Core Governance Framework:**
- AI Governance Policy (Section 3: Decision-Making Authority)
- Review Board Charter (Authority and Process)
- Appendix E: Version Control (Change Management)

**Operational Artifacts:**
- AI Model Inventory (model approval decisions)
- Risk Register (risk acceptance decisions)
- work-logs/CHANGELOG.md (policy version history)

**Document Control:**
- Source: `repo/nist-ai-rmf-cookbook/work-logs/decision-log-YYYY.md`
- Contact: ops@radioastronomy.io
- Next Review: Quarterly at Review Board meetings
- Version History: See git history for this appendix
