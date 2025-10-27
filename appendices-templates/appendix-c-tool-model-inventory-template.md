# AI Model/Tool Inventory Template

[GUIDANCE: This inventory is your operational enforcement mechanism for AI governance. It answers: WHO can use WHAT model, with WHICH data, and WHY that satisfies your compliance requirements. This is not documentation—it's access control policy expressed as a registry.]

## Purpose

[GUIDANCE: Explain what this inventory DOES operationally. How do people use it day-to-day? This should be your decision-making interface when someone asks "Can I use [model] for [task]?"]

Framework Alignment: All approved models have been assessed against:

- [Framework 1 - e.g., NIST AI RMF 1.0]
- [Framework 2 - e.g., CIS Controls v8.1]
- [Framework 3 - e.g., Colorado SB24-205 or ISO 42001]

[GUIDANCE: Minimum 2-3 frameworks for crosswalk validation. Include one risk framework (NIST AI RMF, ISO 42001), one technical control baseline (CIS, NIST CSF), and regulatory requirements if applicable. This multi-framework approach prevents governance hallucination.]

## Role-Based Model Stacks

[GUIDANCE: Organize by organizational role, not vendor. This prevents tool sprawl and makes enforcement obvious. Each role should have clear model assignments based on data access and use case patterns.]

### Role: [Role Name]

Assigned Models:

- [Model 1]: [Primary use case]
- [Model 2]: [Specialized use case]

Data Access Boundary: [Highest classification level this role can process]

Rationale: [Why this model mix for this role - connects to workflow and data patterns]

[Repeat for each organizational role...]

## Approved Models (Active Use)

[GUIDANCE: Each entry should answer: WHO uses it, WHAT FOR, with WHAT data, and HOW does it satisfy governance requirements. The "Training Disclosure" field is critical for transparency requirements—users must know if their data trains the model.]

### [Model Name]

Model Identifier: [vendor-model-version]
Role Assignment: [Which organizational roles can access]
Access Method: [API, web interface, CLI, local deployment, etc.]

Use Cases:

- [Specific operational use case 1]
- [Specific operational use case 2]

[GUIDANCE: Use cases should be specific enough to guide decisions but broad enough to avoid constant updates. Focus on data patterns and consequence levels, not individual tasks.]

Data Classification Boundary: [Highest sensitivity level allowed]

[GUIDANCE: Be explicit about what CAN'T be used with this model. Example: "Public-Internal and below. CANNOT process Protected or Secrets data." This is your enforcement boundary.]

Training Disclosure: [Yes - trains on submitted data | No - training opt-out | N/A - local deployment]

[GUIDANCE: Critical for transparency requirements. Users must know if their work will train the model. This drives data boundary decisions.]

Governance Alignment:

- [Framework 1]: [How this model's deployment satisfies specific framework requirements]
- [Framework 2]: [Technical controls or principles this implementation satisfies]
- [Framework 3]: [Regulatory or ethical requirements this addresses]

[GUIDANCE: Don't just reference frameworks—explain the operational link. Example: "CIS 4.1 (Secure Configuration) - Enterprise SSO, MFA, and training opt-out enforced via Workspace admin."]

Restrictions:
[GUIDANCE: Explicit cannot statements. What use cases, data types, or workflows are prohibited with this model?]

[Repeat pattern for each approved model...]

## Pending Review

[GUIDANCE: Models that are accessible but not yet validated. This section prevents shadow AI while maintaining organizational agility. Include model name, who requested, and review status.]

## Decision Tree

[GUIDANCE: Provide a simple decision framework that maps user context to approved model. Should be answerable without deep technical knowledge. Typically 3-4 dimensions that cover your primary risk factors.]

Question 1: What data classification are you working with?

- Secrets → [No AI models approved]
- Protected → [Local models or restricted access only]
- Public-Internal → [Enterprise models with training opt-out]
- Public-External → [Models that train on data acceptable]

Question 2: What is your organizational role?

- [Role 1] → [Model set 1]
- [Role 2] → [Model set 2]

Question 3: Is this autonomous/automated operation?

- Yes → [Automation-specific models with service account constraints]
- No → [Interactive models]

Question 4: What is the consequence level of the output?

- Governance/regulatory → [Quality-gated model path]
- Operational/internal → [Standard model path]
- Public-facing/impactful → [Review-required model path]

[GUIDANCE: Adjust dimensions to match your risk profile. The goal is a flowchart someone can follow without asking permission every time.]

## Validation Methodology

[GUIDANCE: Reference your validation process for new models. If using multi-framework crosswalk (Appendix C), describe how you prevent framework hallucination and ensure logical control mappings. Include who approves, what evidence is required, and how often you review.]

---

## Example Implementation: RadioAstronomy.io

[GUIDANCE: Below is a working example showing how this template maps to operational reality. Use your actual inventory as proof-of-concept, trimmed for brevity while preserving key contrasts that demonstrate the template's power.]

### Role-Based Model Stacks

#### Role: Founder/CTO

Assigned Models:

- Gemini Pro 2.5: Day-to-day operations, Workspace integration
- Claude Sonnet 4: Governance artifacts, complex reasoning
- Local models: Protected data processing

Data Access Boundary: All classifications (Restricted maximum, never Secrets)
Rationale: Strategic decision-making requires full data access with appropriate model selection based on sensitivity and consequence.

#### Role: Engineer

Assigned Models:

- Gemini Pro 2.5: Primary development, internal code
- GLM-4 (Z.ai): Public-External code only
- Local models: Protected experiments

Data Access Boundary: Public-Internal and below (Protected via local only)
Rationale: Separates public OSS contributions (where training is acceptable) from internal IP (where it's not).

#### Role: Operations Automation

Assigned Models:

- Gemini CLI: Scheduled operations, report generation

Data Access Boundary: Public-Internal and below
Rationale: Service account with RBAC, audit logging, enterprise identity—automation that satisfies CIS IG1.

### Approved Models

#### Gemini Pro 2.5

Model Identifier: google-gemini-pro-2.5
Role Assignment: All roles (Founder, Engineer, Operations Automation)
Access Method: Google Workspace (Docs, Drive, Gmail, Meet), AI Studio, Gemini CLI

Use Cases:

- Day-to-day chat, drafting, research, and analysis
- Workspace-native tasks (summaries, meeting notes, document linting, inbox triage)
- Code assistance for internal work (Docs/Sheets/Colab/Drive context)
- Scheduled research briefs and operations reports
- Repository hygiene, document linting, evidence packaging

Data Classification Boundary: Restricted and below. CANNOT process Secrets (credentials, API keys, passwords).

Training Disclosure: No - Training opt-out enforced via Workspace enterprise settings.

Governance Alignment:

- NIST AI RMF 1.0 GOVERN-1.3: Enterprise SSO, MFA, and centralized admin provide organizational oversight and accountability.
- CIS Controls v8.1 IG1: Satisfies 4.1 (Secure Configuration), 5.1 (Account Management), 6.2 (Audit Log Management), 8.2 (Audit Logging).
- Colorado SB24-205 §6-1-1703(2)(a): Training opt-out protects organizational data from model training, satisfies transparency requirement.

Restrictions:

- Cannot be used for credential storage or management
- Cannot process encryption keys or security secrets
- Gemini CLI requires service account with scoped RBAC (least privilege)

---

#### GLM-4 (Z.ai)

Model Identifier: zhipuai-glm-4-plus
Role Assignment: Engineer role ONLY
Access Method: Z.ai web interface, API

Use Cases:

- Review PRs on external repositories we don't control
- Rapid prototyping on public datasets bound for publication
- Generate tests and scaffolds for upstream OSS contributions
- Citizen-science coding on community projects

Data Classification Boundary: Public-External ONLY. CANNOT process Public-Internal, Protected, or Secrets data.

Training Disclosure: Yes - Trains on submitted data per vendor terms.

Governance Alignment:

- NIST AI RMF 1.0 GOVERN-1.5: Explicit training disclosure satisfies transparency requirement. Acceptable for Public-External use cases where outputs are published (Zenodo, GitHub).
- CIS Controls v8.1 IG1: Role-based access control (Engineer role) enforces data boundary. User training on acceptable use enforced via AUP.
- Colorado SB24-205 §6-1-1704(1)(b)(I): Transparency obligation satisfied—users informed that data trains model, acceptable for public science outputs.

Restrictions:

- CANNOT access internal repositories or Public-Internal code
- CANNOT process RadioAstronomy.io intellectual property
- CANNOT be used for Protected data experiments or sensitive analysis
- Engineer role responsible for ensuring Public-External classification before use

---

#### Llama-3-7B (Local)

Model Identifier: meta-llama-3-7b-instruct
Role Assignment: Founder, Engineer (via local deployment)
Access Method: Local deployment on A4000 GPU, air-gapped

Use Cases:

- Sensitive linting and refactoring on configuration files
- Protected data experiments and analysis
- Air-gapped workflows where data cannot leave enclave
- Fallback during vendor outages or policy shifts

Data Classification Boundary: Protected and below. CANNOT process Secrets.

Training Disclosure: N/A - Local deployment, no data transmission.

Governance Alignment:

- NIST AI RMF 1.0 MAP-1.5: Architectural air-gap provides technical control for Protected data processing without vendor exposure.
- CIS Controls v8.1 IG1: Physical and network isolation (12.8 Network Infrastructure Management) satisfies Protected data requirements.
- Colorado SB24-205 §6-1-1703(3)(c): Local processing eliminates third-party data sharing risk, satisfies privacy-by-design principle.

Restrictions:

- Cannot process Secrets (credentials, keys, passwords)
- Deployment must maintain network isolation for Protected data workflows
- Access requires local authentication, no remote endpoints

---

### Decision Tree (RadioAstronomy.io)

Question 1: What data classification are you working with?

- Secrets → No AI models approved
- Protected → Llama-3-7B (local) or Claude Sonnet 4 (CTO isolated workspace)
- Public-Internal → Gemini Pro 2.5 (training opt-out)
- Public-External → GLM-4 via Z.ai (Engineer role), training acceptable

Question 2: What is your organizational role?

- Founder/CTO → Full model access with appropriate data boundaries
- Engineer → Gemini (Public-Internal), GLM-4 (Public-External), Local (Protected)
- Automation → Gemini CLI with service account RBAC

Question 3: Is this autonomous/automated operation?

- Yes → Gemini CLI with enterprise logging, service account, least privilege
- No → Interactive models (Gemini, Claude, Z.ai, Local)

Question 4: What is the consequence level of the output?

- Governance/regulatory → Claude Sonnet 4 (CTO quality gate)
- Operational/internal → Gemini Pro 2.5
- Public-facing/impactful → Review path through CTO before publication

---

### Validation Methodology (RadioAstronomy.io)

New models undergo multi-framework assessment before approval:

1. Framework Crosswalk Review - Map model capabilities and constraints to NIST AI RMF, CIS v8.1, and Colorado SB24-205 requirements (see Appendix C)
2. Data Boundary Testing - Verify technical and policy controls enforce classification limits
3. Role Assignment - Determine which organizational roles require access based on workflow analysis
4. Training Disclosure - Explicit determination and user communication if model trains on data
5. Risk Scenario Mapping - Link model to relevant risk scenarios from organizational risk library
6. CTO Approval - Final validation by system owner before production deployment

Review Cadence: Quarterly review of all approved models, triggered review on vendor policy changes or incident reports.
