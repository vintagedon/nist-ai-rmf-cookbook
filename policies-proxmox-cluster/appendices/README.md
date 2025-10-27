<!--
---
title: "Appendices - Supporting Documentation"
description: "Reference materials, glossaries, crosswalks, and governance artifacts supporting Proxmox Cluster AI policies"
owner: "VintageDon - https://github.com/vintagedon"
orcid: "https://orcid.org/0009-0008-7695-4093"
ai_contributor: "Claude (Anthropic)"
lastReviewed: "2025-10-26"
version: "1.0"
status: "Published"
tags:
- type: directory-guide
- domain: policy-appendices
- framework: nist-ai-rmf
- artifact-type: reference-materials
related_documents:
- "[Policies - Proxmox Cluster](../README.md)"
- "[NIST AI RMF Cookbook](../../README.md)"
type: directory-guide
---
-->

---

# 📚 Appendices

Supporting reference materials, framework crosswalks, glossaries, and governance artifacts that complement the Proxmox Astronomy Cluster AI policies.

---

## 📖 1. Overview

### What This Directory Contains

This directory houses 7 appendices providing essential reference materials, definitions, inventories, and governance structures that support the policy framework implemented in the Proxmox Astronomy Cluster. These appendices serve as living documents that evolve alongside the operational environment.

### Purpose & Scope

Primary Purpose: Provide authoritative reference materials that enable:

- Framework alignment and compliance mapping
- Consistent terminology across all policies
- Tool and model inventory tracking
- Governance structure documentation
- Version control and decision tracking
- External resource compilation

Scope Coverage:

- Framework Mappings: Multi-framework crosswalks showing compliance alignment
- Terminology: Glossaries defining AI governance terms consistently
- Asset Tracking: Inventories of AI tools and models in use
- Governance: Board charters and organizational structures
- Change Management: Version control and decision logs
- Resources: Curated external references and standards

### Target Audience

Primary Users:

- Policy implementers needing reference definitions
- Auditors requiring compliance evidence
- Governance board members reviewing decisions
- Technical teams managing AI systems
- Compliance officers mapping framework requirements

Prerequisites:

- Familiarity with Proxmox Cluster policies (parent directory)
- Understanding of AI governance concepts
- Access to policy documents referencing these appendices

---

## 📂 2. Files & Structure

### Directory Overview

```markdown
appendices/
├── 📄 README.md                                          # This file
│
├── 📊 Framework & Compliance
│   └── appendix-a-ai-framework-crosswalk.md             # Multi-framework compliance mapping
│
├── 📖 Terminology & Definitions
│   └── appendix-b-reference-foundational-glossary.md    # Core AI governance terms
│
├── 📋 Asset Inventories
│   └── appendix-c-tool-model-inventory.md               # AI tools and models in use
│
├── 🏛️ Governance Structures
│   └── appendix-d-review-board-charter.md               # AI review board charter and composition
│
├── 📝 Change Management
│   ├── appendix-e-version-control.md                    # Policy version tracking
│   └── appendix-h-decision-log.md                       # Key decisions and rationale
│
└── 🔗 External Resources
    └── appendix-g-references-resources.md               # Curated external standards and guidance
```

### Appendix Descriptions

#### Framework & Compliance

📄 appendix-a-ai-framework-crosswalk.md
Comprehensive mapping showing how Proxmox Cluster policies align with multiple compliance frameworks simultaneously. Includes:

- NIST AI RMF 1.0 function and subcategory mappings
- ISO/IEC 42001:2023 clause alignments
- NIST SP 800-53 Rev 5 control mappings
- CIS Controls v8 safeguard references
- EU AI Act article compliance
- Colorado SB24-205 requirement tracking

Purpose: Demonstrate multi-framework compliance, support audit activities, identify coverage gaps

Key Feature: Single-source-of-truth for "which policy satisfies which requirement"

#### Terminology & Definitions

📄 appendix-b-reference-foundational-glossary.md
Authoritative definitions for core AI governance terminology used across all Proxmox Cluster policies. Covers:

- AI system lifecycle terms
- Risk management vocabulary
- Technical AI/ML concepts
- Governance and oversight terminology
- Compliance and regulatory terms

Source: Based on NIST AI RMF glossary with organization-specific adaptations

Purpose: Ensure consistent terminology across policies, standards, and communications

#### Asset Inventories

📄 appendix-c-tool-model-inventory.md
Living inventory of AI tools, models, and systems deployed in the Proxmox Astronomy Cluster. Tracks:

- AI models in production (links to model cards in `../model-cards/`)
- Development and testing tools
- Deployment platforms and infrastructure
- Integration points and dependencies
- Ownership and support contacts
- Risk classifications

Purpose: Maintain comprehensive asset inventory for governance and security, support change management

Update Frequency: Quarterly reviews with ad-hoc updates for new deployments

Integration: Cross-references model cards in `../model-cards/`

#### Governance Structures

📄 appendix-d-review-board-charter.md
Charter establishing the AI Review Board for the Proxmox Astronomy Cluster. Defines:

- Board mission and authority
- Membership composition and selection
- Meeting cadence and procedures
- Decision-making processes
- Escalation pathways
- Reporting requirements

Purpose: Formalize governance structure, clarify roles and responsibilities, establish accountability

Key Decisions: What requires board review, approval thresholds, exception processes

#### Change Management

📄 appendix-e-version-control.md
Comprehensive version history for all policies, standards, and appendices in the Proxmox Cluster framework. Tracks:

- Document versions and effective dates
- Change descriptions and rationale
- Approval records
- Deprecation notices
- Migration guidance for breaking changes

Purpose: Maintain audit trail, support compliance evidence, enable rollback if needed

Format: Tabular with document name, version, date, changes, approver

---

📄 appendix-h-decision-log.md
Log of significant governance and technical decisions made during policy implementation. Documents:

- Decision context and alternatives considered
- Chosen approach and justification
- Risk trade-offs accepted
- Implementation timeline
- Review date for reassessment

Purpose: Capture institutional knowledge, support future reviews, justify choices to auditors

Examples: Risk tolerance levels, tool selection rationale, control implementation priorities

#### External Resources

📄 appendix-g-references-resources.md
Curated collection of authoritative external standards, frameworks, guidance, and research relevant to AI governance. Organized by:

- Regulatory frameworks (NIST, ISO, EU AI Act)
- Industry standards (CIS, OWASP)
- Research publications
- Vendor documentation
- Community resources

Purpose: Provide authoritative sources, support continuous learning, enable framework updates

Maintenance: Reviewed quarterly, updated as new standards released

---

## 🎯 3. Framework Alignment

### NIST AI RMF Support

Appendices support all five AI RMF functions by providing reference infrastructure:

| Function | Appendix Support | How It Helps |
|----------|-----------------|--------------|
| Govern | Review Board Charter, Decision Log | Establishes governance structure and decision accountability |
| Map | Framework Crosswalk, Tool Inventory | Documents context, stakeholders, and system characteristics |
| Measure | Glossary, References | Provides consistent measurement terminology and benchmarks |
| Manage | Version Control, Decision Log | Tracks risk responses and policy evolution |
| Monitor | Tool Inventory, Version Control | Enables tracking of system changes and policy effectiveness |

### Multi-Framework Compliance

ISO/IEC 42001 (AI Management System):

- Clause 7.4: Documented information (all appendices contribute)
- Clause 7.5: Control of documented information (Version Control appendix)
- Clause 5.3: Organizational roles and responsibilities (Review Board Charter)

NIST SP 800-53 (Security Controls):

- PL-1: Policy and Procedures (Version Control, Decision Log)
- CM-8: System Component Inventory (Tool/Model Inventory)
- PM-9: Risk Management Strategy (Framework Crosswalk)

EU AI Act:

- Article 11: Technical documentation (Tool Inventory)
- Article 9: Risk management system (Framework Crosswalk)
- Recital 60: Documentation requirements (all appendices)

Colorado SB24-205:

- Section 6-1-1704(2): Risk management policy (Framework Crosswalk)
- General documentation requirements (all appendices support compliance evidence)

---

## 📚 4. Related Resources

### Within This Repository

Parent Directory:

- [📁 Policies - Proxmox Cluster](../README.md) - Main policy framework these appendices support

Related Policy Directories:

- [📁 Standards](../standards/README.md) - Technical standards using terminology from glossaries
- [📁 Risk Scenarios](../risk-scenarios/README.md) - Risk library using framework crosswalk

Model Documentation:

- [📁 Proxmox Model Cards](../model-cards/README.md) - Model cards referenced by Tool Inventory
- [📁 Model Card Library](../../model-cards/README.md) - Broader model card collection

Repository Resources:

- [📁 Policy Templates](../../policy-templates/README.md) - Templates that may reference these appendices
- [📁 NIST AI RMF Cookbook](../../README.md) - Repository root and overview

### Using Appendices

For Policy Implementation:

1. Reference Framework Crosswalk to understand which policies satisfy which requirements
2. Use Glossary to ensure consistent terminology in communications
3. Maintain Tool Inventory as systems are deployed or retired
4. Document key choices in Decision Log for future reference
5. Track all changes in Version Control

For Audits & Assessments:

1. Framework Crosswalk provides compliance mapping evidence
2. Version Control demonstrates change management rigor
3. Decision Log shows risk-informed decision making
4. Review Board Charter proves governance structure exists
5. Tool Inventory documents system boundaries and characteristics

For Governance Board:

1. Review Board Charter defines authority and process
2. Decision Log tracks board actions and rationale
3. Tool Inventory informs risk discussions
4. Framework Crosswalk shows regulatory obligations
5. References provide access to authoritative guidance

### External Resources

Framework Documentation:

- [NIST AI Risk Management Framework](https://www.nist.gov/itl/ai-risk-management-framework) - Official AI RMF documentation
- [ISO/IEC 42001:2023](https://www.iso.org/standard/81230.html) - AI management system standard
- [NIST SP 800-53 Rev 5](https://csrc.nist.gov/publications/detail/sp/800-53/rev-5/final) - Security control catalog
- [CIS Controls v8](https://www.cisecurity.org/controls/v8) - Cybersecurity safeguards

Regulatory Resources:

- [EU AI Act Official Text](https://artificialintelligenceact.eu/) - European AI regulation
- [Colorado AI Bill (SB24-205)](https://leg.colorado.gov/bills/sb24-205) - State AI requirements

Governance Best Practices:

- [NIST AI RMF Playbook](https://airc.nist.gov/AI_RMF_Knowledge_Base/Playbook) - Implementation guidance
- [OECD AI Principles](https://www.oecd.org/digital/artificial-intelligence/) - International governance frameworks

### Contributing

Updating Appendices:

- Framework Crosswalk: Update when new regulations released or policies added
- Glossary: Propose new terms via issue with source definition
- Tool Inventory: Update quarterly or when deployments change
- Review Board Charter: Requires board approval for changes
- Version Control: Update with every policy/standard revision
- Decision Log: Add entries as significant decisions made
- References: Suggest additions via pull request with justification

Quality Standards:

- Authoritative sources cited for all definitions and frameworks
- Version control maintained for all changes
- Cross-references validated (no broken links)
- Regular review schedule documented and followed

### Community & Support

Questions about Appendices:

- Open an issue: [GitHub Issues](https://github.com/vintagedon/nist-ai-rmf-cookbook/issues) with label `appendices`
- Start a discussion: [GitHub Discussions](https://github.com/vintagedon/nist-ai-rmf-cookbook/discussions)

Report Issues:

- Tag with: `bug`, `appendices`, `[appendix-name]`
- Include: Appendix filename, issue description, suggested correction

Suggest Additions:

- Tag with: `enhancement`, `appendices`
- Describe: Gap being filled, proposed content, use case

---

## 📋 5. Documentation Metadata

### Authorship & Collaboration

Primary Author: VintageDon ([GitHub Profile](https://github.com/vintagedon))  
ORCID: [0009-0008-7695-4093](https://orcid.org/0009-0008-7695-4093)  
Methodology: See [Documentation Methodology](../../docs/methodology.md) for development approach

### Version History

| Version | Date | Changes | Author |
|---------|------|---------|--------|
| 1.0 | 2025-10-26 | Initial appendices documentation for Proxmox Cluster policies | VintageDon |

### Appendix Statistics

- Total Appendices: 7
- Framework Mappings: 1 (crosswalk covering 6+ frameworks)
- Glossaries: 1 (foundational)
- Inventories: 1 (tools and models)
- Governance Documents: 1 (review board charter)
- Change Tracking: 2 (version control + decision log)
- External Resources: 1 (curated references)

### Repository Information

Repository: [nist-ai-rmf-cookbook](https://github.com/vintagedon/nist-ai-rmf-cookbook)  
License: MIT  
Framework Version: NIST AI RMF 1.0 (January 2023)  
Status: Active - Updated as policies evolve

---

Document Version: 1.0 | Last Updated: 2025-10-26 | Status: Published | Directory: policies-proxmox-cluster/appendices
