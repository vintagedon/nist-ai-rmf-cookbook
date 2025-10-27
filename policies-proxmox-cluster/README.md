<!--
---
title: "Policies - Proxmox Astronomy Cluster"
description: "Production AI governance framework for the Proxmox Astronomy Cluster - the dogfooding implementation"
owner: "VintageDon - https://github.com/vintagedon"
orcid: "https://orcid.org/0009-0008-7695-4093"
ai_contributor: "Claude (Anthropic)"
lastReviewed: "2025-10-26"
version: "2.0"
status: "Published"
tags:
- type: directory-guide
- domain: ai-governance
- framework: nist-ai-rmf
- artifact-type: production-policies
related_documents:
- "[NIST AI RMF Cookbook](../README.md)"
- "[Policy Templates](../policy-templates/README.md)"
type: directory-guide
---
-->

---

# 🏛️ Policies - Proxmox Astronomy Cluster

Production AI governance framework actively deployed and operational in the Proxmox Astronomy Cluster. This is where theory meets practice - the dogfooding implementation that proves the templates work.

---

## 📖 1. Overview

### What This Directory Contains

This directory houses the complete AI governance framework for the Proxmox Astronomy Cluster, including 3 policy documents, 3 technical standards, 10 risk scenarios, 8 deployed model cards, 7 supporting appendices, and placeholder directories for future schemas. This is a living, operational governance system - not theoretical templates.

### Purpose & Scope

Primary Purpose: Demonstrate real-world AI governance implementation that:

- Serves as the working policy framework for actual AI infrastructure
- Provides concrete examples for organizations building similar programs
- Validates the practicality of policy templates through active use
- Documents lessons learned from operational deployment
- Establishes patterns for multi-framework compliance

Dogfooding Philosophy:
Everything in this directory is actively used to govern the Proxmox Astronomy Cluster:

- Policies guide actual deployment decisions
- Standards enforce real technical controls
- Risk scenarios inform actual risk management
- Model cards document deployed systems
- Appendices support operational governance

Then we templatize it. Content proven here becomes templates in `../policy-templates/` for broader adoption.

Scope Coverage:

- Governance Policies: AI governance policy, acceptable use policy, model registry
- Technical Standards: Risk assessment, secure AI systems, transparency/disclosure (in `standards/` subdirectory)
- Operational Documentation: Model cards tracking deployed systems
- Risk Management: 10 risk scenarios (R01-R10) specific to cluster architecture
- Model Cards: 8 deployed AI systems with configuration and controls
- Supporting Materials: Appendices with framework crosswalks, glossaries, inventories, governance structures

### Target Audience

Primary Users:

- Proxmox Cluster Operations: Teams managing AI infrastructure day-to-day
- Governance Practitioners: Those building similar programs seeking real examples
- Compliance Officers: Requiring evidence of working governance systems
- AI Researchers: Understanding practical governance implementation
- Template Users: Seeing how templates are customized and deployed

Prerequisites:

- Understanding of Proxmox Cluster architecture (for operational use)
- Familiarity with NIST AI RMF (for governance patterns)
- Knowledge of AI system risks and controls (for risk management)

---

## 📂 2. Files & Structure

### Directory Overview

```markdown
policies-proxmox-cluster/
├── 📄 README.md                                     # This file
│
├── 📋 Core Policies
│   ├── 01-ai-governance-policy.md                   # High-level governance framework
│   ├── ai-acceptable-use-policy-formal.md           # Acceptable use framework
│   └── ai-model-registry.md                         # Model inventory management
│
├── 📁 Technical Standards
│   └── standards/                                    # Technical implementation standards
│       ├── README.md
│       ├── 02-ai-risk-assessment-standard.md        # Risk assessment methodology
│       ├── 03-secure-ai-systems-standard.md         # Security controls for AI
│       └── 04-ai-transparency-disclosure-standard.md # Transparency requirements
│
└── 📁 Supporting Directories
    ├── appendices/                                  # 7 appendices (framework crosswalk, glossaries, inventories, charters)
    ├── model-cards/                                 # 8 deployed AI systems documented
    ├── risk-scenarios/                              # 10 risk scenarios (R01-R10)
    └── schemas/                                     # JSON schemas (post-0.2)
```

### Policy & Standard Descriptions

#### Core Governance Policies

📄 01-ai-governance-policy.md
High-level AI governance framework establishing organizational approach to AI risk management. Defines:

- Governance structure and roles (AI Review Board, ownership model)
- Policy scope and applicability (what systems are covered)
- Risk management approach (aligned with NIST AI RMF)
- Compliance requirements (multi-framework obligations)
- Policy review and update procedures

Source for Template: `../policy-templates/` (this policy becomes template foundation)

Framework Alignment: NIST AI RMF Govern function, ISO 42001 Clauses 5-6, Colorado SB24-205 Section 6-1-1704

---

📄 ai-acceptable-use-policy-formal.md
Defines acceptable and prohibited uses of AI systems within the Proxmox Cluster. Covers:

- Permitted AI applications and boundaries
- Prohibited use cases (high-risk scenarios, restricted applications)
- User responsibilities and accountability
- Approval processes for new AI deployments
- Enforcement and violation handling

Real-World Application: Governs actual AI agent deployments, tool permissions, data access decisions

Source for Template: `../policy-templates/ai-acceptable-use-policy-template.md`

Framework Alignment: NIST AI RMF Govern function, ISO 42001 Clause 6.1, EU AI Act Article 5

---

📄 ai-model-registry.md
Centralized inventory of AI models deployed in the Proxmox Cluster. Tracks:

- Model metadata (vendor, version, capabilities, costs)
- Deployment status (production, testing, decommissioned)
- Risk profiles and control mappings
- Compliance framework alignments
- Lifecycle management (deployment dates, update schedules)

Real-World Application: Living document updated with every model deployment or change

Cross-Reference: Links to model cards in `model-cards/` subdirectory and broader library in `../model-cards/`

Source for Template: `../policy-templates/ai-model-registry-template.md`

#### Technical Standards

See `standards/` subdirectory for complete documentation:

📄 standards/02-ai-risk-assessment-standard.md
Methodology for assessing AI system risks throughout their lifecycle. Includes:

- Risk assessment framework (likelihood + impact matrix)
- Assessment triggers (deployment, updates, incidents)
- Risk rating scales and criteria
- Documentation requirements (using risk scenario template)
- Approval thresholds (what level requires board review)

Real-World Application: Used to assess every AI deployment before approval, updated after incidents

---

📄 standards/03-secure-ai-systems-standard.md
Technical security controls for AI development, deployment, and operation. Addresses:

- Data security (egress controls, classification, encryption)
- Model security (poisoning, evasion, extraction defenses)
- Prompt injection and adversarial input protection
- Access controls and authentication (least privilege, MFA)
- Logging, monitoring, and incident response

Real-World Application: Enforces specific controls on MCP servers, API access, data flows, agent permissions

---

📄 standards/04-ai-transparency-disclosure-standard.md
Requirements for AI system transparency, explainability, and user disclosure. Covers:

- Model card documentation requirements (what must be documented)
- User notification of AI interactions (when humans must know)
- Explainability standards (when interpretability required)
- Bias testing and disclosure obligations
- Audit trails and decision logging

Real-World Application: Requires model cards for all deployed systems, informs users when AI generates content

### Supporting Directory Structure

📁 standards/ - [View README](standards/README.md)
3 active technical standards:

- Risk assessment methodology
- Security controls for AI systems
- Transparency and disclosure requirements

📁 appendices/ - [View README](appendices/README.md)
7 appendices providing reference materials:

- Framework crosswalk (multi-framework compliance mapping)
- Glossaries (foundational terms)
- Tool/model inventory (comprehensive asset tracking)
- Review board charter (governance structure)
- Version control (change tracking)
- Decision log (key choices and rationale)
- References (external resources)

📁 model-cards/ - [View README](model-cards/README.md)
8 deployed AI systems documented:

- Anthropic Claude Sonnet 4.5 (primary infrastructure agent)
- Anthropic Claude 4.2 Opus (complex reasoning)
- Google Gemini Pro 2.5 (multi-modal analysis)
- Google Gemini CLI variants (automation)
- Gemini Deep Research (advanced research)
- Zhipu GLM-4 (evaluation)

📁 risk-scenarios/ - [View README](risk-scenarios/README.md)
10 risk scenarios (R01-R10):

- R01: Data egress exposure
- R02: Secrets/credentials leakage
- R03: Prompt injection & tool abuse
- R04: PR poisoning & infrastructure drift
- R05: Model extension supply chain
- R06: Identity & access drift
- R07: Hallucination & inaccurate output
- R08: Legal & compliance gaps
- R09: Cost & tool sprawl
- R10: Logging blind spots

📁 schemas/ - Post-0.2
Will contain JSON schemas for policy automation and validation.

---

## 🎯 3. Framework Alignment

### NIST AI RMF Implementation

This policy framework provides complete coverage of all five AI RMF functions:

| Function | Implementation | Key Documents |
|----------|---------------|---------------|
| Govern | AI governance structure, oversight board, policy framework | 01-ai-governance-policy.md, ai-acceptable-use-policy-formal.md, appendices/appendix-d-review-board-charter.md |
| Map | Context documentation, stakeholder identification, risk scenarios | risk-scenarios/ (10 scenarios), model-cards/ (deployment context), appendices/appendix-a-ai-framework-crosswalk.md |
| Measure | Risk assessment methodology, metrics definition | standards/02-ai-risk-assessment-standard.md, risk-scenarios/ (impact/likelihood ratings) |
| Manage | Security controls, risk treatment, operational procedures | standards/03-secure-ai-systems-standard.md, risk-scenarios/ (control mappings), model-cards/ (deployed controls) |
| Monitor | Logging requirements, audit trails, change tracking | standards/04-ai-transparency-disclosure-standard.md, appendices/appendix-e-version-control.md, risk-scenarios/R10-logging-blind-spots.md |

### Multi-Framework Compliance

ISO/IEC 42001:2023 (AI Management System):
This policy framework satisfies ISO 42001 requirements:

- Clause 4: Context of the organization (appendices/appendix-a)
- Clause 5: Leadership (01-ai-governance-policy, appendix-d)
- Clause 6: Planning (standards/02-ai-risk-assessment-standard, risk-scenarios/)
- Clause 7: Support (appendices/, model-cards/)
- Clause 8: Operation (standards/03-secure-ai-systems-standard, 04-transparency-disclosure)
- Clause 9: Performance evaluation (appendices/appendix-e, appendix-h)
- Clause 10: Improvement (decision log, version control)

NIST SP 800-53 Rev 5 (Security Controls):
Key control families addressed:

- PL-2: System Security Plan (policies and standards collectively)
- RA-3: Risk Assessment (standards/02-ai-risk-assessment-standard, risk-scenarios/)
- CM-8: System Component Inventory (ai-model-registry, appendix-c)
- AC-2: Account Management (standards/03-secure-ai-systems-standard)
- AU-2: Event Logging (standards/03-secure-ai-systems-standard, R10)
- SA-9: External System Services (model-cards/, standards/03-secure-ai-systems-standard)

CIS Controls v8:
Safeguards implemented:

- Control 1: Asset Inventory (ai-model-registry, appendix-c)
- Control 4: Secure Configuration (standards/03-secure-ai-systems-standard)
- Control 5: Account Management (standards/03-secure-ai-systems-standard, R06)
- Control 6: Access Control (standards/03-secure-ai-systems-standard, ai-acceptable-use-policy)
- Control 8: Audit Log Management (R10, standards/03-secure-ai-systems-standard)
- Control 16: Application Security (standards/03-secure-ai-systems-standard, R03, R04)

EU AI Act Compliance:
Article coverage:

- Article 5: Prohibited AI practices (ai-acceptable-use-policy)
- Article 9: Risk management system (01-ai-governance-policy, standards/02-ai-risk-assessment-standard)
- Article 10: Data and data governance (standards/03-secure-ai-systems-standard)
- Article 11: Technical documentation (model-cards/, appendices/)
- Article 13: Transparency obligations (standards/04-ai-transparency-disclosure-standard)

Colorado SB24-205 (AI Deployment Requirements):
Section compliance:

- Section 6-1-1703: Impact assessments (standards/02-ai-risk-assessment-standard, risk-scenarios/)
- Section 6-1-1704: Risk management policy (01-ai-governance-policy)
- Section 6-1-1706: Disclosure requirements (standards/04-ai-transparency-disclosure-standard)

---

## 📚 4. Related Resources

### Within This Repository

Template Source:

- [📁 Policy Templates](../policy-templates/README.md) - Generic versions of these policies for reuse
- [📁 Standards Templates](../standards/README.md) - Generic technical standards

Documentation Resources:

- [📁 Model Card Library](../model-cards/README.md) - Vendor model documentation
- [📁 Documentation Templates](../docs/article-templates/README.md) - Templates for creating documentation
- [📁 NIST AI RMF Cookbook](../README.md) - Repository root and overview

Supporting Directories (within this policy framework):

- [📁 Appendices](appendices/README.md) - Framework crosswalks, glossaries, inventories
- [📁 Model Cards](model-cards/README.md) - Deployed AI system documentation
- [📁 Risk Scenarios](risk-scenarios/README.md) - AI threat library (R01-R10)
- [📁 Standards](standards/README.md) - Technical implementation standards

### Using This Policy Framework

For Proxmox Cluster Operations:

1. Reference policies before AI deployments or changes
2. Follow risk assessment standard for new systems
3. Implement security controls from standards
4. Document deployed systems in model registry
5. Update appendices as infrastructure evolves

For Building Your Own Governance:

1. Review these policies as working examples
2. Adapt templates from `../policy-templates/` and `../standards/`
3. Customize for your organizational context
4. Start small (acceptable use + risk assessment)
5. Build incrementally based on operational needs

For Compliance & Audit:

1. Use framework crosswalk (appendix-a) to map requirements
2. Reference model cards as system documentation
3. Show risk scenarios as threat analysis
4. Demonstrate controls via security standard
5. Provide version history as change management evidence

### External Resources

NIST AI Resources:

- [NIST AI Risk Management Framework](https://www.nist.gov/itl/ai-risk-management-framework) - Official AI RMF
- [NIST AI RMF Playbook](https://airc.nist.gov/AI_RMF_Knowledge_Base/Playbook) - Implementation guidance
- [NIST Trustworthy AI](https://www.nist.gov/artificial-intelligence) - Broader AI standards

Compliance Frameworks:

- [ISO/IEC 42001:2023](https://www.iso.org/standard/81230.html) - AI management system standard
- [EU AI Act](https://artificialintelligenceact.eu/) - European AI regulation
- [Colorado AI Bill (SB24-205)](https://leg.colorado.gov/bills/sb24-205) - State AI requirements
- [NIST SP 800-53 Rev 5](https://csrc.nist.gov/publications/detail/sp/800-53/rev-5/final) - Security controls
- [CIS Controls v8](https://www.cisecurity.org/controls/v8) - Cybersecurity safeguards

AI Governance Best Practices:

- [Partnership on AI](https://partnershiponai.org/) - AI governance resources
- [OECD AI Principles](https://www.oecd.org/digital/artificial-intelligence/) - International frameworks
- [AI Governance Institute](https://aigovernance.org/) - Governance implementation patterns

### Contributing

Updating Proxmox Policies:

- Follow version control procedures (appendix-e)
- Document decisions (appendix-h decision log)
- Update framework crosswalk if compliance changes
- Sync templates in `../policy-templates/` and `../standards/` with major changes
- Maintain backwards compatibility or document breaking changes

Suggesting Improvements:

- Open issue with label `policies-proxmox-cluster`
- Describe operational experience and lessons learned
- Propose specific changes with justification
- Show how change improves governance effectiveness

Sharing Adaptations:

- Fork repository and customize for your organization
- Share anonymized lessons learned in discussions
- Contribute improvements back via pull requests
- Help others avoid pitfalls you encountered

### Community & Support

Questions about This Framework:

- Open an issue: [GitHub Issues](https://github.com/vintagedon/nist-ai-rmf-cookbook/issues) with label `policies-proxmox-cluster`
- Start a discussion: [GitHub Discussions](https://github.com/vintagedon/nist-ai-rmf-cookbook/discussions)

Report Issues:

- Tag with: `bug`, `policies-proxmox-cluster`, `[policy-name]`
- Include: Policy/standard filename, issue description, operational impact

Request Guidance:

- Tag discussion with: `question`, `policies-proxmox-cluster`
- Describe: Your context, specific challenge, what you've tried

---

## 📋 5. Documentation Metadata

### Authorship & Collaboration

Primary Author: VintageDon ([GitHub Profile](https://github.com/vintagedon))  
ORCID: [0009-0008-7695-4093](https://orcid.org/0009-0008-7695-4093)  
Methodology: See [Documentation Methodology](../docs/methodology.md) for development approach

### Version History

| Version | Date | Changes | Author |
|---------|------|---------|--------|
| 1.0 | 2025-10-26 | Initial Proxmox Cluster policy framework documentation | VintageDon |
| 2.0 | 2025-10-26 | Updated for standards reorganization into subdirectory | VintageDon |

### Framework Statistics

- Policies: 3 (governance, acceptable use, model registry)
- Standards: 3 (risk assessment, security, transparency - in `standards/` subdirectory)
- Risk Scenarios: 10 (R01-R10)
- Model Cards: 8 deployed systems
- Appendices: 7 supporting documents
- Framework Coverage: NIST AI RMF, ISO 42001, NIST SP 800-53, CIS Controls, EU AI Act, Colorado SB24-205

### Repository Information

Repository: [nist-ai-rmf-cookbook](https://github.com/vintagedon/nist-ai-rmf-cookbook)  
License: MIT  
Framework Version: NIST AI RMF 1.0 (January 2023)  
Status: Active - Production governance framework in operational use

---

Document Version: 2.0 | Last Updated: 2025-10-26 | Status: Published | Directory: policies-proxmox-cluster
