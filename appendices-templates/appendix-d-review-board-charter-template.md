# AI Review Board Charter Template

[GUIDANCE: This charter defines your governance decision-making structure. It answers: WHO makes AI deployment decisions, WHEN they review, WHAT triggers escalation, and HOW decisions get made. This is operational governance—not aspirational committee structure.]

## Purpose

[GUIDANCE: Explain what this board DOES operationally. This should be your decision-making mechanism for AI deployment, risk acceptance, and policy changes. Be explicit about whether this is advisory or decision-making authority.]

## Authority and Composition

[GUIDANCE: Define decision-making authority clearly. Options include: (1) Single decision-maker with advisors, (2) Consensus committee, (3) Voting board. Your choice should match organizational reality, not governance theater.]

### Decision Authority

[GUIDANCE: Who has final say? Be explicit. Example: "CTO has sole decision authority" or "Board decisions require majority vote" or "CEO approves on Board recommendation".]

### Board Composition

[GUIDANCE: List roles and their function (decision-maker vs. advisor vs. subject matter expert). Keep lean—governance bloat kills agility.]

- [Role 1]: [Decision-making authority or advisory function]
- [Role 2]: [Subject matter expertise area]
- [Role 3]: [Stakeholder representation]

### External Advisors (Optional)

[GUIDANCE: External expertise can prevent groupthink. Define when/how external advisors engage—don't make them permanent overhead.]

## Meeting Cadence

[GUIDANCE: Balance regular rhythm with event responsiveness. Too frequent = overhead, too rare = missed risks.]

### Regular Reviews

Frequency: [Quarterly, Semi-annual, Annual]

Standard Agenda:

1. [Review type 1 - e.g., Risk scenario updates]
2. [Review type 2 - e.g., Model inventory changes]
3. [Review type 3 - e.g., Policy effectiveness]
4. [Review type 4 - e.g., Framework alignment check]

### Triggered Reviews

[GUIDANCE: Define events that force immediate review. These are your escalation triggers—be specific enough to be actionable.]

Escalation Triggers:

- [Trigger 1 - e.g., High-impact incident or near-miss]
- [Trigger 2 - e.g., New high-risk model deployment]
- [Trigger 3 - e.g., Regulatory change affecting AI operations]
- [Trigger 4 - e.g., Material change to risk profile]
- [Trigger 5 - e.g., Framework requirement violation]

Response Time: [Maximum time from trigger to review - e.g., 5 business days]

## Review Methodology

[GUIDANCE: How does the board actually make decisions? Define the process—this prevents ad-hoc governance and ensures consistency.]

### Multi-Framework Assessment

Frameworks Applied:

- [Framework 1 - e.g., NIST AI RMF 1.0]
- [Framework 2 - e.g., CIS Controls v8.1]
- [Framework 3 - e.g., Regulatory requirements]

[GUIDANCE: Minimum 2-3 frameworks for crosswalk validation. Multi-framework lens prevents governance hallucination—no single framework captures all risk dimensions.]

### Decision Process

1. Issue Presentation: [Who presents, what evidence required]
2. Framework Analysis: [Apply crosswalk methodology from Appendix C]
3. Risk Assessment: [Use organizational risk scenarios and appetite]
4. Control Evaluation: [Review existing controls, identify gaps]
5. Decision: [Accept, reject, conditional approval, defer for more info]
6. Documentation: [Required artifacts and communication]

[GUIDANCE: Make this operational, not theoretical. If you say "framework analysis," define what that looks like in practice.]

## Decision Outputs

[GUIDANCE: Every review should produce actionable artifacts. Define what gets documented and who needs to know.]

### Required Documentation

- Decision Record: [Format, location, retention]
- Risk Updates: [Changes to risk scenarios or appetite]
- Policy Changes: [Modifications to governance documents]
- Action Items: [Who, what, when for implementation]

### Communication

[GUIDANCE: Who needs to know about decisions? Don't create governance opacity.]

- Internal: [How decisions are communicated to affected teams]
- Stakeholders: [When/how external stakeholders are informed]
- Audit Trail: [How decisions are tracked for compliance]

## Risk Appetite Boundaries

[GUIDANCE: Define what the board can accept vs. what requires escalation above the board. This is your decision authority boundary.]

Board Can Approve:

- [Risk level 1 - e.g., Low to medium risk deployments with standard controls]
- [Decision type 1 - e.g., Model changes within approved inventory patterns]
- [Scope 1 - e.g., Changes that don't affect external stakeholders]

Requires Escalation:

- [Risk level 2 - e.g., High-impact public-facing deployments]
- [Decision type 2 - e.g., Acceptance of residual risk above appetite]
- [Scope 2 - e.g., Material changes to organizational risk posture]

## Review Scope

[GUIDANCE: What falls under board review vs. operational decisions? Clear scope prevents governance bottlenecks.]

In Scope:

- [Item 1 - e.g., New AI model approvals]
- [Item 2 - e.g., High-risk deployment decisions]
- [Item 3 - e.g., Policy and standard changes]
- [Item 4 - e.g., Risk scenario updates and appetite changes]
- [Item 5 - e.g., Framework alignment verification]

Out of Scope (Operational):

- [Item 1 - e.g., Routine model usage within approved boundaries]
- [Item 2 - e.g., Day-to-day technical implementation]
- [Item 3 - e.g., Individual project decisions within policy]

## Charter Review and Updates

[GUIDANCE: Governance structures need maintenance. Define when/how this charter gets updated.]

Review Frequency: [Annual, Bi-annual, or triggered by organizational change]

Update Process: [Who can propose changes, who approves them]

---

## Example Implementation: RadioAstronomy.io AI Review Board

[GUIDANCE: Below is a working example showing lightweight governance for a small org. This demonstrates how a single decision-maker with structured process beats committee bloat while maintaining rigor.]

### Purpose

The RadioAstronomy.io AI Review Board ensures responsible AI deployment through structured risk assessment and multi-framework compliance validation. This board provides decision-making authority for AI model approvals, policy changes, and risk acceptance within defined boundaries.

### Authority and Composition

#### Decision Authority

CTO has sole decision-making authority for all AI governance decisions within this charter's scope. Board structure supports informed decision-making, not consensus requirement.

#### Board Composition

- CTO (Chair/Decision Authority): Final approval on all AI deployments, policy changes, risk acceptance decisions
- Technical Advisors (As Needed): Domain expertise for specific deployment contexts (astronomy, infrastructure, data science)
- Compliance SME (As Needed): Framework interpretation, regulatory requirement analysis

Rationale: Single-person organization operating as voluntary high-risk deployer. Decision authority matches organizational reality. Advisory structure maintains rigor without committee overhead.

#### External Advisors

- AI Ethics Researcher: Consulted for high-impact public-facing deployments
- Security Architect: Consulted for Protected data processing or novel attack surface
- Legal Counsel: Consulted for regulatory interpretation or material risk acceptance

Engagement Model: On-demand consultation for specific decisions, not standing committee membership.

### Meeting Cadence

#### Regular Reviews

Frequency: Quarterly

Standard Agenda:

1. Risk Scenario Updates: Review organizational risk library (R01-R10+) for material changes
2. Model Inventory Changes: Assess new models pending approval, retired models, vendor policy changes
3. Policy Effectiveness: Review AUP violations, near-misses, control effectiveness metrics
4. Framework Alignment: Verify continued satisfaction of NIST AI RMF, CIS v8.1, Colorado SB24-205
5. Risk Appetite: Confirm current risk boundaries remain appropriate for organizational context

#### Triggered Reviews

Escalation Triggers:

- Incident Response: Any AI-related incident with impact to external stakeholders or data breach
- High-Risk Deployment: New model processing Protected data or affecting >1000 external users
- Regulatory Change: Material updates to Colorado SB24-205, NIST AI RMF, or applicable frameworks
- Risk Boundary Violation: Attempted use of AI outside approved data classification or use case
- Framework Gap: Identified requirement from crosswalk analysis not satisfied by current controls

Response Time: 5 business days from trigger to review completion (or documented decision to defer with justification)

### Review Methodology

#### Multi-Framework Assessment

All decisions assessed against:

- NIST AI RMF 1.0: Risk management functions (Govern, Map, Measure, Manage)
- CIS Controls v8.1 IG1: Technical control baseline
- Colorado SB24-205: High-risk AI deployment requirements (voluntary compliance)

Crosswalk Methodology: See Appendix C - Framework Crosswalk. Multi-framework validation prevents single-framework hallucination and ensures logical control mappings.

#### Decision Process

1. Issue Presentation:
   - New model request: Vendor, capabilities, proposed use cases, data classification boundary
   - Policy change: Gap identified, proposed modification, affected stakeholders
   - Risk decision: Scenario description, likelihood/impact, existing controls, residual risk

2. Framework Analysis:
   - Apply Appendix C crosswalk to identify all relevant framework requirements
   - Document how proposed decision satisfies (or fails to satisfy) each requirement
   - Identify control gaps and compensating measures

3. Risk Assessment:
   - Map to organizational risk scenarios (R01-R10+)
   - Evaluate against defined risk appetite boundaries
   - Consider likelihood, impact, and control effectiveness

4. Control Evaluation:
   - Review existing technical and administrative controls
   - Assess control gaps and determine if acceptable with compensating measures
   - Define monitoring and validation requirements

5. Decision:
   - Approved: Deploy/implement as proposed
   - Conditional Approval: Deploy with additional controls or monitoring
   - Rejected: Fails risk appetite or framework requirements
   - Deferred: Insufficient information, request additional analysis

6. Documentation:
   - Decision recorded in `repo/nist-ai-rmf-cookbook/work-logs/review-board-decisions-YYYY.md`
   - Risk scenarios updated if new patterns identified
   - Model inventory updated with approval details
   - Communication to affected stakeholders via staging notification

### Decision Outputs

#### Required Documentation

- Decision Record: Markdown file in work-logs with date, issue, analysis, decision, rationale
- Risk Updates: Changes to risk scenario library if new risks identified or ratings change
- Policy Changes: Updates to governance documents (policies, standards, AUP) with version control
- Action Items: Implementation checklist with responsible party and completion date

Location: `D:\development-repositories\nist-ai-rmf-cookbook\repo\nist-ai-rmf-cookbook\work-logs\`

#### Communication

- Internal: Staging notification to vault (read by all agents for cross-project visibility)
- Stakeholders: Direct communication for decisions affecting external users (via published transparency documentation)
- Audit Trail: Git history + decision record provides complete audit trail for framework compliance verification

### Risk Appetite Boundaries

#### Board Can Approve

- Low-Medium Risk Deployments: Standard use cases with approved models within data classification boundaries
- Model Inventory Updates: New models meeting framework requirements with standard control patterns
- Policy Refinements: Changes that clarify existing intent without expanding risk scope
- Operational Decisions: Technical implementation within approved governance boundaries

#### Requires External Consultation

- High-Impact Public Deployments: AI affecting >10,000 external users or published research with broad societal implications
- Novel Risk Scenarios: New attack surfaces or risk patterns not covered by existing library
- Material Risk Acceptance: Residual risk above defined appetite requiring compensating controls and monitoring
- Framework Interpretation: Ambiguous regulatory requirements or conflicting framework guidance

Escalation Path: CTO engages external advisors (ethics researcher, security architect, legal counsel) for consultation before final decision.

### Review Scope

#### In Scope

- New AI model approvals and additions to inventory
- High-risk deployment decisions (Protected data, external stakeholder impact)
- Policy, standard, and AUP changes
- Risk scenario updates and risk appetite modifications
- Framework compliance verification and gap remediation
- Incident response and corrective action for AI-related events

#### Out of Scope (Operational Decisions)

- Routine usage of approved models within defined boundaries
- Day-to-day technical implementation of approved controls
- Individual project decisions following established policies
- Model selection within approved inventory for standard use cases
- Administrative updates to documentation (typos, formatting, clarifications)

Principle: Governance provides guardrails, not bottlenecks. Operational teams execute within approved boundaries without per-decision review.

### Charter Review and Updates

Review Frequency: Annual review as part of Q4 quarterly board meeting, or triggered by:

- Material organizational change (new roles, significant growth)
- Framework updates requiring governance structure changes
- Identified gaps in decision-making process effectiveness

Update Process:

- CTO proposes charter changes based on operational experience
- External advisor review for material changes to authority or scope
- Version-controlled update in repository with rationale documentation
- Communication via staging notification for cross-project visibility

Current Version: 1.0 (2025-01-26)
Next Scheduled Review: 2025-10-26
