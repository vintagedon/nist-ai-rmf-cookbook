# AI Risk Assessment & Management Standard Template

Organization: [Your organization name]  
Effective Date: [YYYY-MM-DD]  
Version: [x.x]  
Owner: [Role - e.g., AI Risk Officer, Security Lead, CTO]  
Review Frequency: [Quarterly, Annual, etc.]  
Parent Policy: [e.g., AI Governance Policy]

[GUIDANCE: This standard defines HOW to assess AI risks systematically. It's the operational procedure that turns policy requirements ("assess risks before deployment") into repeatable engineering workflow. The output is typically an AI System Impact Assessment (AISIA) or similar risk documentation artifact.]

---

> RadioAstronomy.io Implementation:
>
> Organization: RadioAstronomy.io  
> Effective Date: 2025-10-26  
> Version: 1.1  
> Owner: AI Risk Officer  
> Review Frequency: Quarterly  
> Parent Policy: AI Governance Policy
>
> ---
>
> Why this depth:
>
> We're not subject to SB-24-205 (not Colorado-based, not making consequential decisions affecting individuals). We follow it voluntarily as part of practicing Responsible AI.
>
> As citizen scientists producing datasets and research that others build on, we operationalize the same rigor we expect from our data work (FAIR principles, reproducibility) into our AI governance. Published datasets with embedded features, research findings, methodologies - these have downstream use. Quality datasets require quality governance.
>
> We chose SB-24-205 as our legal framework reference because it's the only AI law enacted in the US - it represents actual regulatory thinking we can operationalize, not theoretical frameworks. Combined with NIST AI RMF (governance), CIS-RAM (assessment methodology), and CIS Controls v8.1 IG1 (technical baseline), this creates systematic risk assessment that fits our scale and research mission.
>
> Scaling guidance: Your risk assessment depth should match your downstream impact and organizational risk tolerance. We chose comprehensive assessment because our research output influences other work. Smaller scope or lower impact might justify lighter process.

---

## 1. Purpose and Scope

### 1.1 Purpose

[GUIDANCE: Explain what this standard accomplishes operationally. What does "risk assessment" mean in concrete terms? What artifact does it produce? Why does this matter to your organization?]

This standard defines the mandatory, repeatable process for assessing and managing risks associated with AI systems at [Organization]. It operationalizes [your chosen risk framework] through [your chosen methodology], creating auditable evidence of risk-based decision making.

[GUIDANCE: If you've chosen regulatory frameworks or standards to follow, explain the connection here. If not subject to regulation, explain your governance rationale - e.g., industry best practice, stakeholder expectations, downstream impact considerations.]

### 1.2 Scope

This standard applies to:

- [System types - e.g., all AI systems, high-risk systems, production deployments]
- [Development stages - e.g., design phase, before production deployment]
- [Modification triggers - e.g., significant changes, new capabilities, expanded scope]
- [Reassessment frequency - e.g., annual, quarterly for high-risk systems]
- [Specific deployment contexts - e.g., autonomous agents, customer-facing systems]

Out of Scope: [What this standard does NOT apply to - e.g., individual tool usage, approved systems without modifications]

[GUIDANCE: Be specific about boundaries. "All AI systems" is ambiguous - does it include someone using ChatGPT for one-off tasks? Usually not. Typically applies to *systems* - structured deployments with ongoing operational significance.]

### 1.3 Relationship to Other Standards

[GUIDANCE: How does this standard connect to your other governance documents? Map the dependencies clearly so people understand the ecosystem.]

- [Policy Name]: [How it relates - provides mandate, defines roles, establishes risk tolerance]
- [Another Standard]: [How it relates - implements controls identified here, provides technical requirements]
- [Documentation Standard]: [How it relates - documents outputs from this process]

Integration Point: [Describe the workflow - who conducts assessments, who reviews, who implements controls, where artifacts live]

---

> RadioAstronomy.io Scope & Relationships:
>
> ### 1.2 Scope
>
> This standard applies to:
>
> - All AI systems classified as "high-risk" under Colorado SB-24-205 definition
> - New AI system development projects during design phase
> - Significant modifications to existing AI systems (new capabilities, expanded scope, changed data handling, modified risk profile)
> - Regular reassessment of deployed AI systems (annual minimum; high-risk systems reassessed quarterly or upon material changes)
> - AI agents operating autonomously within RadioAstronomy.io infrastructure
>
> Out of Scope: Individual one-off uses of approved AI tools (using Gemini for code suggestions, asking Claude Max to draft documentation). It applies to AI *systems* - structured deployments with ongoing operational significance.
>
> ### 1.3 Relationship to Other Standards
>
> - AI Governance Policy: Provides mandate and authority for risk assessment. Establishes risk tolerance levels that inform risk acceptance decisions. Defines roles (ARO, System Owner) that execute this standard. Establishes four-tier data classification system.
>
> - AI Acceptable Use Policy: Defines day-to-day tool usage rules and data handling requirements. Risk assessments must verify system design complies with AUP constraints (e.g., no Protected data to Gemini or Z.ai, Z.ai only for Public-External astronomy/research code).
>
> - Secure AI Systems Standard: Implements controls identified through risk assessment. The risk assessment process identifies *what* controls are needed; Secure AI Systems Standard specifies *how* to implement them.
>
> - AI Transparency & Disclosure Standard: Documents risk assessment outcomes. The AISIA produced through this process becomes part of the system's transparency documentation, potentially disclosed to stakeholders or regulators.
>
> Integration Point: System Owners conduct risk assessments following this standard. ARO reviews and approves assessments. Security Lead implements identified controls per Secure AI Systems Standard. All artifacts documented per Transparency Standard.
>
> ---
>
> Why these relationships matter: We're a small organization (6 people). Document relationships prevent duplication and gaps. Risk assessment identifies controls → Secure AI Systems implements them. Assessment produces AISIA → Transparency Standard governs disclosure. Policy sets risk tolerance → Assessment evaluates against it. Clear handoffs prevent "I thought someone else was handling that" failures.

---

## 2. Risk Assessment Methodology

[GUIDANCE: Document your chosen approach to risk assessment. Most organizations combine multiple frameworks - one for risk identification (what could go wrong), one for risk scoring (how bad is it), and one for controls (how do we fix it). Explain your integration logic.]

[Organization] uses an integrated approach combining:

[Framework 1 - Risk Identification]: [Purpose and what it provides]

- [Key capability 1]
- [Key capability 2]
- [Key capability 3]

[Framework 2 - Risk Scoring]: [Purpose and methodology]

- [Scoring approach - e.g., qualitative matrix, quantitative calculation]
- [Key components - e.g., likelihood × impact, threat × safeguards]
- [Output - e.g., inherent risk score, residual risk score]

[Framework 3 - Controls]: [Technical safeguards or control baseline]

- [Control organization - e.g., by asset type, by security domain]
- [Implementation guidance provided]
- [How controls map to risk framework]

Why This Integration Matters: [Explain how the frameworks work together to create complete workflow from risk identification to control implementation]

[GUIDANCE: Common framework combinations:

- NIST AI RMF (risk identification) + CIS-RAM (scoring) + CIS Controls (technical baseline)
- ISO 42001 (management system) + ISO 31000 (risk methodology) + ISO 27001 (security controls)
- NIST CSF (functions) + FAIR (quantitative analysis) + NIST SP 800-53 (control catalog)

Choose frameworks that fit your organization's scale, risk tolerance, and existing practices. Don't pick frameworks just because they're popular - pick what you'll actually use.]

---

> RadioAstronomy.io Methodology:
>
> RadioAstronomy.io uses an integrated approach combining:
>
> NIST AI RMF Map Function: Contextual analysis and risk identification
>
> - Establishes system context (purpose, stakeholders, decision role)
> - Identifies foreseeable harms using NIST trustworthiness characteristics
> - Considers legal harms (algorithmic discrimination per Colorado law)
> - Documents intended vs. prohibited uses
>
> CIS Risk Assessment Method (CIS-RAM) for IG1: Structured risk evaluation process
>
> - Quantitative risk scoring (Inherent Risk = Impact × Expectancy)
> - Systematic safeguard evaluation (implementation, operation, reliability, verification)
> - Residual risk calculation accounting for control effectiveness
> - Decision framework (Accept, Mitigate, Transfer, Avoid)
>
> CIS Controls v8.1 Implementation Group 1: Technical safeguards for risk mitigation
>
> - 56 foundational security controls applicable to all organizations
> - Organized by asset type (enterprise, data, devices, accounts)
> - Provides concrete implementation guidance
> - Maps to NIST AI RMF trustworthiness characteristics
>
> Why This Integration Matters: NIST AI RMF provides the "what" (identify AI-specific risks), CIS-RAM provides the "how" (systematic evaluation methodology), and CIS Controls provide the "with what" (concrete technical safeguards). Together they form a complete workflow from risk identification to control implementation.
>
> ---
>
> Why we chose these frameworks:
>
> - NIST AI RMF: Most mature AI-specific risk framework; trustworthiness characteristics directly map to AI failure modes; free and publicly available
> - CIS-RAM: Lightweight methodology designed for small organizations (IG1 = <100 people); produces quantitative scores without requiring specialized risk software; integrates naturally with CIS Controls we already use for security baseline
> - CIS Controls v8.1 IG1: We're a 6-person research cluster - IG1 is explicitly designed for organizations our size; 56 controls vs. 153 total (IG1+IG2+IG3) keeps scope manageable; specific, actionable guidance vs. principle-based frameworks
> - SB-24-205: Only enacted AI law in US; provides concrete "high-risk deployer" duties we can operationalize; voluntary adoption demonstrates governance maturity
>
> Alternative framework combinations:
>
> - ISO-heavy: ISO 42001 (AI management system) + ISO 31000 (risk methodology) + ISO 27001 (security controls) - more comprehensive but requires ISO familiarity and certification path
> - NIST-heavy: NIST AI RMF + NIST CSF (Cybersecurity Framework) + NIST SP 800-53 (federal control catalog) - good for government contractors or large enterprises; heavier than we need
> - FAIR-based: NIST AI RMF + FAIR (quantitative risk analysis) + custom control selection - produces dollar loss estimates; requires actuarial data we don't have
>
> Choose frameworks you'll actually use. We prioritized free, public, small-org-appropriate frameworks over comprehensive enterprise approaches.

---

## 3. Risk Assessment Workflow

[GUIDANCE: Document your step-by-step process. Most risk assessment workflows include: scope definition, risk identification, risk analysis/scoring, control selection, risk decision, and documentation. Number of steps and naming varies by methodology.]

The risk assessment process consists of [N] sequential steps. [Who executes which steps]. The process typically requires [time estimate] for [complexity description].

### 3.1 Step 1: [Step Name]

[GUIDANCE: For each step, document:

- Purpose: What this step accomplishes
- Inputs: What information you need to start
- Activities: What you actually do
- Outputs: What artifacts you produce
- Who: Roles involved
- Tools: Templates, worksheets, or systems used]

Purpose: [What this step accomplishes]

Key Activities:

- [Activity 1]
- [Activity 2]
- [Activity 3]

Documentation Location: [Where outputs are recorded - e.g., assessment template Section X, risk register, etc.]

Output: [What this step produces to feed next step]

---

[Repeat pattern for remaining steps]

[GUIDANCE: You don't need to document every step in equal detail in the template. Show the pattern with 2-3 steps detailed, others can be abbreviated. Point to your full standard as comprehensive example.]

---

> RadioAstronomy.io Workflow (6-Step Process):
>
> The risk assessment process consists of six sequential steps. System Owners execute steps 1-5 with input from technical teams. ARO reviews and approves step 6 (risk decision). The process typically requires 4-8 hours for straightforward systems, longer for complex or novel deployments.
>
> ### 3.1 Step 1: Define Assessment Scope (NIST Map)
>
> Purpose: Establish system context and boundaries before risk analysis
>
> System Context:
>
> - System name and unique identifier (use consistent naming)
> - Intended purpose and primary function
> - Development stage (Design, Testing, Production)
> - Integration points with existing infrastructure
> - Expected lifecycle (Temporary prototype or Permanent operational)
>
> Technical Components:
>
> - AI models used (commercial APIs, local models, hybrid)
> - Data sources and datasets with classification levels
> - Input/output interfaces
> - Decision-making role:
>   - Advisory (provides recommendations, humans decide)
>   - Automated (makes decisions autonomously within defined boundaries)
>   - Human-in-loop (requires human approval before actions)
>
> Data Classification Verification:
>
> - Which data classification tiers will this system process?
> - Verify tool selections comply with data handling policies
> - Ensure no classification violations in system design
>
> Tool Selection Validation:
>
> - Map each AI tool to your Acceptable Use Policy constraints
> - Verify data classification boundaries are respected
> - Document any tool-specific limitations or requirements
>
> Stakeholders and Impact:
>
> - Who uses this system? (roles, not individuals)
> - Who is affected by system outputs?
> - What decisions does the system influence?
> - What happens if the system fails or produces incorrect output?
>
> Documentation Location: [Your assessment template/workbook, Section 1]
>
> Output: Clear understanding of system boundaries, purpose, stakeholder impact, data classifications, and tool selection compliance
>
> ---
>
> Our Step 1 in practice:
>
> We use CIS-RAM for IG1 Workbook Section 1 for documentation. Key elements:
>
> - Naming convention: `proj-[purpose]-[type]-[number]` (e.g., `proj-research-agent-01`)
> - Four-tier data classification: Public-Internal, Public-External, Protected, Secrets
> - Tool validation against AUP:
>   - Gemini: Only Public-Internal or Public-External data
>   - Claude Max: CTO authorization required; if Protected data, must use Kasm isolation
>   - Z.ai: Engineer role only, Public-External research code only (not infrastructure), training on data acceptable for research outputs
>   - Local models: Any data tier including Protected
>
> Why tool validation in Step 1: Catching tool/data mismatches early (design phase) prevents architecture rework later. Example: If system design assumes Gemini can process Protected data, that's wrong - catch it here before building anything.
>
> ### 3.2 Step 2: Identify Foreseeable Harms (SB-24-205 & NIST Map)
>
> Purpose: Systematically brainstorm potential harms using legal and trustworthiness frameworks
>
> Legal Harms (per regulatory framework if applicable):
>
> - Consider algorithmic discrimination risks
> - Identify affected protected characteristics
> - Document potential disparate impact scenarios
> - Consider bias in training data
>
> Trustworthiness Harms (NIST AI RMF Seven Characteristics):
>
> 1. Valid and Reliable: Inaccuracy, inconsistency, drift, lack of validation
> 2. Safe: Physical harm, operational failures, cascading impacts, unsafe autonomy
> 3. Secure and Resilient: Unauthorized access, data breaches, prompt injection, supply chain
> 4. Accountable and Transparent: Opaque decisions, unclear responsibility, inadequate oversight
> 5. Explainable and Interpretable: Black-box behavior, inability to debug
> 6. Privacy-Enhanced: Unauthorized data collection, leakage, re-identification risks
> 7. Fair, with Harmful Biases Managed: Training bias, differential performance, proxy discrimination
>
> Documentation Location: [Assessment template, Section 2]
>
> Output: Comprehensive list of potential harms across legal and trustworthiness dimensions
>
> ---
>
> Our Step 2 in practice:
>
> We use both SB-24-205 algorithmic discrimination framework and NIST's seven trustworthiness characteristics. Review Board members participate to get diverse perspectives.
>
> Why both frameworks: SB-24-205 forces explicit consideration of protected characteristics and legal harms. NIST provides comprehensive technical harm categories. Together they prevent blind spots - legal thinking + technical thinking = better harm identification.
>
> Example harms we've identified:
>
> - Data egress exposing Protected astronomy datasets (Privacy-Enhanced)
> - Z.ai training on our infrastructure code losing competitive IP (Secure and Resilient)
> - Model hallucination affecting research conclusions (Valid and Reliable)
> - Insufficient human oversight of autonomous research agents (Accountable and Transparent)
>
> ### 3.3 Step 3: Map to Risk Scenarios
>
> Purpose: Connect identified harms to organizational risk scenarios with established controls
>
> [Organization] maintains a catalog of common risk scenarios. System Owners map identified harms (Step 2) to relevant scenarios, customizing details to system-specific context.
>
> Output: Mapped risk scenarios with system-specific details
>
> ### 3.4 Step 4: Evaluate Existing Controls
>
> Purpose: Assess what safeguards are already in place and their effectiveness
>
> Output: Control inventory with effectiveness ratings
>
> ### 3.5 Step 5: Calculate Risk Scores
>
> Purpose: Quantify inherent risk (no controls) and residual risk (with controls)
>
> Output: Inherent and residual risk scores using chosen methodology
>
> ### 3.6 Step 6: Make Risk Decision
>
> Purpose: Decide treatment (Accept, Mitigate, Transfer, Avoid) and document rationale
>
> Output: Formal risk acceptance with conditions and review date
>
> ---
>
> Why 6 steps: CIS-RAM methodology defines this workflow. Steps 1-2 are NIST AI RMF "Map" function. Steps 3-6 are CIS-RAM scoring and decision process. Integration creates complete workflow from context to decision.
>
> Time estimates: Simple systems (approved tools, Public-Internal data, straightforward use case) take 4-6 hours. Complex systems (novel deployment, Protected data, autonomous agents, multiple integrations) take 8-12 hours spread across multiple sessions. Review Board involvement adds time but improves quality.
>
> Full workflow documentation: This template shows structure. Our complete standard (914 lines) includes detailed instructions, examples, decision trees, and templates for each step. We maintain comprehensive documentation because our research outputs have downstream impact - lightweight assessment wouldn't match our governance commitment.

---

## 4. Risk Scenario Catalog

[GUIDANCE: Maintain a library of common risk scenarios relevant to your organization's AI use. Each scenario documents: description, typical controls, impact assessment, detection methods. System Owners reference these during assessment (Step 3) rather than reinventing from scratch each time.]

[Organization] maintains the following standard risk scenarios. System Owners select relevant scenarios during assessment and customize to system-specific context.

### [Risk ID]: [Risk Name]

Description: [What could go wrong]

Common Controls: [Typical safeguards for this risk]

Typical Impact Level: [How severe this usually is]

Detection Methods: [How you'd know this occurred]

---

[Repeat pattern for 3-5 key scenarios as examples]

[GUIDANCE: You don't need 20 risk scenarios. Start with 5-10 covering your most common concerns. Grow the catalog as you encounter new patterns. Each scenario becomes reusable template for future assessments.]

---

> RadioAstronomy.io Risk Scenario Catalog (Abbreviated - 12+ Total):
>
> We maintain 12+ risk scenarios based on operational experience and industry patterns. Here are representative examples:
>
> ### R1: Data Egress and Exposure
>
> Description: Sensitive or proprietary data input into AI systems with inadequate confidentiality controls; training data retention by commercial AI vendors; conversation history accessible to unauthorized parties
>
> Common Controls: DLP at endpoint, inside-perimeter AI deployment, no-training contract clauses, network segmentation, data classification training, export approval workflows
>
> Typical Impact Level: Unacceptable (reputational damage, collaboration agreement violations)
>
> Detection Methods: DLP alerts, unusual AI service usage, user self-report, vendor notification
>
> ### R3: Z.ai Training on Infrastructure Code
>
> Description: Engineer uses Z.ai on RadioAstronomy.io infrastructure or proprietary code (Public-Internal tier); our competitive IP (agent systems, orchestration, proprietary tooling) becomes part of Z.ai training dataset; loss of intellectual property control
>
> Common Controls: Four-tier classification training emphasizing domain boundaries (astronomy code vs infrastructure code), Z.ai access restricted to Engineer role, RBAC enforcement, repo tagging, monitoring for Z.ai usage patterns
>
> Typical Impact Level: Significant (competitive disadvantage, IP loss)
>
> Detection Methods: Z.ai usage logs, repo access patterns, peer code review
>
> Why this scenario exists: Z.ai trains on all submitted data. For Public-External astronomy research code (destined for publication anyway), training doesn't matter. For Public-Internal infrastructure code (our competitive IP), training is unacceptable. This risk scenario documents the boundary and controls. Added in v1.1 after we clarified Z.ai usage policy.
>
> ### R6: Model Hallucination and Inaccuracy
>
> Description: AI generates plausible but incorrect information; research conclusions based on hallucinated data or references; code with subtle security vulnerabilities due to AI suggestions; operations decisions based on inaccurate AI analysis
>
> Common Controls: Human review of AI outputs, citation verification for research claims, code review and testing, critical decision validation, documentation of AI limitations
>
> Typical Impact Level: Significant to Unacceptable (depending on context - research integrity vs. operational safety)
>
> Detection Methods: Peer review catches errors, failed tests, stakeholder questions about incorrect outputs
>
> ### R10: Legal and Compliance Gaps
>
> Description: Algorithmic discrimination violating regulatory requirements; privacy violations through inadequate data handling; intellectual property infringement in AI-generated content; regulatory non-compliance due to inadequate documentation
>
> Common Controls: Risk assessment process (this standard), transparency documentation, legal review of high-risk systems, regular compliance audits, framework alignment validation
>
> Typical Impact Level: Unacceptable (regulatory penalties, legal liability, reputational harm)
>
> Detection Methods: Compliance audits, regulatory inquiries, stakeholder complaints, legal review findings
>
> ---
>
> Why we maintain risk scenarios:
>
> Each risk assessment doesn't start from blank page. Scenarios provide starting point: "Here's how data egress typically happens, here are common controls, here's detection approach." System Owner customizes to their specific system, but doesn't reinvent fundamentals.
>
> Scenario evolution: R3 (Z.ai infrastructure code) was added in v1.1 after we refined our Z.ai usage policy. Initially we thought "Z.ai trains on data = never use." Then we realized for Public-External research code (going public anyway), training is irrelevant. But for infrastructure code, it's IP loss. Scenario documents that nuance.
>
> How many scenarios: We maintain 12+ covering data protection, security, model performance, legal compliance, operational resilience. Others include: secrets leakage (R2), data classification confusion (R4), prompt injection (R5), identity drift (R7), supply chain (R8), cost sprawl (R9), operational dependency (R11), insufficient oversight (R12). Catalog grows as we encounter new patterns.

---

## 5. Roles and Responsibilities

[GUIDANCE: Clear ownership prevents "I thought someone else was handling risk assessment" failures. Document who conducts assessment, who reviews, who approves, who implements controls, who maintains documentation.]

| Role | Responsibilities |
|------|------------------|
| [Role 1] | [What they do in risk assessment process] |
| [Role 2] | [Their responsibilities] |
| [Role 3] | [Their responsibilities] |

Decision Authority: [Who has final say on risk acceptance]

Escalation Path: [What happens if roles disagree or assessment is blocked]

---

> RadioAstronomy.io Roles:
>
> | Role | Responsibilities |
> |------|------------------|
> | System Owner | Conducts risk assessment (Steps 1-5); documents system context, identifies harms, maps risk scenarios, evaluates controls, calculates scores; primary author of AISIA |
> | AI Risk Officer (ARO) | Reviews all risk assessments; approves or rejects risk decisions (Step 6); ensures methodology compliance; maintains risk scenario catalog; final authority on risk acceptance |
> | Review Board | Provides input on harm identification (Step 2); diverse perspectives prevent blind spots; participates in complex or novel system assessments |
> | Security Lead | Implements technical controls identified through assessment; advises on control effectiveness; maintains security baseline (CIS Controls IG1) |
> | CTO | Approves high-risk system deployments; resolves escalations; authorizes Protected data processing in Claude Max; reviews quarterly risk portfolio |
>
> Decision Authority: ARO has final say on risk acceptance. CTO approves deployments of high-risk systems. Review Board has advisory input but not veto authority.
>
> Escalation Path: System Owner → ARO (normal path). If ARO rejects assessment, System Owner revises or escalates to CTO. If disagreement on risk tolerance, Review Board convenes for decision.
>
> ---
>
> Why these roles: We're 5 people. Everyone wears multiple hats. ARO role provides accountability - someone owns risk decisions. System Owner (usually the person building the system) has context to conduct assessment. Review Board (3+ people) prevents single-person blind spots on harm identification. Security Lead implements controls - separating decision (ARO) from implementation (Security Lead) creates checks and balances even at small scale.

---

## 6. Documentation Requirements

[GUIDANCE: What artifacts must be produced? Where do they live? How long are they retained? Who can access them? Clear documentation requirements enable audits and demonstrate governance maturity.]

### 6.1 Required Artifacts

For each AI system assessment:

- [Artifact 1 - e.g., completed assessment workbook]
- [Artifact 2 - e.g., risk acceptance memo]
- [Artifact 3 - e.g., control implementation plan]

### 6.2 Storage and Retention

Location: [Where assessment artifacts are stored - e.g., risk register, document management system, git repo]

Retention: [How long to keep - e.g., life of system + X years, regulatory requirement]

Access Control: [Who can view assessments - e.g., System Owner, ARO, Review Board, auditors]

### 6.3 Review and Update

Reassessment Triggers:

- [Trigger 1 - e.g., annual review]
- [Trigger 2 - e.g., material system changes]
- [Trigger 3 - e.g., new threats or vulnerabilities]

Version Control: [How to track assessment updates over time]

---

> RadioAstronomy.io Documentation:
>
> ### 6.1 Required Artifacts
>
> For each AI system assessment:
>
> - CIS-RAM for IG1 Workbook (completed): All 6 steps documented; inherent and residual risk scores calculated; control evaluation; system context
> - AI System Impact Assessment (AISIA): Formatted for potential stakeholder or regulator review; synthesizes workbook into readable narrative; includes risk decision rationale
> - Risk Acceptance Memo: Signed by ARO; documents residual risk acceptance with conditions and review date; stored in risk register
> - Control Implementation Plan: Lists controls to be implemented; ownership assignments; target completion dates; tracks to Secure AI Systems Standard
>
> ### 6.2 Storage and Retention
>
> Location: Git repository (`astronomy-cluster/governance/risk-assessments/[system-name]/`); version controlled; automatically synced across infrastructure
>
> Retention: Life of system + 3 years post-decommissioning (matches collaboration agreement retention requirements)
>
> Access Control: All Review Board members, ARO, CTO have read access. System Owner has write access to their assessments. External auditors granted temporary read access when needed.
>
> ### 6.3 Review and Update
>
> Reassessment Triggers:
>
> - Annual minimum: All deployed AI systems reassessed yearly
> - Quarterly for high-risk: Systems processing Protected data or making automated decisions
> - Material changes: New AI model/version, new data source, expanded scope, modified risk profile, tool permission changes
> - Post-incident: Any security incident or near-miss involving the system
> - Framework updates: When NIST, CIS, or SB-24-205 guidance changes materially
>
> Version Control: Git commits document all assessment updates. Workbook includes revision history table. ARO reviews diffs before approving updates.
>
> ---
>
> Why git for documentation: We're technical organization - everyone knows git. Version control provides audit trail automatically. Syncs across our infrastructure via Obsidian Sync → FS02 → agents01 mount (substrate model). Diffs show exactly what changed between assessments. Works offline. Free.
>
> Why 3-year retention: Collaboration agreements with observatories require 3-year data retention. Risk assessments document how we handled their data, so same retention period makes sense. After system decommissioning + 3 years, assessment archived but not deleted (storage is cheap, historical context is valuable).
>
> Why quarterly for high-risk: Protected data systems and autonomous agents have higher inherent risk. Quarterly reassessment catches drift (new threats, degraded controls, changed context) before it becomes incident. Annual is sufficient for lower-risk systems (Public-Internal data, advisory-only, human-in-loop).

---

## 7. Templates and Tools

[GUIDANCE: Provide or reference templates that support this standard. Don't make people start from blank page.]

Assessment Templates:

- [Template 1 name and location - e.g., Risk Assessment Workbook]
- [Template 2 name and location - e.g., AISIA Document Template]

Reference Materials:

- [Material 1 - e.g., Risk Scenario Catalog]
- [Material 2 - e.g., Control Selection Guide]

Tools:

- [Tool 1 - e.g., risk calculation spreadsheet]
- [Tool 2 - e.g., documentation system]

---

> RadioAstronomy.io Templates and Tools:
>
> Assessment Templates:
>
> - CIS-RAM for IG1 Workbook: Downloaded from CIS website, customized with our four-tier data classification and tool validation sections; includes all 6 steps with instructions
> - AISIA Template: Markdown template in git repo; sections for Executive Summary, System Context, Risk Analysis, Control Plan, Risk Decision, Appendices
> - Risk Acceptance Memo Template: One-page format; includes risk score, acceptance rationale, conditions, signatures, review date
>
> Reference Materials:
>
> - Risk Scenario Catalog: 12+ scenarios in `governance/risk-scenarios/` directory; each scenario is markdown file following standard template
> - NIST AI RMF Trustworthiness Characteristics: Quick reference guide for Step 2 harm identification
> - CIS Controls v8.1 IG1 Mapping: Spreadsheet linking controls to NIST AI RMF characteristics and our risk scenarios
> - Tool Data Classification Matrix: Quick reference showing which tools can process which data tiers per AUP
>
> Tools:
>
> - Git: Version control for all assessment artifacts
> - CIS-RAM Workbook: Excel/Google Sheets for risk scoring calculations
> - Obsidian: Markdown editor for AISIA and memo authoring; syncs to infrastructure automatically
>
> ---
>
> Why CIS-RAM workbook: Free download from CIS, designed for small organizations, produces quantitative scores, integrates with CIS Controls we already use. We customized it with our data classification tiers and AUP tool validation but kept core methodology intact.
>
> Why markdown for artifacts: Human-readable, diff-friendly, works in git, future-proof (plain text), no proprietary format lock-in, integrates with our documentation toolchain (Obsidian → git → substrate).

---

## Revision History

| Version | Date | Changes | Author |
|---------|------|---------|--------|
| [x.x] | [YYYY-MM-DD] | [Description of changes] | [Name/Role] |

[GUIDANCE: Track standard evolution over time. When you update methodology, add risk scenarios, or change requirements, document it here.]

---

> RadioAstronomy.io Revision History:
>
> | Version | Date | Changes | Author |
> |---------|------|---------|--------|
> | 1.0 | 2025-09-15 | Initial standard based on NIST AI RMF + CIS-RAM integration | AI Risk Officer |
> | 1.1 | 2025-10-26 | Added R3 (Z.ai infrastructure code risk); clarified tool validation in Step 1; updated data classification verification process | AI Risk Officer + Review Board |
>
> ---
>
> Why version control the standard: Methodology evolves through operational experience. v1.1 added R3 scenario after we refined Z.ai usage policy - that's a material change affecting future assessments. Version tracking shows governance maturity (continuous improvement) and provides audit trail for "why did the process change?"
>
> When to update standard: When methodology changes (new frameworks adopted), when risk scenarios added/modified, when roles change, when tools/templates change, when regulatory requirements change, when post-incident review identifies process gaps. ARO reviews quarterly whether updates needed; Review Board approves material changes.

---

## Appendix A: Quick Reference Decision Trees

[GUIDANCE: Optional but helpful - provide decision trees or flowcharts that help System Owners navigate common questions. Examples: "Do I need to conduct full assessment?", "Which risk scenarios apply to my system?", "What's my reassessment frequency?"]

[Include decision tree or reference separate document]

---

> RadioAstronomy.io Quick Reference:
>
> ### Do I need full risk assessment?
>
> Question 1: Is this an AI *system* or one-off tool use?
>
> - System (structured deployment, ongoing operational significance) → Continue
> - One-off use (using Gemini for code suggestion, Claude for document draft) → No assessment, follow AUP
>
> Question 2: Is this new development or modification to existing?
>
> - New development → Full assessment required (all 6 steps)
> - Modification → Material change? (new model, new data, expanded scope, changed risk) → Full reassessment. Minor change? (UI tweak, performance tuning, no new risks) → Update existing assessment documentation
>
> Question 3: Is this design phase, testing, or production?
>
> - Design phase → Conduct assessment before building
> - Testing → Assessment completed in design, verify controls implemented
> - Production deployment → Assessment and controls required before deployment
>
> ### What's my reassessment frequency?
>
> High-risk systems (Protected data, automated decisions, autonomous agents) → Quarterly
>
> Standard systems (Public-Internal data, advisory role, human-in-loop) → Annual
>
> Material changes (any system) → Immediate reassessment regardless of last review date
>
> ### Which risk scenarios likely apply?
>
> All systems: R6 (hallucination), R10 (compliance gaps), R12 (insufficient oversight)
>
> If using commercial AI services: R1 (data egress), R2 (secrets leakage), R9 (cost sprawl)
>
> If using Z.ai: R3 (infrastructure code training), R4 (classification confusion)
>
> If processing Protected data: R1 (data egress - critical), R7 (access drift)
>
> If autonomous agents: R5 (prompt injection), R7 (access drift), R11 (operational dependency)
>
> ---
>
> Why quick reference: 4-8 hour assessment process, but "do I even need assessment?" should take 2 minutes to answer. Decision trees prevent analysis paralysis and help new System Owners navigate requirements without reading full 914-line standard.
