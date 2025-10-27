<!--
---
title: "Policy Templates - Reusable Governance Artifacts"
description: "Generic, customizable templates for AI governance policies, standards, and documentation derived from production implementations"
owner: "VintageDon - https://github.com/vintagedon"
orcid: "https://orcid.org/0009-0008-7695-4093"
ai_contributor: "Claude (Anthropic)"
lastReviewed: "2025-10-26"
version: "1.0"
status: "Published"
tags:
- type: directory-guide
- domain: policy-templates
- framework: nist-ai-rmf
- artifact-type: templates
related_documents:
- "[NIST AI RMF Cookbook](../README.md)"
- "[Proxmox Policies](../policies-proxmox-cluster/README.md)"
type: directory-guide
---
-->

---

# 📝 Policy Templates

Generic, reusable templates for AI governance policies and documentation. These templates are derived from production implementations in the Proxmox Astronomy Cluster and generalized for broad adoption.

---

## 📖 1. Overview

### What This Directory Contains

This directory houses 4 policy and documentation templates that organizations can customize for their AI governance programs. These templates represent battle-tested patterns extracted from the working Proxmox Cluster governance framework and made generic for reuse.

### Purpose & Scope

Primary Purpose: Accelerate AI governance implementation by providing:

- Ready-to-customize policy templates
- Proven documentation patterns
- Framework-aligned structures
- Multi-framework compliance guidance
- Real-world-validated approaches

Template Philosophy:

1. Derive from Production: Templates extracted from `../policies-proxmox-cluster/` working implementations
2. Generalize Carefully: Remove organization-specific details while preserving essential patterns
3. Maintain Flexibility: Support customization without losing compliance alignment
4. Document Rationale: Explain why sections exist and when to customize vs. keep

Scope Coverage:

- Governance Policies: High-level acceptable use policies
- Operational Policies: Model registry and inventory management
- Risk Documentation: Risk scenario templates
- Supporting Documentation: Framework alignment and customization guidance

### Target Audience

Primary Users:

- Organizations building AI governance programs from scratch
- Policy developers seeking proven starting points
- Compliance officers ensuring framework alignment
- AI governance practitioners avoiding reinventing solutions
- Consultants implementing governance for clients

Prerequisites:

- Basic understanding of AI governance concepts
- Familiarity with organizational policy development processes
- Knowledge of relevant compliance frameworks (NIST AI RMF, ISO, regulations)

---

## 📂 2. Files & Structure

### Directory Overview

```markdown
policy-templates/
├── 📄 README.md                                    # This file
│
├── 📋 Governance Templates
│   └── ai-acceptable-use-policy-template.md       # Acceptable use framework template
│
├── 📋 Operational Templates
│   └── ai-model-registry-template.md              # Model inventory template
│
└── 📋 Risk Documentation Templates
    └── risk-scenario-template.md                  # Risk scenario documentation template
```

### Template Descriptions

#### Governance Templates

📄 ai-acceptable-use-policy-template.md
Generic template for defining acceptable and prohibited uses of AI systems. Includes:

- Policy structure and required sections
- Placeholder text with customization guidance
- Framework alignment mappings (NIST AI RMF, ISO 42001, EU AI Act)
- Common use case categories to consider
- Approval process patterns
- Enforcement approach options

Source Implementation: `../policies-proxmox-cluster/ai-acceptable-use-policy-formal.md`

Customization Points:

- Organizational context and scope
- Specific prohibited use cases
- Approval thresholds and authority levels
- Enforcement mechanisms and consequences
- Review and exception processes

Framework Alignment:

- NIST AI RMF: Govern function (policy framework)
- ISO/IEC 42001: Clause 6.1 (actions to address risks)
- EU AI Act: Article 5 (prohibited practices)
- Colorado SB24-205: General governance requirements

Key Customization Decisions:

1. How broad or narrow should scope be?
2. What approval process matches organizational culture?
3. Which high-risk use cases to explicitly prohibit?
4. How to handle exceptions and edge cases?
5. What enforcement mechanisms are appropriate?

---

#### Operational Templates

📄 ai-model-registry-template.md
Template for creating centralized AI model inventory and tracking system. Provides:

- Model metadata structure and required fields
- Lifecycle status tracking (development, testing, production, decommissioned)
- Risk profile documentation patterns
- Cost and ownership tracking
- Integration with model cards
- Review and update procedures

Source Implementation: `../policies-proxmox-cluster/ai-model-registry.md`

Customization Points:

- Metadata fields relevant to your organization
- Approval workflows matching your governance structure
- Risk classification scheme aligned with your risk appetite
- Cost allocation and tracking mechanisms
- Integration with existing asset management systems

Framework Alignment:

- NIST AI RMF: Map function (system inventory)
- ISO/IEC 42001: Clause 8.2 (AI system development documentation)
- NIST SP 800-53: CM-8 (System Component Inventory)
- CIS Controls: Control 1 (Inventory and Control of Enterprise Assets)

Key Customization Decisions:

1. Which metadata fields are essential vs. optional?
2. How granular should risk classification be?
3. What approval process for new model deployments?
4. How to integrate with existing CMDB or asset systems?
5. Who owns registry maintenance and updates?

---

#### Risk Documentation Templates

📄 risk-scenario-template.md
Standard format for documenting AI-specific risk scenarios. Defines:

- Risk description and categorization
- Impact assessment methodology
- Likelihood rating approach
- Existing control documentation
- Recommended mitigation strategies
- Framework mapping structure
- Monitoring and metrics guidance

Source Implementation: Risk scenarios in `../policies-proxmox-cluster/risk-scenarios/` (R01-R10)

Customization Points:

- Risk rating scales (customize to your methodology)
- Impact categories relevant to your organization
- Control taxonomy matching your security framework
- Risk ownership and accountability assignments
- Review frequency and triggers

Framework Alignment:

- NIST AI RMF: Map and Measure functions (risk identification and assessment)
- ISO 31000:2018: Risk management principles
- ISO/IEC 42001: Clause 6.1.2 (Risk assessment)
- NIST SP 800-53: RA-3 (Risk Assessment)

Key Customization Decisions:

1. What risk rating scale to use (3x3, 4x4, 5x5 matrix)?
2. How to define impact levels for your context?
3. Which control frameworks to map to?
4. Who performs risk assessments and reviews?
5. How frequently to reassess risks?

---

## 🎯 3. Framework Alignment

### NIST AI RMF Template Support

Templates support AI RMF implementation across all functions:

| Function | Template Support | Implementation Guidance |
|----------|------------------|------------------------|
| Govern | Acceptable use policy establishes governance | Customize approval processes, define prohibited uses |
| Map | Model registry documents system inventory | Adapt metadata fields, risk classifications |
| Measure | Risk scenario template defines assessment approach | Align rating scales with organizational tolerance |
| Manage | Risk scenarios document control strategies | Map controls to your security framework |
| Monitor | Registry and risk templates enable tracking | Define review schedules, update triggers |

### Multi-Framework Compliance

Templates designed for multi-framework alignment:

ISO/IEC 42001 (AI Management System):
Templates address ISO 42001 clauses:

- Clause 4: Context (via acceptable use policy scope)
- Clause 6: Planning (risk scenarios, model registry)
- Clause 7: Support (documentation templates)
- Clause 8: Operation (model registry, acceptable use enforcement)

NIST SP 800-53 (Security Controls):
Templates support control implementation:

- PL-2: System Security Plan (policy templates)
- RA-3: Risk Assessment (risk scenario template)
- CM-8: System Component Inventory (model registry)
- AC-2: Account Management (via acceptable use)

EU AI Act & Colorado SB24-205:
Templates facilitate regulatory compliance:

- Article 5 / Prohibited practices (acceptable use policy)
- Article 9 / Risk management (risk scenario template)
- Article 11 / Documentation (model registry)

---

## 📚 4. Related Resources

### Within This Repository

Source Implementations:

- [📁 Proxmox Policies](../policies-proxmox-cluster/README.md) - Production policies these templates derive from
- [📁 Proxmox Standards](../policies-proxmox-cluster/standards/README.md) - Technical standards templates
- [📁 Proxmox Risk Scenarios](../policies-proxmox-cluster/risk-scenarios/README.md) - Example risk documentation

Related Templates:

- [📁 Standards Templates](../standards/README.md) - Technical implementation standard templates
- [📁 Model Card Templates](../model-cards-templates/README.md) - Model documentation templates
- [📁 Risk Scenario Templates](../risk-scenario-templates/README.md) - Additional risk documentation formats

Documentation Resources:

- [📁 Documentation](../docs/README.md) - Getting started guides and rationale
- [📁 Article Templates](../docs/article-templates/README.md) - Documentation writing templates
- [📁 NIST AI RMF Cookbook](../README.md) - Repository overview

### Using Policy Templates

Getting Started:

1. Review source implementations in `../policies-proxmox-cluster/` to see templates in action
2. Select templates matching your governance priorities
3. Read customization guidance in each template
4. Adapt placeholders to your organizational context
5. Validate framework alignment for your compliance needs

Customization Best Practices:

1. Preserve Framework Mappings: Keep compliance alignment sections even if adjusting content
2. Document Customizations: Track what you changed and why (use decision log pattern)
3. Maintain Consistency: Use consistent terminology across all policies
4. Test with Stakeholders: Review customized policies with intended users before finalizing
5. Version Control: Track policy evolution and maintain change history

Implementation Order:
Suggested implementation sequence for new governance programs:

1. Start: Acceptable use policy (establishes boundaries)
2. Build: Risk scenario documentation (understand threats)
3. Expand: Model registry (track deployed systems)
4. Mature: Add standards templates from `../standards/` as needs grow

Avoiding Common Pitfalls:

- Don't over-customize initially - start with minimal changes
- Don't skip framework alignment sections - they provide compliance value
- Don't create policies without enforcement plans
- Don't forget to define review and update procedures
- Don't implement templates in isolation - ensure they work together

### External Resources

Policy Development Guidance:

- [NIST AI RMF Playbook](https://airc.nist.gov/AI_RMF_Knowledge_Base/Playbook) - Framework implementation guide
- [ISO 42001 Implementation Guide](https://www.iso.org/standard/81230.html) - AI management system guidance
- [SANS Policy Templates](https://www.sans.org/information-security-policy/) - Security policy examples

Regulatory Compliance:

- [EU AI Act Official Text](https://artificialintelligenceact.eu/) - European AI regulation
- [Colorado SB24-205](https://leg.colorado.gov/bills/sb24-205) - State AI requirements
- [NIST Privacy Framework](https://www.nist.gov/privacy-framework) - Privacy considerations

Risk Management:

- [ISO 31000:2018](https://www.iso.org/standard/65694.html) - Risk management guidelines
- [FAIR Model](https://www.fairinstitute.org/) - Quantitative risk assessment
- [NIST Risk Management Framework](https://csrc.nist.gov/projects/risk-management) - Security risk management

### Contributing

Improving Templates:

- Submit issues identifying unclear guidance or missing sections
- Propose enhancements based on implementation experience
- Share anonymized examples of successful customizations
- Suggest additional templates for common governance needs
- Update framework mappings as regulations evolve

Adding New Templates:

1. Implement and validate in production environment first
2. Extract generic patterns from specific implementation
3. Remove organization-specific details
4. Document customization points and decisions
5. Map to relevant compliance frameworks
6. Provide usage examples and guidance
7. Submit via pull request with rationale

Quality Standards:

- Templates must be framework-aligned (NIST AI RMF minimum)
- Include clear customization guidance
- Provide real-world usage examples or reference implementations
- Document decision points and trade-offs
- Maintain consistent structure across templates

### Community & Support

Questions about Templates:

- Open an issue: [GitHub Issues](https://github.com/vintagedon/nist-ai-rmf-cookbook/issues) with label `templates`
- Start a discussion: [GitHub Discussions](https://github.com/vintagedon/nist-ai-rmf-cookbook/discussions)

Share Implementation Experiences:

- Tag discussion with: `implementation`, `templates`
- Share: Customization challenges, lessons learned, successful patterns

Request New Templates:

- Tag with: `enhancement`, `templates`
- Describe: Governance need, intended use, expected benefit

---

## 📋 5. Documentation Metadata

### Authorship & Collaboration

Primary Author: VintageDon ([GitHub Profile](https://github.com/vintagedon))  
ORCID: [0009-0008-7695-4093](https://orcid.org/0009-0008-7695-4093)

### Version History

| Version | Date | Changes | Author |
|---------|------|---------|--------|
| 1.0 | 2025-10-26 | Initial policy templates directory documentation | VintageDon |

### Template Statistics

- Governance Templates: 1 (acceptable use policy)
- Operational Templates: 1 (model registry)
- Risk Documentation Templates: 1 (risk scenario)
- Total Templates: 3
- Source Implementations: Proxmox Astronomy Cluster governance framework

### Repository Information

Repository: [nist-ai-rmf-cookbook](https://github.com/vintagedon/nist-ai-rmf-cookbook)  
License: MIT  
Framework Version: NIST AI RMF 1.0 (January 2023)  
Status: Active - Templates updated as source implementations evolve

---

Document Version: 1.0 | Last Updated: 2025-10-26 | Status: Published | Directory: policy-templates
