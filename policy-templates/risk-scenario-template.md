# Risk Scenario Template

Risk ID: [RXX - sequential numbering]  
Risk Slug: [kebab-case-name]  
System Context: [Which systems/environments does this risk apply to?]  
Category: [e.g., Data Protection, Security, Model Performance, Compliance]  
Data Classes Involved: [List relevant data classifications]  
Consequential Decision: [Yes/No - Does this involve high-stakes decisions affecting people?]  
Last Updated: [YYYY-MM-DD]

Re-Assessment Triggers: [List events that should trigger review - e.g., model change, new data source, incident, annual review]

[GUIDANCE: The header provides quick reference metadata. Risk ID should be sequential and persistent (don't renumber if you delete risks). System Context bounds the scope - be specific about which environments or systems this applies to. Consequential Decision helps you identify high-risk systems under regulatory frameworks.]

---

> RadioAstronomy.io Example - R01: Data Egress & Exposure:
>
> Risk ID: R1  
> Risk Slug: data-egress-exposure  
> System Context: All AI systems processing Protected data within RadioAstronomy.io secure research enclave  
> Category: Data Protection  
> Data Classes Involved: Protected (DESI spectroscopy datasets, collaboration agreements, internal research)  
> Consequential Decision: No - Internal research operations  
> Last Updated: 2025-10-24
>
> Re-Assessment Triggers: Model/version change | New data source | Tool permission change | Security incident | Annual review
>
> ---
>
> Why this structure: Risk ID is persistent - R1 stays R1 even if we add risks before it later. System Context makes scope crystal clear - this isn't about all AI systems, just those touching Protected data in our secure enclave. Consequential Decision tracks SB-24-205 applicability (we're not making consequential decisions, just doing research, so "No"). Re-Assessment Triggers prevent this from going stale - specific events force review rather than just calendar dates.

---

## 1. Threat Description

### What Could Go Wrong?

[GUIDANCE: Describe the threat in plain language. What's the failure mode? Why does this matter to your organization? Make it concrete enough that non-technical stakeholders understand the business impact, not just the technical mechanism.]

### Attack Vector / Failure Mode

How it happens:

1. [Step-by-step description of how the risk manifests]
2. [Include both technical and human factors]
3. [Be specific about your environment]

Attacker profile:

- Primary: [Most likely threat actor or failure mode]
- Secondary: [Alternative threat scenario]
- Tertiary: [Edge case but possible scenario]

[GUIDANCE: For technical risks, "attacker" might be "system misconfiguration" or "model behavior." Don't force adversarial framing if the risk is operational/technical failure.]

Prerequisites:

- [What conditions must exist for this risk to manifest?]
- [Access, permissions, configurations, etc.]

### Real-World Examples

[GUIDANCE: Optional but recommended - include 2-3 examples of this risk occurring elsewhere or near-misses in your organization. This grounds the risk in reality and helps with training/awareness. If you can't find external examples, that might indicate the risk is theoretical rather than practical.]

- [Organization/incident name]: [Brief description of what happened and impact]
- [Another example]: [What happened]
- [Your organization near-miss if applicable]: [What almost happened and how you caught it]

---

> RadioAstronomy.io R01 Threat Description:
>
> ### What Could Go Wrong?
>
> Protected data (DESI spectroscopy datasets, internal research findings under embargo, collaboration agreements with confidentiality clauses) could be exposed outside RadioAstronomy.io security controls through AI system interactions. This occurs when users inadvertently paste Protected content into AI service interfaces that lack adequate contractual protections, or when AI agents operating with excessive permissions extract and transmit data beyond approved boundaries.
>
> The threat is particularly insidious because AI systems are designed to be helpful—they encourage detailed context in prompts, making it natural for users to include "just enough background" that crosses into Protected territory.
>
> ### Attack Vector / Failure Mode
>
> How it happens:
>
> 1. User copies Protected data from internal systems (PostgreSQL query results, embargoed research notes)
> 2. User pastes content into AI service for assistance (summarization, analysis, code generation)
> 3. AI service ingests data, potentially using it for model training or storing in vendor logs beyond our control
> 4. Data now exists outside security perimeter
>
> Attacker profile:
>
> - Primary: Internal user error - well-intentioned researchers seeking productivity, unaware of classification boundaries
> - Secondary: Compromised AI service accounts
> - Tertiary: Malicious insider
>
> Prerequisites:
>
> - User has authenticated access to both Protected data sources and AI services
> - User lacks clear understanding of data classification boundaries
> - AI service lacks contractual no-training clauses or adequate DLP integration
>
> ### Real-World Examples
>
> - Samsung semiconductor leak (2023): Engineers pasted proprietary source code into ChatGPT for debugging assistance, exposing trade secrets.
> - JPMorgan Chase AI ban (2023): Preemptive blocking of public AI services after risk assessment identified data leakage potential.
> - RadioAstronomy.io near-miss (2025-Q3): User prepared to paste 50+ lines of DESI data structure into Claude. Caught during peer review when colleague asked "is that data public?"
>
> ---
>
> Why we include real-world examples: Samsung and JPMorgan aren't scare tactics - they're proof this isn't theoretical. Our near-miss shows the risk is real even in our small environment. Including these in the risk doc makes training material write itself - we just point people here.

---

## 2. Impact Analysis

### Primary Impacts

[GUIDANCE: Use a table to show impact across different dimensions. Customize categories based on what matters to your organization. Common categories: harm to individuals, operational disruption, reputational damage, financial impact, regulatory/compliance consequences.]

| Impact Category | Severity | Description |
|----------------|----------|-------------|
| [Category 1] | [Low/Medium/High/Critical] | [Specific impact description] |
| [Category 2] | [Severity level] | [What happens in this dimension] |
| [Category 3] | [Severity level] | [Quantify if possible] |

Impact Level: [Your risk methodology's impact rating - e.g., CIS-RAM Unacceptable/Significant/Acceptable]

[GUIDANCE: Be specific about impact. "High reputational damage" is vague. "Loss of trusted researcher status, preventing future collaboration opportunities" is actionable. Quantify financial impact where possible - even rough estimates help with prioritization.]

### Cascading Effects

[GUIDANCE: If you have a risk library, document how this risk can trigger or amplify other risks. Cross-reference by Risk ID. If you don't have a library yet, you can skip this section or note "TBD - will update as risk library develops."]

[Risk ID]: [Risk Name] - [How this risk triggers or amplifies that one]

### Recovery Complexity

[GUIDANCE: Time-based estimates help with incident planning and business continuity. Be realistic - "hours" vs "days" vs "weeks" matters for stakeholder expectations.]

- Time to detect: [How long before you know this happened?]
- Time to contain: [How long to stop it from getting worse?]
- Time to recover: [How long to return to normal operations?]

---

> RadioAstronomy.io R01 Impact Analysis:
>
> ### Primary Impacts
>
> | Impact Category | Severity | Description |
> |----------------|----------|-------------|
> | Harm to Individuals | Medium | Potential exposure of researcher personal information if embedded in collaboration datasets |
> | Operational Disruption | Medium | Collaboration agreement violations could result in dataset access revocation, halting active research projects |
> | Reputational Damage | High | Loss of trusted researcher status in astronomy community; demonstrates inability to handle sensitive datasets responsibly |
> | Financial Impact | Medium | $5-10K for legal review, notification, vendor engagement; potential loss of future collaboration opportunities |
> | Regulatory/Compliance | Medium | Violation of data use agreements with DESI collaboration; Colorado SB-24-205 notification obligations if personal data involved |
>
> Impact Level (CIS-RAM): Unacceptable
>
> ### Cascading Effects
>
> R2: Secrets Leakage - Data egress incidents often include embedded credentials within dataset documentation, triggering secondary security incidents.
>
> R6: Identity & Access Drift - Post-incident response includes emergency permission revocation, creating orphaned access requiring remediation.
>
> R8: Legal & Compliance Gaps - Single incident can trigger review of all collaboration agreements, revealing previously unnoticed gaps.
>
> ### Recovery Complexity
>
> - Time to detect: Hours to days (depends on DLP alerting and user self-reporting)
> - Time to contain: Hours (requires vendor engagement for data deletion; no guarantee of success)
> - Time to recover: Days to weeks (legal review, remediation planning, notification, restoration of trust)
>
> ---
>
> Why we quantify financial impact: "$5-10K" is specific enough for budget planning but realistic - legal reviews aren't free. We don't pad numbers to make risks look scary; we estimate based on actual vendor rates and time requirements.
>
> Why "Unacceptable" despite Medium ratings: CIS-RAM's Impact Level combines dimensions. Reputational damage being High pushes this to Unacceptable even though other categories are Medium. This is the methodology doing its job - preventing us from averaging our way into complacency.
>
> Why cascading effects matter: Single data egress incident doesn't happen in isolation. We've seen embedded credentials (R2), emergency permission yanking that creates access debt (R6), and contract review revealing gaps (R8). Documenting these connections prevents "why are we spending time on X?" questions during incident response.

---

## 3. Technical Controls

[GUIDANCE: Organize controls by purpose - Preventive (stop it from happening), Detective (detect if it happens), Corrective (fix it after it happens). Use tables to map controls to your chosen framework. If you use multiple frameworks, pick one primary for control numbering to avoid confusion.]

### Preventive Controls (Stop it from happening)

| Control | Framework Reference | Implementation | Status |
|---------|---------------------|----------------|--------|
| [Control name] | [e.g., CIS 3.3, NIST CSF PR.AC-4] | [How you implement this control in your environment] | [✅ Implemented / 🟡 Partial / ❌ Planned] |
| [Another control] | [Framework ref] | [Specific implementation] | [Status] |

### Detective Controls (Detect if it happens)

| Control | Framework Reference | Implementation | Status |
|---------|---------------------|----------------|--------|
| [Control name] | [Framework ref] | [Implementation] | [Status] |

### Corrective Controls (Fix it after it happens)

| Control | Framework Reference | Implementation | Status |
|---------|---------------------|----------------|--------|
| [Control name] | [Framework ref] | [Implementation] | [Status] |

[GUIDANCE: Status icons help with quick visual scanning. ✅ = fully implemented and tested, 🟡 = partially implemented or needs improvement, ❌ = planned but not yet implemented. Be honest about status - auditors will find gaps anyway, and knowing where you're weak helps prioritize remediation.]

---

> RadioAstronomy.io R01 Technical Controls (abbreviated - showing pattern):
>
> ### Preventive Controls (Stop it from happening)
>
> | Control | CIS Control | Implementation | Status |
> |---------|-------------|----------------|--------|
> | Data Loss Prevention | CIS 3.3 | Kasm Workspaces with clipboard controls; monitors copy/paste from Protected systems | ✅ Implemented |
> | Inside-Perimeter AI | CIS 3.12 | Claude Max, Gemini Enterprise deployed within secure enclave; no internet egress for Protected data | ✅ Implemented |
> | No-Training Contract Clauses | CIS 15.3 | All approved AI vendors have contractual no-training, no-retention clauses | ✅ Implemented |
> | Network Segmentation | CIS 12.2 | VLAN isolation (10.25.20.0/24 compute, 10.25.10.0/24 management); NetBird ZTNA | ✅ Implemented |
>
> ### Detective Controls (Detect if it happens)
>
> | Control | CIS Control | Implementation | Status |
> |---------|-------------|----------------|--------|
> | AI Service Access Logging | CIS 8.2 | All AI service authentication events logged to Wazuh SIEM | ✅ Implemented |
> | Kasm Session Recording | CIS 8.11 | Kasm sessions with AI access recorded for post-incident review | ✅ Implemented |
> | Unusual Volume Alerts | CIS 8.5 | Prometheus alerting on abnormal AI API usage (>500 requests/day per user) | 🟡 Partial |
>
> ### Corrective Controls (Fix it after it happens)
>
> | Control | CIS Control | Implementation | Status |
> |---------|-------------|----------------|--------|
> | Vendor Data Deletion Requests | CIS 15.3 | Documented process to request data deletion from AI vendors; SLA tracking | ✅ Implemented |
> | Incident Response Playbook | CIS 17.1 | Data egress incident runbook with notification requirements, containment steps | ✅ Implemented |
> | User Access Suspension | CIS 5.3 | Automated workflow to suspend AI service access pending investigation | ✅ Implemented |
>
> ---
>
> Why we map to CIS Controls v8.1: We're a small research org (IG1 size), and CIS provides numbered controls that are easy to reference. We could use NIST CSF or ISO 27001, but CIS is most accessible for our scale. Pick one primary framework for control mapping - trying to map to everything creates confusion.
>
> Why "Partial" on Unusual Volume Alerts: Prometheus is configured but thresholds aren't tuned yet. We'd rather mark it Partial and know it's weak than claim full implementation and get surprised during an incident. Honesty in control status drives remediation priority.
>
> Why Inside-Perimeter AI is listed: This is architectural control - we run Claude and Gemini Enterprise models inside our secure enclave so Protected data never crosses the internet. This turns "don't paste data into AI" from a policy control (weak) into a technical control (strong).

---

## 4. Process Controls

### Procedural Safeguards

[GUIDANCE: List process controls that complement technical controls. Include frequency, who's responsible, and what the procedure accomplishes. Process controls are often the weakest link - document them clearly so people know what's expected.]

- [Procedure name] ([Frequency]): [Description of what this procedure does, who performs it, and what outcome it achieves]

### Training Requirements

[GUIDANCE: Who needs training on this risk? How often? What should they learn? Be specific enough that you can measure completion but flexible enough that training can evolve.]

- [Role/audience]: [Training topic and frequency]

### Approval Workflows

[GUIDANCE: If mitigating this risk requires approval gates, document them here. Who approves? What's the SLA? What happens if approver is unavailable?]

- [Workflow name]: [What requires approval, who approves, approval SLA]

---

> RadioAstronomy.io R01 Process Controls (abbreviated):
>
> ### Procedural Safeguards
>
> - Data Classification Training (Quarterly): All personnel with Protected data access complete 30-minute training covering classification criteria, examples of Protected content, and safe AI interaction patterns. Training includes scenario-based decision making ("Can I paste this into Claude?").
>
> - Peer Review for Data Export (Ad-hoc): Before exporting Protected data from secure systems, users must have export purpose reviewed by colleague to catch classification errors. Informal but effective - leverages team culture rather than heavyweight approval process.
>
> - DLP Effectiveness Testing (Quarterly): Security Lead tests DLP controls with synthetic Protected data to verify clipboard monitoring, alerting, and session recording function correctly. Documents test results and remediation actions.
>
> ### Training Requirements
>
> - All Personnel (Onboarding + Quarterly): Data classification training with AI-specific scenarios
> - Security Lead (Annual): DLP tool administration and tuning
> - CTO/ARO (Annual): Incident response procedures for data egress events
>
> ### Approval Workflows
>
> - Protected Data Export: Requires Security Lead approval with documented business justification. Approval SLA: 24 hours. If Security Lead unavailable, escalate to CTO.
>
> ---
>
> Why quarterly training frequency: Data classification feels intuitive until you're in the moment making a decision. Quarterly reinforcement keeps classification criteria fresh without becoming annoying. We tried monthly and people tuned out; annual was too infrequent.
>
> Why peer review is "informal but effective": We're 5 people. Heavyweight approval processes don't fit our culture and create workarounds. "Hey, can you sanity check this before I export?" leverages existing team dynamics and catches classification errors without bureaucracy.
>
> Why we test DLP quarterly: Technical controls drift. Kasm updates, browser changes, clipboard API evolution - all can break DLP rules. Quarterly synthetic data tests catch drift before real incidents do.

---

## 5. Responsibility Matrix

[GUIDANCE: RACI or similar matrix showing who's accountable, responsible, consulted, and informed for risk management activities. Clear ownership prevents "I thought someone else was handling that" failures.]

| Activity | Responsible | Accountable | Consulted | Informed |
|----------|-------------|-------------|-----------|----------|
| [Activity 1] | [Role] | [Role] | [Role(s)] | [Role(s)] |
| [Activity 2] | [Role] | [Role] | [Role(s)] | [Role(s)] |

Primary Owner: [Role with ultimate accountability for this risk]

[GUIDANCE: "Accountable" is singular - one person owns the risk. "Responsible" can be multiple people executing tasks. Don't make everyone Accountable - that's how nothing gets done.]

---

> RadioAstronomy.io R01 Responsibility Matrix (abbreviated):
>
> | Activity | Responsible | Accountable | Consulted | Informed |
> |----------|-------------|-------------|-----------|----------|
> | DLP Configuration & Tuning | Security Lead | Security Lead | CTO | All Personnel |
> | Data Classification Training Delivery | Security Lead | CTO | ARO | All Personnel |
> | Incident Response Execution | Security Lead | ARO | CTO | All Personnel |
> | Export Approval Decisions | Security Lead | Security Lead | - | Requester |
> | Contract No-Training Clause Negotiation | CTO | CTO | ARO, Security Lead | - |
> | User Behavior: Classification Compliance | All Personnel | All Personnel | Security Lead | - |
>
> Primary Owner: Security Lead (ultimate accountability for data protection controls)
>
> ---
>
> Why Security Lead is primary owner: Data protection is a security function. Security Lead has the technical expertise and authority to implement controls, but CTO/ARO are consulted on policy and incident response because those have organizational implications.
>
> Why "All Personnel" for behavior: Everyone is accountable for their own classification compliance. We can't have Security Lead approve every decision - that creates bottleneck and teaches learned helplessness. Training + culture + lightweight peer review is how this scales.

---

## 6. Metrics

[GUIDANCE: What will you measure to know if controls are working? Good metrics are: measurable without heroic effort, meaningful for decision-making, and actionable when thresholds are breached. Avoid vanity metrics that look good but don't drive behavior.]

### Control Effectiveness Metrics

- [Metric name]: [What you measure, how you measure it, what "good" looks like]
  - Target: [Threshold or range]
  - Measurement frequency: [How often you check]
  - Escalation trigger: [What value requires action]

### Risk Monitoring Metrics

- [Metric name]: [Leading indicator of risk manifestation]
  - Target: [Threshold]
  - Measurement frequency: [How often]
  - Escalation trigger: [Action threshold]

---

> RadioAstronomy.io R01 Metrics (abbreviated):
>
> ### Control Effectiveness Metrics
>
> - DLP Block Rate: Percentage of attempted copy/paste operations from Protected systems that DLP successfully blocks
>   - Target: >95% block rate on quarterly synthetic data tests
>   - Measurement frequency: Quarterly (synthetic data tests)
>   - Escalation trigger: <90% block rate requires immediate DLP rule review and remediation
>
> - Training Completion Rate: Percentage of personnel with Protected data access who have completed data classification training within last 90 days
>   - Target: 100% (all personnel current)
>   - Measurement frequency: Monthly automated report
>   - Escalation trigger: Any personnel >90 days overdue lose Protected data access until training complete
>
> ### Risk Monitoring Metrics
>
> - AI Service Usage Anomalies: Number of users exceeding 500 API requests/day (3x typical usage)
>   - Target: 0 anomalies per month
>   - Measurement frequency: Daily automated check
>   - Escalation trigger: Any anomaly triggers investigation within 4 hours
>
> - Protected Data Export Volume: Number of export approvals granted per quarter
>   - Target: <5 exports/quarter (based on current research pace)
>   - Measurement frequency: Quarterly review
>   - Escalation trigger: >10 exports/quarter suggests classification drift or approval process bypass
>
> ---
>
> Why these metrics: DLP block rate directly measures control effectiveness - if it drops, we know immediately. Training completion is binary and enforceable - access removal is automatic, not discretionary. AI usage anomalies catch both incidents and honest mistakes. Export volume tracks whether approval process is actually being used or bypassed.
>
> Why quarterly for DLP testing: Monthly is overkill and trains people to ignore tests. Quarterly catches drift before it becomes crisis while fitting into existing security review cadence.
>
> What we don't measure: Time-to-respond (we're 5 people, "immediate" is the SLA). Cost-per-incident (not enough incidents to make this meaningful). User satisfaction with controls (we're not trying to make DLP popular, we're trying to stop data leaks).

---

## 7. Incident Response

[GUIDANCE: When this risk manifests, what happens? Document detection indicators, immediate response steps with timing, communication plan, and post-incident actions. This section turns into your incident runbook.]

### Detection Indicators

- [What alerts or observations indicate this risk has occurred?]
- [Technical indicators from monitoring systems]
- [Human observations or reports]

### Immediate Response Steps

1. Containment (within [timeframe]):
   - [Actions to stop the incident from getting worse]
   - [Who takes these actions]

2. Assessment (within [timeframe]):
   - [How to determine scope and severity]
   - [What information to gather]

3. Notification (timing depends on severity):
   - Internal: [Who needs to know and when]
   - External: [Vendors, partners, regulators - per contract/law requirements]

### Communication Plan

- Internal:
  - [Immediate notifications]
  - [Regular updates during incident]
  - [Post-incident communication]

- External:
  - [Customer/partner notification if required]
  - [Vendor engagement procedures]
  - [Regulatory notification if required]

### Post-Incident Actions

- [ ] [Root cause analysis checklist]
- [ ] [Control hardening based on findings]
- [ ] [Policy updates if needed]
- [ ] [Lessons learned documentation]
- [ ] [Training updates based on incident patterns]

[GUIDANCE: Checklists are your friend during incidents - stress reduces cognitive capacity, and having steps written down prevents forgotten actions. Use checkboxes so you can literally check them off during response.]

---

> RadioAstronomy.io R01 Incident Response (abbreviated):
>
> ### Detection Indicators
>
> - DLP alert: Clipboard operation blocked between internal system and external AI service
> - Unusual AI service usage: User API calls >500/day when typical usage <100/day
> - User self-report: "I think I accidentally pasted Protected data into ChatGPT"
> - Vendor notification: AI service provider alerts to unusual data volume from our account
>
> ### Immediate Response Steps
>
> 1. Containment (within 1 hour of detection):
>    - Suspend affected user's AI service access immediately via automated workflow
>    - Capture affected session logs from Kasm, NetBird, AI service authentication records
>    - Identify scope: Which datasets accessed in 24 hours prior to incident?
>
> 2. Assessment (within 4 hours of detection):
>    - Interview user to understand what data was shared and with which service
>    - Review vendor contract for data deletion rights and procedures
>    - Determine if personal data involved (triggers Colorado notification obligations)
>    - Assess if collaboration agreement violated (requires partner notification)
>
> 3. Notification (timing depends on severity):
>    - Internal: CTO and ARO immediately; Review Board within 24 hours
>    - Vendor: Submit data deletion request per vendor's procedure (SLA tracking required)
>    - External: If collaboration agreement violated, notify partner within 48 hours
>    - Regulatory: If personal data and high-risk system involved, Colorado AG notification within 90 days per SB-24-205
>
> ### Communication Plan
>
> - Internal:
>   - Immediate: Slack alert to #security-incidents
>   - 24 hours: Email to CTO, ARO, Review Board with incident summary
>   - 30 days post-incident: Lessons learned presentation to all staff
>
> - External:
>   - Collaboration partners: Use template notification letter
>   - Vendors: Submit deletion request using vendor's designated process
>   - Colorado AG: If applicable, formal Impact Assessment disclosure per SB-24-205 Section 6-1-1706
>
> ### Post-Incident Actions
>
> - [ ] Root cause analysis: Why did user believe data was safe to share?
> - [ ] Control hardening: Update Kasm DLP rules based on actual data patterns
> - [ ] Policy update if needed: Clarify ambiguous classification guidance
> - [ ] Lessons learned: Add incident as training scenario
> - [ ] User remediation: Additional training or access restrictions?
> - [ ] Vendor relationship review: If deletion request handled poorly, consider replacement
>
> ---
>
> Why 1-hour containment SLA: We're small enough that someone is always reachable. Suspending access is automated (clicking button in admin panel), and session log capture is scripted. One hour is aggressive but achievable - and data egress incidents compound if containment delays.
>
> Why we include vendor deletion request in response plan: Vendor contract might say "we'll delete on request" but not specify HOW to request or SLA. Documenting the procedure in advance prevents fumbling during incident. We track SLA because "we requested deletion" is meaningless if vendor ignores it.
>
> Why Colorado AG notification is conditional: We're not Colorado-based, but we voluntarily follow SB-24-205 as governance principle. IF we determine we're in high-risk deployer role AND personal data was involved, we'd notify. Most of our data egress scenarios wouldn't trigger this (research data isn't personal data), but we document the threshold anyway.
>
> Why lessons learned presentation: Near-misses and actual incidents become training material. "Here's what happened, here's what we learned, here's what changed" is more effective than abstract training scenarios. We present to all staff within 30 days while incident is fresh.

---

## 8. Risk Decision (Risk Assessment Methodology)

[GUIDANCE: This section documents your risk scoring methodology and treatment decision. If you use a formal methodology like CIS-RAM, FAIR, or NIST RMF, reference it here. If you have a custom approach, document it. The key is showing you assessed the risk systematically, not just guessed.]

### Threat & Safeguard Assessment

[GUIDANCE: Document the factors that feed into your risk score. This might be threat likelihood + impact, or threat commonality + safeguard reliability (CIS-RAM), or asset value + threat capability + control strength (FAIR). Match your organization's chosen methodology.]

- [Factor 1]: [Assessment and rationale]
- [Factor 2]: [Assessment and rationale]

### Risk Scores

Inherent Risk:

- Calculated Score: [Score using your methodology - before controls]
- Qualitative Rating: [High/Medium/Low or your scale]

Residual Risk:

- Calculated Score: [Score after controls are applied]
- Qualitative Rating: [Rating after controls]

[GUIDANCE: Inherent risk is "how bad could this be if we had no controls?" Residual risk is "how bad is it given our current controls?" The gap between them shows control effectiveness. If residual and inherent are the same, your controls aren't working or you haven't implemented any.]

### Risk Treatment Decision

Treatment: [Mitigate / Accept / Transfer / Avoid]

Rationale:

[GUIDANCE: Explain WHY you chose this treatment. "Mitigate" is most common - you implement controls to reduce risk. "Accept" means you acknowledge the risk and choose not to mitigate further. "Transfer" means insurance or outsourcing. "Avoid" means you stop the activity creating the risk. Your rationale should explain the business logic, not just restate the decision.]

### Residual Risk Acceptance

- Accepted by: [Name and role - must be someone with authority to accept risk]
- Date: [YYYY-MM-DD]
- Review date: [When will you reassess this risk?]
- Conditions:
  - [What must remain true for this acceptance to be valid?]
  - [What would invalidate this risk acceptance?]

[GUIDANCE: Risk acceptance is a formal decision, not a default. Document who accepted the residual risk and under what conditions. If conditions change (new threat, control failure, impact increase), risk must be reassessed. This creates accountability and prevents forgotten risks.]

---

> RadioAstronomy.io R01 Risk Decision:
>
> ### Threat & Safeguard Assessment
>
> - Threat Commonality: Common (copy/paste errors are frequent human behavior; AI interfaces encourage detailed context)
> - Safeguard Reliability: High (multiple independent controls: DLP, inside-perimeter AI, network segmentation, contractual protections, training)
>
> [CIS-RAM Note: CIS-RAM uses Threat Commonality × Safeguard Reliability to calculate risk. "Common" threat + "High" reliability safeguards = Low expectancy of risk occurring.]
>
> ### Risk Scores
>
> Inherent Risk:
>
> - Calculated Score: Unacceptable Impact × Very High Expectancy (common threat, no controls) = 8/10
> - Qualitative Rating: High
>
> Residual Risk:
>
> - Calculated Score: Unacceptable Impact × Low Expectancy (common threat, high reliability safeguards) = 3/10
> - Qualitative Rating: Low
>
> ### Risk Treatment Decision
>
> Treatment: Mitigate (implement multiple layered controls to reduce risk to acceptable level)
>
> Rationale:
>
> Data egress represents one of the highest inherent risks in AI-assisted research workflows because Protected datasets are the core value of RadioAstronomy.io's work. Loss of trusted researcher status in the astronomy community would be organizationally catastrophic, and collaboration agreement violations could halt active research projects.
>
> However, we cannot eliminate this risk entirely without abandoning AI productivity tools, which would create competitive disadvantage and reduce research output quality. Therefore, mitigation through defense-in-depth is the appropriate strategy.
>
> We implement:
>
> 1. Technical Controls: DLP at endpoint, network segmentation at perimeter, inside-perimeter AI deployment
> 2. Contractual Controls: No-training clauses with all AI vendors, legally enforceable data deletion rights
> 3. Process Controls: Export approval workflow, peer review culture, quarterly training
> 4. Architectural Controls: Compute VLAN isolation, zero-trust network access, fail-safe defaults
>
> These overlapping controls reduce expectancy from "Very High" (inherent) to "Low" (residual), bringing risk into "Acceptable" range per organizational risk tolerance. Residual risk primarily consists of:
>
> - Sophisticated social engineering attacks targeting user training gaps
> - DLP bypass through encoding or obfuscation of Protected data
> - Vendor contract breach (vendor uses data despite no-training clause)
>
> These residual scenarios are either rare (sophisticated attacks) or contractually actionable (vendor breach), making the remaining risk acceptable given the productivity and research quality benefits of AI tool access.
>
> ### Residual Risk Acceptance
>
> - Accepted by: David Thompson (AI Risk Officer)
> - Date: 2025-10-24
> - Review date: 2026-01-24 (quarterly review sooner if: new AI vendor added, DLP incident occurs, collaboration agreement changed)
> - Conditions:
>   - DLP effectiveness tested quarterly with synthetic Protected data
>   - All personnel complete data classification training within 30 days of Protected data access grant
>   - Export approval workflow audit conducted quarterly
>   - Any DLP violation triggers immediate incident response and lessons learned review
>   - Vendor contracts reviewed annually to ensure no-training clauses remain in effect
>
> ---
>
> Why we use CIS-RAM: It's a simple, documented methodology that small organizations can apply without risk analysis software or specialized training. Threat Commonality + Safeguard Reliability → Risk Expectancy is intuitive. We're not a bank that needs FAIR quantitative analysis - we need "is this risk acceptable or not?" which CIS-RAM answers clearly.
>
> Alternative methodologies (brief):
>
> - FAIR (Factor Analysis of Information Risk): Quantitative approach estimating dollar loss ranges. Good for organizations that need to justify security spend in financial terms. Requires more data and effort than CIS-RAM.
> - NIST RMF: Broader framework including risk assessment as one component. Good if you're already using NIST CSF for controls. More heavyweight than we need for research cluster scale.
> - Qualitative matrix (Likelihood × Impact): Simplest approach - 3×3 or 5×5 grid. Good for very small orgs or initial risk identification. We outgrew this when we needed repeatable methodology for multiple risks.
>
> Why inherent risk is 8/10: Without controls, data egress is nearly certain (copy/paste is natural behavior) and impact is Unacceptable (reputational and operational catastrophe). CIS-RAM scoring puts this at 8/10 inherent.
>
> Why residual risk is 3/10: Our layered controls (DLP, inside-perimeter AI, contracts, training) are high reliability. Threat is still Common, but controls reduce expectancy to Low. CIS-RAM scoring: Unacceptable Impact × Low Expectancy = 3/10 residual. This is within our acceptable range.
>
> Why formal risk acceptance matters: "David Thompson (ARO) accepted residual risk on 2025-10-24" creates accountability. If conditions change (DLP fails, vendor breaches contract, new threat emerges), we know exactly when and why previous acceptance was valid and can reassess systematically. This prevents "we thought someone was watching this" failures.

---

## Revision History

| Version | Date | Changes | Author |
|---------|------|---------|--------|
| [x.x] | [YYYY-MM-DD] | [Description of changes - initial creation, control updates, risk reassessment, etc.] | [Name/Role] |

[GUIDANCE: Track changes over time. Risk scenarios evolve as threats change, controls improve, or organizational context shifts. Version history creates audit trail and shows continuous risk management rather than point-in-time assessment.]

---

> RadioAstronomy.io R01 Revision History:
>
> | Version | Date | Changes | Author |
> |---------|------|---------|--------|
> | 1.0 | 2025-10-24 | Initial risk scenario based on operational controls and near-miss incident | David Thompson |
>
> ---
>
> Why we version control risk scenarios: Controls change (we add DLP, upgrade Kasm, renegotiate vendor contracts). Threats evolve (new attack techniques, new AI services). Impact changes (we gain new collaboration partners, increasing reputational risk). Documenting when and why risk scenarios change creates audit trail and justifies control investments.
>
> When we trigger revisions: Re-Assessment Triggers listed in header (model change, new data source, tool permission change, security incident, annual review). We don't wait for annual review if something material changes - the trigger list makes it clear when reassessment is required, not optional.
