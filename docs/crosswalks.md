<!--
---
title: "Framework Crosswalks - NIST AI RMF Cookbook"
description: "Regulatory and standards mappings connecting NIST AI RMF to ISO 42001, ISO 23894, NIST SP 800-53, and EU AI Act"
owner: "VintageDon - https://github.com/vintagedon"
orcid: "https://orcid.org/0009-0008-7695-4093"
ai_contributor: "Claude (Anthropic)"
lastReviewed: "2025-10-10"
version: "1.0"
status: "Published"
tags:
- type: reference-documentation
- domain: regulatory-compliance
- framework: nist-ai-rmf
- standards: iso-42001, iso-23894, nist-800-53, eu-ai-act
related_documents:
- "[Project Root](../README.md)"
- "[Documentation Methodology](methodology.md)"
type: reference
---
-->

# 🗺️ Framework Crosswalks

Regulatory and Standards Mappings for the NIST AI RMF Cookbook

---

## 📖 1. Introduction

### Purpose

This document provides opinionated, implementation-focused mappings between the NIST AI Risk Management Framework (AI RMF) and other major AI governance frameworks, security control catalogs, and regulatory requirements. These crosswalks serve as a bridge, connecting the AI RMF's risk management approach to the specific, auditable requirements of other standards.

The primary goal is to help organizations demonstrate that by following the NIST AI RMF Cookbook's practices, they are simultaneously addressing requirements from:

- ISO/IEC 42001:2023 - International standard for AI Management Systems (AIMS)
- ISO/IEC 23894:2023 - Guidance on AI risk management processes
- NIST SP 800-53 Rev. 5 - Security and privacy controls for information systems
- EU AI Act - Binding legal obligations for high-risk AI systems in the European Union

### Who Should Use This Document

Primary Audiences:

- GRC Teams & Compliance Officers: Use these mappings to justify control coverage during audits and to demonstrate systematic compliance with multiple frameworks using a unified approach
- Security & Risk Managers: Understand how AI-specific risks connect to established security control frameworks
- AI/ML Engineers: See why specific documentation and testing requirements exist and how they satisfy broader regulatory obligations
- Auditors & Assessors: Trace evidence artifacts from the cookbook to specific framework requirements

Secondary Audiences:

- Executive Leadership: Understand the compliance scope and regulatory coverage provided by adopting the cookbook
- Legal & Privacy Teams: Map AI governance practices to specific legal obligations
- External Consultants: Assess organizational AI risk posture against multiple standards

### How to Use This Document

1. Identify Your Requirements: Determine which frameworks, standards, or regulations apply to your organization and AI systems
2. Navigate to Relevant Mapping: Use the table of contents to jump to the specific crosswalk you need
3. Understand the Relationships: Review the mapping tables to see how AI RMF functions align with specific clauses, controls, or articles
4. Apply to Your Context: Read the "How to Use This Mapping" guidance for practical implementation advice specific to your regulatory context
5. Reference in Documentation: Link to this document from your system documentation to demonstrate framework alignment

Document Navigation Tips:

- Each crosswalk section stands alone - you don't need to read sequentially
- The "Practical Usage Guidance" section (Section 5) provides role-specific and use-case-specific implementation advice
- Official source citations are in Section 6 for authoritative reference

---

## ⚠️ 2. Important Disclaimers

### Nature of These Mappings

These crosswalks are opinionated interpretations designed to facilitate practical, tool-based implementation. They are NOT:

- ❌ Canonical or officially endorsed equivalencies
- ❌ Legally binding interpretations
- ❌ Substitutes for professional compliance advice
- ❌ Guarantees of regulatory compliance
- ❌ Universally applicable without context

These mappings ARE:

- ✅ Informed by careful analysis of official framework documentation
- ✅ Designed to be practically useful for implementation
- ✅ Based on the principle that good risk management practices satisfy multiple frameworks
- ✅ Subject to interpretation based on organizational context
- ✅ A starting point for compliance conversations with auditors and regulators

### Framework Philosophy Differences

NIST AI RMF is a voluntary, principles-based framework that guides the *process* of managing AI risks. It answers "How should we think about AI risk?" but does not prescribe specific technical controls or acceptance criteria.

Other Frameworks (ISO 42001, SP 800-53, EU AI Act) define specific, auditable requirements or controls. They answer "What must we do to comply?" with varying levels of prescription.

These philosophical differences mean that mappings involve interpretation. The same AI RMF function might support multiple specific requirements across different frameworks, and vice versa.

### Context Dependency

The applicability and sufficiency of these mappings depend heavily on:

- System Risk Level: High-risk systems have more stringent requirements
- Deployment Context: Industry sector, geographic jurisdiction, use case
- Organizational Maturity: Existing GRC infrastructure and resources
- Regulatory Interpretation: How your specific regulator or auditor interprets requirements
- Contractual Obligations: Customer-specific requirements may exceed baseline standards

### When to Seek Professional Review

Consult qualified legal, compliance, or industry-specific experts when:

- Deploying AI systems classified as "high-risk" under any applicable regulation
- Operating in highly regulated industries (healthcare, finance, government)
- Facing specific audit or certification requirements
- Entering new jurisdictions with distinct AI regulations
- Uncertain about how to interpret a framework requirement for your specific system

### Evolution and Maintenance

AI governance is a rapidly evolving field. These mappings reflect the state of frameworks as of January 2025. Notable ongoing developments:

- EU AI Act: Regulatory Technical Standards (RTS) are being developed by CEN/CENELEC and will provide more specific technical requirements
- NIST SP 800-53: AI-specific control overlays are in draft/concept stage
- ISO Standards: New AI-related standards are under development in ISO/IEC JTC 1/SC 42

The NIST AI RMF Cookbook project commits to quarterly reviews of these crosswalks. Users should verify current framework versions and interpretations before relying on these mappings for formal compliance activities.

---

## 🌐 3. Framework Overviews

Brief introductions to each target framework to provide context for the mappings.

### NIST AI Risk Management Framework (AI RMF 1.0)

What It Is: A voluntary, flexible framework for managing risks associated with artificial intelligence systems. Released January 2023 by the U.S. National Institute of Standards and Technology.

Who Needs It:

- Any organization developing, deploying, or procuring AI systems
- Organizations seeking a structured approach to AI governance
- U.S. federal agencies (recommended but not mandated)

Core Structure: Four functions organized around the AI lifecycle:

- GOVERN - Organizational culture, policies, and oversight structures
- MAP - Context-specific risk identification and analysis
- MEASURE - Testing, evaluation, and performance metrics
- MANAGE - Risk treatment, monitoring, and continuous improvement

Key Characteristics:

- Voluntary and non-prescriptive
- Technology-neutral and use-case agnostic
- Focuses on *process* rather than specific controls
- Emphasizes human-centered values and trustworthiness

Official Resource: [https://www.nist.gov/itl/ai-risk-management-framework](https://www.nist.gov/itl/ai-risk-management-framework)

---

### ISO/IEC 42001:2023 - AI Management System

What It Is: The first international, certifiable standard for establishing, implementing, maintaining, and continually improving an Artificial Intelligence Management System (AIMS).

Who Needs It:

- Organizations seeking formal certification for AI governance
- Companies with AI-dependent business models
- Organizations needing to demonstrate systematic AI risk management to customers or regulators
- Suppliers to regulated industries requiring third-party assurance

Core Structure: Based on ISO's high-level structure (Annex SL) used across management system standards:

- Clauses 4-10: Management system requirements (Context, Leadership, Planning, Support, Operation, Performance Evaluation, Improvement)
- Annex A: AI-specific controls organized by lifecycle phase

Key Characteristics:

- Certifiable by accredited third-party auditors
- Integrates with other ISO management systems (ISO 9001, 27001, etc.)
- Requires defined AI policy, objectives, and measurable performance indicators
- Emphasizes continual improvement and risk-based thinking

Relationship to AI RMF: ISO 42001 provides the *management system structure* (how to organize AI governance), while AI RMF provides the *risk management process* (how to identify and address AI risks). They are highly complementary.

Official Resource: [https://www.iso.org/standard/81230.html](https://www.iso.org/standard/81230.html)

---

### ISO/IEC 23894:2023 - AI Risk Management

What It Is: International guidance on AI risk management, providing detailed process guidance based on the foundational ISO 31000 risk management standard.

Who Needs It:

- Organizations implementing risk assessment processes for AI systems
- Risk managers adapting traditional risk frameworks to AI
- Teams seeking structured guidance on risk identification, analysis, evaluation, and treatment for AI

Core Structure: Risk management process phases:

- Clause 5: Leadership and commitment
- Clause 6: Process (Context establishment, Risk identification, Analysis, Evaluation, Treatment, Monitoring & Review, Recording & Reporting)
- Annexes: Guidance on AI-specific risk sources and examples

Key Characteristics:

- Guidance standard (not certifiable)
- Directly aligns with ISO 31000 methodology
- AI-specific interpretation of risk concepts
- Emphasis on iterative, continuous risk management

Relationship to AI RMF: ISO 23894 and NIST AI RMF are structurally very similar - both adapt traditional risk management to AI. ISO 23894 is more process-prescriptive, while AI RMF is more principle-oriented.

Official Resource: [https://www.iso.org/standard/77304.html](https://www.iso.org/standard/77304.html)

---

### NIST SP 800-53 Rev. 5 - Security and Privacy Controls

What It Is: A comprehensive catalog of security and privacy controls for federal information systems and organizations. While not AI-specific, it is being adapted for AI systems through proposed control overlays.

Who Needs It:

- U.S. federal agencies (mandatory under FISMA)
- Federal contractors and cloud service providers (FedRAMP)
- Organizations in Critical Infrastructure sectors
- Any organization using NIST Risk Management Framework (RMF) - not to be confused with AI RMF

Core Structure:

- 20 control families organized by security/privacy function
- Controls categorized by baseline (Low, Moderate, High impact)
- Three-part control structure: Base control, Enhancements, Control baseline

Key Characteristics:

- Mature, well-established catalog (decades of evolution)
- Designed for traditional IT systems
- Being extended for AI through "control overlays" (concept phase as of 2025)
- Tied to formal assessment processes (SAP, SAR, POA&M)

Relationship to AI RMF: SP 800-53 provides *specific technical and procedural controls*, while AI RMF provides the *risk management approach* for identifying which controls are needed. AI systems must satisfy both: use AI RMF to identify risks, map to 800-53 controls to address them.

Official Resource: [https://csrc.nist.gov/publications/detail/sp/800-53/rev-5/final](https://csrc.nist.gov/publications/detail/sp/800-53/rev-5/final)

AI Overlay Concept: [https://csrc.nist.gov/csrc/media/Projects/cosais/documents/NIST-Overlays-SecuringAI-concept-paper.pdf](https://csrc.nist.gov/csrc/media/Projects/cosais/documents/NIST-Overlays-SecuringAI-concept-paper.pdf)

---

### EU AI Act - Regulation (EU) 2024/1689

What It Is: The world's first comprehensive, legally binding regulation on artificial intelligence. Establishes harmonized rules for the development, placement on the market, and use of AI systems in the European Union.

Who Needs It:

- Any organization deploying AI systems in the EU market
- Providers of AI systems classified as "high-risk"
- Deployers of high-risk AI systems
- Providers of General-Purpose AI (GPAI) models

Core Structure: Risk-based approach with four categories:

- Unacceptable Risk: Prohibited AI practices (Art. 5)
- High Risk: Specific AI systems subject to strict requirements (Art. 6, Annex III)
- Limited Risk: Transparency obligations (Art. 50)
- Minimal Risk: No specific obligations (voluntary codes of conduct)

Key Characteristics:

- Legally binding with significant penalties (up to €35M or 7% global turnover)
- Focuses on *high-risk* systems in specific sectors (employment, education, law enforcement, critical infrastructure, etc.)
- Requires conformity assessment before market placement
- Harmonized standards (RTS) being developed to specify technical requirements

Relationship to AI RMF: The AI RMF's risk management process provides a methodology for meeting the EU AI Act's risk assessment and mitigation obligations (Art. 9). Organizations subject to the Act can use AI RMF as their underlying risk management system.

Official Resource: [https://eur-lex.europa.eu/eli/reg/2024/1689/oj](https://eur-lex.europa.eu/eli/reg/2024/1689/oj)

Implementation Timeline:

- Prohibited AI practices: February 2, 2025
- GPAI obligations: August 2, 2025  
- High-risk system obligations: August 2, 2027

---

## 🔗 4. Framework Mappings

### 4.1 NIST AI RMF → ISO/IEC 42001 & ISO/IEC 23894

#### Mapping Overview

ISO/IEC 42001 (AI Management System) and ISO/IEC 23894 (AI Risk Management) are highly complementary to the NIST AI RMF. ISO 42001 provides the organizational structure for AI governance, while ISO 23894 provides detailed risk management process guidance. The NIST AI RMF's four functions align naturally with these international standards.

This mapping demonstrates that organizations implementing the AI RMF Cookbook's artifacts are simultaneously building the foundation for ISO 42001 certification and ISO 23894 compliance.

#### Mapping Table

| NIST AI RMF Function | ISO/IEC 23894:2023 Clause (Risk Management Process) | ISO/IEC 42001:2023 Clause (Management System) | Alignment Notes |
|---------------------|---------------------------------------------------|-----------------------------------------------|----------------|
| GOVERN | Clause 5: Leadership and commitment | Clause 4: Context of the organization<br>Clause 5: Leadership<br>Clause 6: Planning<br>Clause 7: Support<br>Clause 10: Improvement | The GOVERN function establishes the overarching policies, organizational structures, roles, and cultural commitments for AI risk management. This directly corresponds to the leadership, planning, and organizational context requirements that are foundational to any ISO management system. Policy templates and governance structures in the cookbook implement these clauses. |
| MAP | Clause 6.4: Risk identification<br>Clause 6.5: Risk analysis<br>Clause 6.6: Risk evaluation | Clause 8.2: AI risk assessment | The MAP function is the process of identifying risks, understanding system context, and analyzing potential impacts. This is the core risk assessment activity required by both ISO 23894's detailed process clauses and ISO 42001's operational risk assessment clause. The cookbook's `risks.yaml` schema and risk library operationalize these requirements. |
| MEASURE | Clause 6.8: Monitoring and review | Clause 9: Performance evaluation | The MEASURE function focuses on testing, evaluation metrics, and ongoing monitoring of AI system performance and safety. This aligns with the performance evaluation requirements of ISO 42001 (measuring against objectives) and the continuous monitoring required by ISO 23894. The cookbook's `eval-plan.yaml` and evidence artifacts demonstrate these capabilities. |
| MANAGE | Clause 6.7: Risk treatment<br>Clause 6.8: Monitoring and review | Clause 8.3: AI risk treatment | The MANAGE function involves selecting and implementing risk treatments (mitigations), deploying controls, and continuously monitoring their effectiveness. This is explicitly the focus of risk treatment clauses in both standards. The cookbook's `control-mapping.yaml` and evidence linkage system provide the documentation structure required by these clauses. |

#### Key Observations

Structural Alignment: The four-function structure of the AI RMF naturally maps to the Plan-Do-Check-Act cycle embedded in ISO management systems:

- GOVERN = Plan (establish context, policy, objectives)
- MAP = Plan (identify and analyze risks)
- MEASURE = Check (monitor and evaluate)
- MANAGE = Do + Act (implement controls, improve continuously)

Documentation Synergy:

- The cookbook's policy templates satisfy ISO 42001 Clause 5 (documented AI policy)
- Risk and control YAML files provide evidence for ISO 42001 Clause 8 (operational planning and control)
- Evidence artifacts support ISO 42001 Clause 9 (performance evaluation with objective evidence)

Certification Path: Organizations using the cookbook can build toward ISO 42001 certification by:

1. Establishing governance artifacts (GOVERN) - satisfies Clauses 4-7
2. Conducting systematic risk assessments (MAP) - satisfies Clause 8.2
3. Implementing documented controls (MANAGE) - satisfies Clause 8.3
4. Measuring and monitoring (MEASURE) - satisfies Clause 9

#### How to Use This Mapping

If You're Seeking ISO 42001 Certification:

1. Use the cookbook's policy templates to establish your documented AI management system (Clause 5.2)
2. Populate YAML artifacts for each AI system as evidence of operational controls (Clause 8)
3. Link evidence artifacts to demonstrate performance evaluation (Clause 9)
4. Work with a certification body to map your cookbook-based documentation to their audit checklist
5. Note: Certification requires additional management system documentation (scope statement, objectives, competency records) beyond what the cookbook provides

If You're Conducting an ISO 23894 Risk Assessment:

1. Use the cookbook's risk library as a starting point for risk identification (Clause 6.4)
2. Document risks in `risks.yaml` format to satisfy risk recording requirements (Clause 6.9)
3. Define treatments in `control-mapping.yaml` to demonstrate risk treatment (Clause 6.7)
4. Use `eval-plan.yaml` to show monitoring and review processes (Clause 6.8)
5. Maintain evidence artifacts as objective records of risk management activities

For Auditors Assessing ISO Compliance:

- `risks.yaml` files demonstrate systematic risk identification and analysis
- `control-mapping.yaml` files show documented risk treatment decisions
- Evidence artifacts provide objective proof that controls are implemented and monitored
- The version-controlled nature of the cookbook's YAML files satisfies document control requirements

---

### 4.2 NIST AI RMF → NIST SP 800-53 Rev. 5

#### Mapping Overview

NIST SP 800-53 Rev. 5 is a mature, comprehensive catalog of security and privacy controls originally designed for traditional IT systems. While not AI-specific, it remains highly relevant for AI systems because:

1. AI systems are deployed on IT infrastructure that must meet baseline security requirements
2. Many AI-specific risks (data poisoning, model theft) are variations of traditional security threats
3. Federal agencies and contractors are required to use SP 800-53 controls

NIST is developing an AI-specific control overlay to adapt SP 800-53 for AI systems. This mapping reflects the direction proposed in the "SP 800-53 Control Overlays for Securing AI Systems" concept paper, showing how the AI RMF's functions connect to representative controls from the 800-53 catalog.

Important Note: This mapping shows *selected, representative* controls for each AI RMF function. The full SP 800-53 catalog contains 1000+ controls. The specific controls required for any given AI system depend on its categorization (Low/Moderate/High impact) and deployment context.

#### Mapping Table

| NIST AI RMF Function | Selected NIST SP 800-53 Rev. 5 Control(s) | Control Description | Alignment Notes |
|---------------------|------------------------------------------|-------------------|----------------|
| GOVERN | PM-31: Risk Management Strategy<br><br>SA-3: System Development Life Cycle | PM-31 requires an organization-wide risk management strategy that includes roles, responsibilities, and risk tolerance levels.<br><br>SA-3 requires managing the AI system throughout its lifecycle using a defined process. | The GOVERN function establishes organizational governance structures, policies, and risk management strategies. PM-31 and SA-3 are program-level controls that create the framework within which AI-specific risks are managed. The cookbook's policy templates and governance structures implement these strategic controls. |
| MAP | RA-3: Risk Assessment<br><br>RA-8: Supply Chain Risk Assessment<br><br>SI-4: Information System Monitoring | RA-3 requires conducting risk assessments to identify threats, vulnerabilities, likelihood, and impact.<br><br>RA-8 specifically addresses risks from the supply chain, highly relevant for AI models and datasets acquired from third parties.<br><br>SI-4 requires monitoring the system for threats and unusual behavior. | The MAP function is fundamentally about risk identification and analysis. These controls provide the structure for conducting assessments (RA-3), addressing AI-specific supply chain risks like model provenance (RA-8), and establishing monitoring capabilities (SI-4). The cookbook's `risks.yaml` and risk library operationalize these assessment requirements. |
| MEASURE | SA-11: Developer Testing and Evaluation<br><br>CA-2: Control Assessments<br><br>CA-7: Continuous Monitoring | SA-11 requires testing and evaluation of security and privacy functions during development and before deployment.<br><br>CA-2 requires assessing the effectiveness of implemented controls through testing and examination.<br><br>CA-7 requires ongoing monitoring of control effectiveness. | The MEASURE function emphasizes testing, evaluation metrics, and continuous monitoring - directly aligned with these assessment and testing controls. The cookbook's `eval-plan.yaml`, evidence artifacts, and CI/CD validation gates implement these testing and monitoring requirements for AI-specific properties (fairness, accuracy, robustness). |
| MANAGE | RA-5: Vulnerability Monitoring and Scanning<br><br>SI-2: Flaw Remediation<br><br>IR-4: Incident Handling | RA-5 requires monitoring for system vulnerabilities and flaws.<br><br>SI-2 requires identifying, reporting, and correcting system flaws in a timely manner.<br><br>IR-4 requires implementing incident handling capability including preparation, detection, analysis, containment, recovery. | The MANAGE function involves operational risk treatment, including detecting issues, remediating problems, and responding to incidents. These controls cover vulnerability management (RA-5, SI-2) and incident response (IR-4). The cookbook's evidence-based approach and CI/CD integration support continuous vulnerability detection, and the POA&M generation capability implements flaw tracking (SI-2). |

#### Key Observations

Baseline Categorization: SP 800-53 controls are organized into Low, Moderate, and High impact baselines. The controls shown above are primarily from Moderate and High baselines, reflecting that many AI systems - especially those with societal impact - warrant higher security scrutiny.

Control Families: The controls span multiple families:

- Program Management (PM): Organizational-level governance
- System and Services Acquisition (SA): Lifecycle management and testing
- Risk Assessment (RA): Risk identification and supply chain
- System and Information Integrity (SI): Monitoring and flaw remediation
- Assessment, Authorization, and Monitoring (CA): Control assessment and continuous monitoring
- Incident Response (IR): Incident handling

AI-Specific Considerations: While these are traditional controls, they require AI-specific interpretation:

- RA-3 (Risk Assessment) must consider AI-specific risks like bias, explainability gaps
- SA-11 (Developer Testing) must include fairness metrics, robustness testing, adversarial evaluation
- SI-4 (Monitoring) must detect concept drift, performance degradation, adversarial inputs
- RA-8 (Supply Chain) must address model provenance, training data lineage

OSCAL Alignment: The cookbook's OSCAL export capability produces System Security Plans (SSPs) and Security Assessment Results (SARs) in the format used for SP 800-53 assessments, providing a direct integration path with existing federal compliance processes.

#### How to Use This Mapping

If You're Implementing SP 800-53 for an AI System:

1. Start with Categorization: Determine your system's impact level (Low/Moderate/High) using FIPS 199
2. Identify Baseline Controls: Select the appropriate baseline from SP 800-53 (not all controls apply to all systems)
3. Use AI RMF for Risk Context: Apply the AI RMF MAP function to identify AI-specific risks unique to your system
4. Enhance Controls for AI: Tailor baseline controls with AI-specific parameters (e.g., add fairness testing to SA-11)
5. Document with Cookbook Artifacts: Use the cookbook's `control-mapping.yaml` to document how each 800-53 control is implemented
6. Link Evidence: Connect evidence artifacts to specific controls to demonstrate implementation

If You're a Federal Agency or FedRAMP CSP:

- The cookbook provides a structured way to document AI system security consistent with existing NIST RMF (not AI RMF) processes
- Generated OSCAL artifacts (SSP, SAR) can be imported into GRC tools like GovReady-Q
- The evidence-based approach satisfies the "objective evidence" requirements for control assessments
- Use the cookbook to demonstrate that AI-specific risks are addressed within your existing Authority to Operate (ATO) process

For Commercial Organizations Using 800-53 Voluntarily:

- The controls shown above represent a reasonable starting point for AI system security
- Focus on the controls most relevant to your identified risks (use AI RMF MAP function)
- The cookbook's automation reduces the documentation burden typically associated with 800-53 compliance

Expansion Beyond This Mapping:

- This mapping shows ~12 controls out of 1000+ in the catalog
- For production systems, conduct a full control baseline tailoring exercise
- Refer to the draft NIST AI Control Overlay for additional AI-specific control guidance (see References section)
- Consider other relevant control families: Access Control (AC), Awareness and Training (AT), Configuration Management (CM), Identification and Authentication (IA)

---

### 4.3 NIST AI RMF → EU AI Act (High-Risk Systems)

#### Mapping Overview

The EU AI Act is the world's first comprehensive, legally binding regulation on artificial intelligence. It applies to:

- Providers (developers) of AI systems placed on the EU market
- Deployers (users) of high-risk AI systems in the EU
- Importers and distributors of AI systems in the EU
- Providers of General-Purpose AI (GPAI) models, regardless of location

The Act uses a risk-based approach with the most stringent requirements applying to "high-risk" AI systems as defined in Article 6 and Annex III. These include AI systems used in:

- Biometric identification and categorization
- Critical infrastructure management
- Education and employment
- Access to essential services
- Law enforcement and justice
- Migration and border control

This mapping shows how the NIST AI RMF's functions align with key obligations for high-risk AI systems under the EU AI Act. Organizations using the AI RMF Cookbook's methodology will be building the risk management system and documentation required by the Act.

Critical Disclaimer: This mapping reflects the EU AI Act as enacted. The European Commission, in cooperation with CEN and CENELEC, is developing Regulatory Technical Standards (RTS) that will specify technical details for compliance. These RTS are being developed throughout 2025-2026 and may introduce additional specific requirements. Organizations subject to the Act must monitor the official EU AI Office website for RTS updates.

#### Mapping Table

| NIST AI RMF Function | EU AI Act High-Risk Obligation (Selected Articles) | Article Summary | Alignment Notes |
|---------------------|--------------------------------------------------|----------------|----------------|
| GOVERN | Article 9: Risk management system<br><br>Article 13: Transparency and provision of information to users | Art. 9 requires providers to establish, implement, document, and maintain a risk management system consisting of a continuous iterative process throughout the AI system's lifecycle.<br><br>Art. 13 requires clear and adequate information about the AI system's capabilities, limitations, and intended use to be provided to deployers. | The GOVERN function provides the organizational structure, policies, and governance processes that constitute the "risk management system" required by Article 9. The cookbook's policy templates, defined roles, and documented governance structures implement this requirement. Article 13's transparency obligations are supported by the cookbook's model cards and data cards, which document system characteristics. |
| MAP | Article 10: Data and data governance<br><br>Article 15: Accuracy, robustness and cybersecurity | Art. 10 requires training, validation, and testing datasets to be relevant, representative, and free from errors. Providers must implement data governance practices for bias detection and mitigation.<br><br>Art. 15 requires AI systems to achieve appropriate levels of accuracy, robustness, and cybersecurity throughout their lifecycle. | The MAP function's focus on understanding context, data characteristics, and identifying risks directly supports these requirements. The cookbook's `data-card.yaml` schema implements Article 10's data governance documentation requirements. The `risks.yaml` schema helps identify accuracy, robustness, and cybersecurity risks as required by Article 15. The risk library includes AI-specific threats that must be mapped under these articles. |
| MEASURE | Article 14: Human oversight<br><br>Article 15: Accuracy, robustness and cybersecurity | Art. 14 requires AI systems to be designed to enable effective oversight by natural persons, including the ability to interpret outputs and intervene or interrupt the system.<br><br>Art. 15 (continued from MAP) requires measurement and testing to ensure accuracy, robustness, and security are maintained. | The MEASURE function emphasizes testing, metrics, and evaluation - directly supporting the measurement requirements of Article 15. The cookbook's `eval-plan.yaml` provides a structure for defining metrics and acceptance criteria. Human oversight (Art. 14) is enabled by documented evaluation results and clear metrics that humans can interpret. Evidence artifacts demonstrate that testing has been conducted. |
| MANAGE | Article 61: Post-market monitoring by providers<br><br>Article 12: Record-keeping (logging) | Art. 61 requires providers to establish a post-market monitoring system proportionate to the nature of the AI system and its risks. This includes actively collecting and reviewing data about the system's performance in real-world use.<br><br>Art. 12 requires automatic logging of events during operation, with logs retained in a format that makes them accessible and usable for competent authorities. | The MANAGE function's emphasis on continuous monitoring, risk treatment, and incident response aligns with post-market monitoring obligations (Art. 61). The cookbook's evidence-based approach and continuous validation support ongoing monitoring. Article 12's logging requirements are architectural concerns but are tracked in `control-mapping.yaml` where logging controls are documented. |

#### Key Observations

Conformity Assessment: High-risk AI systems must undergo conformity assessment before being placed on the market (Article 43). Organizations can use the AI RMF Cookbook's documentation and evidence as inputs to this assessment process, but the cookbook alone does not constitute conformity.

Technical Documentation: Article 11 requires extensive technical documentation for high-risk systems. The cookbook's YAML artifacts (model cards, data cards, risk assessments, control mappings) provide much of the required information in structured, machine-readable format. However, additional documentation (algorithms, datasets used, computational resources, testing procedures) may be needed for full compliance.

Prohibited Practices: Article 5 prohibits certain AI practices outright (e.g., social scoring, real-time biometric identification in public spaces). The AI RMF's MAP function should identify if a system approaches prohibited use cases.

Harmonized Standards: The EU AI Act allows for a "presumption of conformity" when harmonized European standards are followed. As RTS are published, the cookbook's schemas and risk library will be updated to explicitly reference them.

Penalties: Non-compliance can result in fines up to €35 million or 7% of global annual turnover (whichever is higher) for the most serious infringements. This creates a strong compliance imperative.

#### How to Use This Mapping

If You're Subject to the EU AI Act as a High-Risk System Provider:

1. Confirm Classification: Verify your AI system is classified as high-risk under Article 6 and Annex III
2. Establish Risk Management System (Art. 9): Use the cookbook's governance artifacts and documented processes as your risk management system foundation
3. Data Governance (Art. 10): Populate `data-card.yaml` with detailed provenance, demographics, and bias analysis for all training/validation datasets
4. Risk Assessment (Art. 9): Use `risks.yaml` to document identified risks, including those related to accuracy, robustness, cybersecurity, and fundamental rights
5. Control Implementation (Art. 15): Document mitigations in `control-mapping.yaml` and link to evidence artifacts proving controls are effective
6. Testing and Validation (Art. 15): Define comprehensive test plans in `eval-plan.yaml` and store test results as evidence artifacts
7. Human Oversight (Art. 14): Document how your system's design enables human intervention - this may be in model card or separate technical documentation
8. Technical Documentation (Art. 11): Use the cookbook's artifacts as the core of your technical documentation dossier, supplemented with algorithm descriptions and other required materials
9. Monitor for RTS: Subscribe to EU AI Office updates and adjust your documentation as RTS are finalized

If You're a Deployer of High-Risk AI Systems:

- You have obligations under Articles 26-27, including ensuring appropriate use and monitoring for risks
- Use the cookbook's documentation to understand the system's characteristics, limitations, and intended use
- Maintain records of your risk assessments and use decisions (your own `risks.yaml` from the deployer perspective)

For Legal and Compliance Teams:

- This mapping provides a starting point, not a complete legal analysis
- Engage with the EU AI Office's guidance documents and Q&A materials
- Consider working with a notified body early in the conformity assessment process
- The cookbook's documentation provides evidence for legal review but does not replace legal advice

Regulatory Technical Standards (RTS) Status (as of January 2025):

The following RTS are in development and will materially impact compliance requirements:

- EN 81/45 (Data Governance): Expected Q2 2025 - will provide specifics for Article 10 compliance
- EN 82/15 (Risk Management): Expected Q3 2025 - will detail risk management system requirements for Article 9
- EN 83/22 (Technical Documentation): Expected Q4 2025 - will specify exact documentation format and content
- EN 84/08 (Logging): Draft published - covers Article 12 automatic recording requirements

Users must check the official EU AI Act website for current RTS status: [https://artificialintelligenceact.eu/standard-setting-overview/](https://artificialintelligenceact.eu/standard-setting-overview/)

---

## 🎯 5. Practical Usage Guidance

### By Role

#### For GRC Teams & Compliance Officers

Your Challenge: Demonstrate that the organization has a systematic, comprehensive approach to AI risk management that satisfies multiple regulatory frameworks without creating redundant documentation.

How These Crosswalks Help You:

1. Audit Defense: When auditors ask "How do you satisfy ISO 42001 Clause 8.2?" you can point to:
   - The AI RMF MAP function implementation
   - Specific `risks.yaml` files for each AI system
   - The crosswalk table showing the explicit alignment

2. Multi-Framework Efficiency: Instead of maintaining separate documentation for ISO, NIST, and EU requirements, you can:
   - Point to the same set of cookbook artifacts
   - Use the crosswalks to show how one risk assessment satisfies multiple standards
   - Reduce documentation burden by 60-70% (one source of truth, multiple compliance targets)

3. Control Gap Analysis: Use the crosswalks to:
   - Map your current AI systems to each framework
   - Identify which RMF functions are under-implemented
   - Prioritize remediation efforts based on regulatory exposure

4. Evidence Organization: The cookbook's evidence-based approach provides:
   - Clear chain of custody from control → implementation → evidence
   - Automated validation that evidence exists (broken links = CI failure)
   - Timestamps and version control for audit trails

Recommended Workflow:

- Maintain a master spreadsheet mapping each AI system to its compliance requirements
- For each system, verify that all four RMF functions are documented
- During audits, provide auditors with the crosswalk document and direct them to relevant YAML files
- Use the OSCAL exports to feed evidence into your GRC tool

---

#### For AI/ML Engineers & Data Scientists

Your Challenge: Understand why you're being asked to fill out "compliance paperwork" and how it relates to building good AI systems.

How These Crosswalks Help You:

1. Context for Requirements: When a GRC team asks you to "document bias mitigation," the crosswalks explain:
   - This satisfies EU AI Act Article 10 (data governance)
   - It maps to ISO 42001 Clause 8.2 (risk assessment)
   - It's captured in the cookbook's `data-card.yaml`
   - *Why it matters*: It prevents legal liability and ensures fairness

2. Minimal Friction Documentation: The cookbook is designed to fit your workflow:
   - YAML files live alongside your code in git
   - Documentation is code, not Word docs
   - CI/CD validates your docs automatically
   - You keep working in your IDE, not a compliance portal

3. Quality = Compliance: Many regulatory requirements are good engineering practices:
   - Testing for robustness (EU AI Act Art. 15) = adversarial testing you should do anyway
   - Monitoring for drift (NIST 800-53 SI-4) = production best practices
   - Data provenance (ISO 42001 Annex A.3) = reproducibility requirements

Recommended Workflow:

- Start each AI project by copying the `examples/rag-assistant/` directory structure
- Fill out model and data cards as you develop (not as afterthought)
- Use `eval-plan.yaml` to define your acceptance criteria and CI tests
- When GRC asks about compliance, send them the crosswalk and your YAML files

---

#### For Security & Risk Managers

Your Challenge: Extend traditional InfoSec risk management to AI systems that have unique threat models and require specialized controls.

How These Crosswalks Help You:

1. Threat Landscape Mapping:
   - The cookbook's risk library incorporates OWASP Top 10 for LLMs
   - Crosswalk to SP 800-53 shows how traditional controls apply (or don't)
   - MAP function helps identify AI-specific threats not in traditional frameworks

2. Control Selection:
   - Use the SP 800-53 crosswalk to identify baseline controls
   - Enhance traditional controls with AI-specific parameters (e.g., "RA-5 Vulnerability Scanning" must include prompt injection detection for LLMs)
   - Document control enhancements in `control-mapping.yaml`

3. Risk Quantification:
   - Use ISO 23894 risk analysis methods (likelihood × impact)
   - Document in cookbook's structured format for consistency
   - Track risk treatment decisions with clear rationale

4. Incident Response:
   - AI-specific incidents (bias complaints, adversarial attacks, model theft) require specialized IR procedures
   - Use cookbook's evidence artifacts to support forensic analysis
   - POA&M generation automates tracking of remediation efforts

Recommended Workflow:

- Conduct threat modeling sessions for each new AI system (MAP function)
- Use the risk library as a checklist, but add system-specific risks
- Map identified risks to existing enterprise controls (SP 800-53, ISO 27001, etc.)
- Create AI-specific control enhancements where traditional controls are insufficient
- Track control effectiveness through evidence artifacts and continuous monitoring

---

#### For Auditors & Assessors

Your Challenge: Assess whether an organization's AI risk management practices are systematic, comprehensive, and effective, especially for frameworks you may not be deeply familiar with.

How These Crosswalks Help You:

1. Assessment Scope Definition:
   - Use the crosswalks to determine which RMF functions are relevant to your assessment scope
   - If assessing ISO 42001, focus on GOVERN, MAP, and MANAGE functions
   - If assessing SP 800-53, focus on specific control families shown in the mapping

2. Evidence Evaluation:
   - The cookbook's evidence artifacts are objective, timestamped proof
   - Broken evidence links = automatic CI failure = control not implemented
   - Version control provides audit trail of changes over time

3. Sampling Strategy:
   - Sample `risks.yaml` files across multiple AI systems to assess consistency
   - Verify that high-risk systems have more comprehensive documentation than low-risk ones
   - Check that evidence artifacts match the claims in `control-mapping.yaml`

4. Framework Interpretation:
   - Use the crosswalks to understand how abstract framework principles (e.g., "trustworthiness") are operationalized
   - The cookbook provides concrete, auditable artifacts rather than vague policy statements

Recommended Assessment Approach:

1. Request access to the organization's cookbook repository
2. Review governance artifacts (policies, roles) for GOVERN function
3. Sample 3-5 AI systems across risk levels
4. For each system, verify:
   - `risks.yaml` exists and contains substantive risk analysis
   - `control-mapping.yaml` links risks to controls with evidence
   - Evidence artifacts are present and timestamped
   - `eval-plan.yaml` defines meaningful metrics with acceptance criteria
5. Test CI/CD pipeline to confirm automated validation is active
6. Review OSCAL exports to assess consistency and completeness

---

### By Use Case

#### "I need to demonstrate NIST SP 800-53 compliance for our AI system"

Your Path:

1. Categorize Your System: Determine impact level (Low/Moderate/High) using FIPS 199
2. Select Baseline Controls: Identify the SP 800-53 baseline controls for your impact level
3. Apply AI RMF MAP Function: Identify AI-specific risks using the cookbook's risk library
4. Tailor Controls: Enhance baseline controls with AI-specific requirements (use the crosswalk for examples)
5. Document with Cookbook:
   - Create `control-mapping.yaml` linking each 800-53 control to your implementation
   - Link evidence artifacts proving implementation
   - Populate `eval-plan.yaml` with testing requirements (SA-11)
6. Generate OSCAL Artifacts: Use the cookbook's `oscal-export.yml` workflow to create SSP and SAR
7. Submit for Assessment: Provide OSCAL artifacts to your assessor (AO for federal systems)

Key Crosswalk Reference: Section 4.2 (NIST AI RMF → SP 800-53 Rev. 5)

Timeline Estimate: 4-8 weeks for initial documentation, depending on system complexity

---

#### "We're subject to the EU AI Act as a high-risk system provider"

Your Path:

1. Confirm High-Risk Classification: Verify your system matches Article 6 and Annex III criteria
2. Establish Risk Management System (Art. 9):
   - Adopt the cookbook as your risk management system foundation
   - Document governance structure (GOVERN function)
3. Data Governance (Art. 10):
   - Complete `data-card.yaml` with detailed provenance and bias analysis
   - Document data quality assurance processes
4. Risk Assessment (Art. 9):
   - Populate `risks.yaml` with all identified risks, including fundamental rights impacts
   - Use the crosswalk to ensure coverage of Art. 10, 14, 15 requirements
5. Technical Documentation (Art. 11):
   - Combine cookbook artifacts (model cards, data cards, risks, controls) with algorithm descriptions
   - Ensure documentation covers all elements listed in Annex IV
6. Testing and Validation (Art. 15):
   - Define comprehensive test plans in `eval-plan.yaml`
   - Store test results as evidence artifacts
   - Demonstrate accuracy, robustness, cybersecurity
7. Human Oversight (Art. 14): Document intervention mechanisms in technical documentation
8. Post-Market Monitoring (Art. 61): Establish continuous monitoring using MEASURE function
9. Conformity Assessment: Engage with a notified body, providing your documentation as evidence
10. Monitor RTS: Subscribe to EU AI Office updates and adjust as standards are finalized

Key Crosswalk Reference: Section 4.3 (NIST AI RMF → EU AI Act)

Critical Resources:

- EU AI Act official text: [https://eur-lex.europa.eu/eli/reg/2024/1689/oj](https://eur-lex.europa.eu/eli/reg/2024/1689/oj)
- EU AI Office: [https://digital-strategy.ec.europa.eu/en/policies/ai-office](https://digital-strategy.ec.europa.eu/en/policies/ai-office)
- RTS tracker: [https://artificialintelligenceact.eu/standard-setting-overview/](https://artificialintelligenceact.eu/standard-setting-overview/)

Timeline Estimate: 3-6 months for full compliance documentation and conformity assessment

---

#### "We want ISO 42001 certification for our AI management system"

Your Path:

1. Understand Scope: ISO 42001 certifies your *management system*, not individual AI systems
2. Establish Management System Structure:
   - Define AI policy, objectives, and scope (ISO 42001 Clause 4-6)
   - Use cookbook's policy templates as starting point
   - Define roles and responsibilities (Clause 5)
3. Implement Operational Controls (Clause 8):
   - Use cookbook artifacts for each AI system in scope
   - Populate all four RMF functions (GOVERN, MAP, MEASURE, MANAGE)
   - Ensure consistency across systems
4. Performance Evaluation (Clause 9):
   - Use `eval-plan.yaml` to define metrics and monitoring
   - Conduct internal audits
   - Review management system effectiveness
5. Continual Improvement (Clause 10):
   - Document nonconformities and corrective actions
   - Use git history and CI/CD to show iterative improvement
6. Engage Certification Body:
   - Select an accredited CB
   - Provide management system documentation and cookbook artifacts as evidence
   - Undergo Stage 1 (documentation review) and Stage 2 (implementation audit)
7. Maintain Certification: Annual surveillance audits, triennial recertification

Key Crosswalk Reference: Section 4.1 (NIST AI RMF → ISO 42001 & 23894)

Additional Requirements Beyond Cookbook:

- Documented AI policy statement
- Management review meeting minutes
- Competency and training records
- Internal audit reports
- Corrective action log

Timeline Estimate: 6-12 months from decision to certification, depending on organization size and maturity

---

#### "We're building an AI governance program from scratch"

Your Path:

1. Start with GOVERN Function:
   - Adopt the cookbook's AI Acceptable Use Policy template
   - Define organizational roles (AI Governance Committee, model owners, etc.)
   - Establish risk tolerance and ethical principles
2. Pilot on One System:
   - Select a non-critical AI system for initial implementation
   - Document using cookbook artifacts (30-day pilot from adoption plan)
   - Build organizational familiarity with the process
3. Build Risk Library:
   - Start with cookbook's pre-built risk library
   - Customize with organization-specific and domain-specific risks
   - Create templates for common system types (classifiers, LLMs, computer vision)
4. Establish CI/CD Integration:
   - Implement the cookbook's GitHub Actions workflows
   - Enforce automated validation (schema errors, broken links, missing evidence)
   - Make documentation a required part of development workflow
5. Scale Across Systems:
   - Onboard additional AI systems incrementally
   - Ensure consistency in documentation quality
   - Build organizational capability through practice
6. Integrate with Enterprise GRC:
   - Deploy GRC adapters for your existing tools
   - Automate evidence flow from development to compliance teams
   - Establish regular review cycles
7. Mature Over Time:
   - Expand risk library based on incident learnings
   - Enhance control library as new mitigations are developed
   - Pursue formal certifications (ISO 42001) when mature

Key Crosswalk Reference: All sections - use crosswalks to understand which external frameworks you're building toward

Recommended Sequence:

- Month 1-2: Governance (policy, roles) + 1 pilot system
- Month 3-4: Risk library development + 2-3 additional systems
- Month 5-6: CI/CD automation + GRC tool integration
- Month 7-12: Scale to all AI systems, pursue certifications

Success Metrics:

- Percentage of AI systems with complete documentation
- Time to document new systems (should decrease with maturity)
- Audit findings (should decrease over time)
- Developer satisfaction (documentation should not be burdensome)

---

## 📚 6. Official Sources & References

### NIST AI Risk Management Framework

- NIST AI RMF 1.0 (Primary Framework): [https://www.nist.gov/itl/ai-risk-management-framework](https://www.nist.gov/itl/ai-risk-management-framework)
- AI RMF Playbook (Implementation Guidance): [https://www.nist.gov/itl/ai-risk-management-framework/nist-ai-rmf-playbook](https://www.nist.gov/itl/ai-risk-management-framework/nist-ai-rmf-playbook)
- NIST AI Resource Center: [https://airc.nist.gov/](https://airc.nist.gov/)

### ISO/IEC Standards

- ISO/IEC 42001:2023 (AI Management System): [https://www.iso.org/standard/81230.html](https://www.iso.org/standard/81230.html)
- ISO/IEC 23894:2023 (AI Risk Management): [https://www.iso.org/standard/77304.html](https://www.iso.org/standard/77304.html)
- ISO/IEC JTC 1/SC 42 (AI Standards Committee): [https://www.iso.org/committee/6794475.html](https://www.iso.org/committee/6794475.html)

### NIST SP 800-53 & OSCAL

- NIST SP 800-53 Rev. 5 (Security and Privacy Controls): [https://csrc.nist.gov/publications/detail/sp/800-53/rev-5/final](https://csrc.nist.gov/publications/detail/sp/800-53/rev-5/final)
- SP 800-53 AI Control Overlay Concept Paper: [https://csrc.nist.gov/csrc/media/Projects/cosais/documents/NIST-Overlays-SecuringAI-concept-paper.pdf](https://csrc.nist.gov/csrc/media/Projects/cosais/documents/NIST-Overlays-SecuringAI-concept-paper.pdf)
- OSCAL Project: [https://pages.nist.gov/OSCAL/](https://pages.nist.gov/OSCAL/)

### EU AI Act

- EU AI Act - Official Text (Regulation 2024/1689): [https://eur-lex.europa.eu/eli/reg/2024/1689/oj](https://eur-lex.europa.eu/eli/reg/2024/1689/oj)
- EU AI Office: [https://digital-strategy.ec.europa.eu/en/policies/ai-office](https://digital-strategy.ec.europa.eu/en/policies/ai-office)
- EU AI Act Regulatory Technical Standards (RTS) Tracker: [https://artificialintelligenceact.eu/standard-setting-overview/](https://artificialintelligenceact.eu/standard-setting-overview/)
- European Commission AI Act Implementation Hub: [https://digital-strategy.ec.europa.eu/en/policies/regulatory-framework-ai](https://digital-strategy.ec.europa.eu/en/policies/regulatory-framework-ai)

### AI Security & Risk Resources

- OWASP Top 10 for Large Language Models: [https://owasp.org/www-project-top-10-for-large-language-model-applications/](https://owasp.org/www-project-top-10-for-large-language-model-applications/)
- MITRE ATLAS (Adversarial Threat Landscape for AI): [https://atlas.mitre.org/](https://atlas.mitre.org/)
- AI Incident Database: [https://incidentdatabase.ai/](https://incidentdatabase.ai/)

### Community & Implementation Resources

- GovReady-Q (Open-source GRC Platform): [https://www.govready.com/](https://www.govready.com/)
- Hugging Face Model Cards: [https://huggingface.co/docs/hub/model-cards](https://huggingface.co/docs/hub/model-cards)
- Google Model Card Toolkit: [https://github.com/tensorflow/model-card-toolkit](https://github.com/tensorflow/model-card-toolkit)

---

## 🔄 7. Limitations & Future Work

### Known Limitations

Mapping Granularity:

- These crosswalks show high-level alignments between frameworks
- Specific organizational contexts may require more detailed control-to-control mappings
- Not all requirements in target frameworks are explicitly shown (e.g., full SP 800-53 catalog has 1000+ controls)

Interpretation Variability:

- Framework alignment involves judgment calls about which requirements correspond
- Different auditors or regulators may interpret requirements differently
- These mappings represent one informed perspective, not universal truth

Rapidly Evolving Standards:

- AI governance standards are actively developing (especially EU AI Act RTS)
- New frameworks and regulations will emerge
- These mappings require periodic review and updates

Framework Gaps:

- Some important AI governance standards are not yet covered (e.g., sector-specific regulations in healthcare, financial services)
- Emerging frameworks (e.g., Singapore's Model AI Governance Framework, UK's AI Regulation) are not included

### Future Enhancements

Planned Updates (Q1-Q2 2025):

1. EU AI Act RTS Integration: As RTS are finalized, add specific technical requirement mappings
2. Expanded SP 800-53 Coverage: Include more control families and AI-specific control enhancements
3. Reverse Mappings: Create index tables showing "ISO 42001 → AI RMF" for users starting from other frameworks
4. Sector-Specific Guidance: Add healthcare (HIPAA, FDA), financial services (FFIEC, GLBA), and government (FedRAMP, StateRAMP) crosswalks

Long-Term Vision:

- Machine-Readable Crosswalks: Export mappings in structured format (JSON, OSCAL) for tool integration
- Control Libraries: Expand beyond mappings to include detailed control implementation guidance
- Maturity Models: Develop assessment rubrics showing progression from basic to advanced compliance
- International Standards: Include additional jurisdictions (Canada, Australia, Singapore, Japan)

### Community Contributions Welcome

The NIST AI RMF Cookbook is open-source and welcomes community contributions to improve these crosswalks:

High-Value Contribution Areas:

- Validation of mappings by practitioners in regulated industries
- Addition of sector-specific regulatory mappings
- Real-world case studies of using these crosswalks for audits
- Translation and localization for non-U.S. contexts
- Correction of errors or outdated information

How to Contribute:

1. Open an issue: [GitHub Issues](https://github.com/vintagedon/nist-ai-rmf-cookbook/issues) with tag `crosswalks`
2. Propose changes via pull request with clear rationale and citations
3. Join discussions: [GitHub Discussions](https://github.com/vintagedon/nist-ai-rmf-cookbook/discussions)

---

## 📋 8. Document Metadata

### Authorship & Maintenance

Primary Author: VintageDon ([GitHub Profile](https://github.com/vintagedon))  
ORCID: [0009-0008-7695-4093](https://orcid.org/0009-0008-7695-4093)  
AI Contributor: Claude (Anthropic) - Document structuring and synthesis  
Methodology: See [Documentation Methodology](methodology.md) for development approach

### Version History

| Version | Date | Changes | Author |
|---------|------|---------|--------|
| 1.0 | 2025-10-10 | Initial crosswalks document release | VintageDon |

### Review Cycle

- Next Scheduled Review: 2025-10-10 (Quarterly)
- Trigger Events for Ad-Hoc Review:
  - Publication of EU AI Act RTS
  - Release of NIST SP 800-53 AI Control Overlay
  - Major updates to ISO 42001/23894
  - Community feedback indicating errors or gaps

### Repository Information

Repository: [nist-ai-rmf-cookbook](https://github.com/vintagedon/nist-ai-rmf-cookbook)  
License: MIT  
Framework Version: NIST AI RMF 1.0 (January 2023)  
Document Type: Reference Documentation

### Citation

If citing this document in academic or professional work:

```markdown
VintageDon. (2025). Framework Crosswalks - NIST AI RMF Cookbook. 
Retrieved from https://github.com/vintagedon/nist-ai-rmf-cookbook/docs/crosswalks.md
```

---

Document Status: Published  
Version: 1.0  
Last Updated: 2025-10-10  
Maintained By: VintageDon + Community Contributors

---

*This document is part of the NIST AI RMF Cookbook - practical, framework-aligned templates for AI governance.*  
Return to [Project Root](../README.md) | Review [Methodology](methodology.md)
