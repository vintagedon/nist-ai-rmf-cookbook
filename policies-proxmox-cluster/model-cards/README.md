<!--
---
title: "Model Cards - Deployed AI Systems"
description: "Documentation for AI models actively deployed in the Proxmox Astronomy Cluster"
owner: "VintageDon - https://github.com/vintagedon"
orcid: "https://orcid.org/0009-0008-7695-4093"
ai_contributor: "Claude (Anthropic)"
lastReviewed: "2025-10-26"
version: "1.0"
status: "Published"
tags:
- type: directory-guide
- domain: deployed-models
- framework: nist-ai-rmf
- artifact-type: model-cards
related_documents:
- "[Policies - Proxmox Cluster](../README.md)"
- "[Model Card Library](../../model-cards/README.md)"
- "[Tool Inventory](../appendices/appendix-c-tool-model-inventory.md)"
type: directory-guide
---
-->

---

# 🎴 Model Cards - Deployed Systems

Documentation for AI models actively deployed and operational in the Proxmox Astronomy Cluster infrastructure.

---

## 📖 1. Overview

### What This Directory Contains

This directory houses model cards for 8 AI systems currently deployed in production or development environments within the Proxmox Astronomy Cluster. Unlike the broader model card library (`../../model-cards/`), these cards document *actual* deployed systems with organization-specific deployment context, configuration details, and operational controls.

### Purpose & Scope

Primary Purpose: Document deployed AI systems to enable:

- Operational awareness of which models are in use
- Deployment-specific risk assessments
- Configuration and access control documentation
- Compliance evidence for audit and review
- Change tracking for model updates or replacements

Scope Coverage:

- Anthropic Claude Models: Claude 4 Opus, Claude Sonnet 4.5 (primary workhorses)
- Google Gemini Models: Gemini Pro 2.5, Gemini Flash 2.5, CLI variants
- Zhipu AI Models: GLM-4 (emerging evaluation)
- Deep Research Systems: Gemini Pro 2.5 with advanced research capabilities

Deployment Context:
Each card includes Proxmox Cluster-specific information:

- Deployment method (API, CLI, desktop agent)
- Access controls and authentication
- Integration points (MCP servers, tools, infrastructure)
- Cost allocation and budgets
- Operational monitoring and logging
- Risk assessments specific to deployment architecture

### Target Audience

Primary Users:

- Operations teams managing AI infrastructure
- Security teams monitoring deployed systems
- AI governance board reviewing deployments
- Compliance officers requiring system documentation
- Engineering teams integrating with AI services

Prerequisites:

- Access to Proxmox Cluster infrastructure
- Understanding of cluster architecture
- Familiarity with AI system deployment patterns

---

## 📂 2. Files & Structure

### Directory Overview

```markdown
model-cards/
├── 📄 README.md                                                      # This file
│
├── 🤖 Anthropic Claude (Primary Production)
│   ├── anthropic-claude-opus-42/
│   │   ├── README.md
│   │   └── anthropic-claude-42-opus-model-card.yaml                # Claude 4.2 Opus deployment
│   └── anthropic-claude-sonnet-45/
│       ├── README.md
│       └── anthropic-claude-sonnet-45-model-card.yaml              # Claude Sonnet 4.5 deployment
│
├── 🤖 Google Gemini (Multi-Modal & CLI)
│   ├── google-gemini-pro-25/
│   │   ├── README.md
│   │   ├── google-gemini-25-flash-model-card.yaml                  # Gemini Flash config
│   │   └── google-gemini-25-pro-model-card.yaml                    # Gemini Pro config
│   ├── google-gemini-pro-25-cli/
│   │   └── README.md                                                # CLI-specific deployment
│   ├── google-gemini-pro-25-cli-with-code-assist-standard/
│   │   └── README.md                                                # CLI with enhanced code capabilities
│   ├── google-gemini-pro-25-flash/
│   │   ├── README.md
│   │   └── google-gemini-25-pro-model-card.yaml                    # Flash variant deployment
│   └── gemini-pro-25-deep-research/
│       └── README.md                                                # Advanced research configuration
│
└── 🤖 Zhipu AI (Evaluation)
    └── zai-glm-46/
        └── README.md                                                # GLM-4 testing deployment
```

### Deployment Categories

#### Primary Production Models

Anthropic Claude Sonnet 4.5 (`anthropic-claude-sonnet-45/`)

- Role: Primary AI agent for infrastructure management, policy development, documentation
- Deployment: Claude Desktop with extended MCP server ecosystem
- Access: Desktop application, project-based isolation
- Integration: Filesystem, Cloudflare, Hugging Face, PDF tools, Mermaid, Google Drive
- Cost Model: Pro subscription ($20/month base + usage)
- Risk Profile: High trust due to comprehensive MCP tool access

Anthropic Claude 4.2 Opus (`anthropic-claude-opus-42/`)

- Role: Complex reasoning tasks, architectural decisions, strategic planning
- Deployment: API access for specialized workflows
- Access: API key with rate limiting
- Integration: Custom tooling, specialized workflows
- Cost Model: Usage-based pricing
- Risk Profile: Medium - limited tool access compared to desktop agent

#### Multi-Modal & CLI Systems

Google Gemini Pro 2.5 (`google-gemini-pro-25/`)

- Role: Multi-modal analysis, vision tasks, diverse capability requirements
- Deployment: API access with multiple configuration variants
- Access: Service account credentials
- Integration: Research data processing, image analysis
- Cost Model: Usage-based with quota monitoring
- Risk Profile: Medium - focused on analysis vs. infrastructure control

Google Gemini CLI Variants (3 deployment configurations)

- Role: Automated tasks, bulk operations, scheduled workflows
- Deployment: CLI tool on agents01 infrastructure
- Access: Service account with restricted permissions
- Integration: Vault filesystem, automation scripts
- Cost Model: Usage-based with budget caps
- Risk Profile: Medium-Low - automated context, limited interactive exposure

Gemini Pro 2.5 Deep Research (`gemini-pro-25-deep-research/`)

- Role: Advanced multi-source research, comprehensive analysis
- Deployment: API with extended research capabilities
- Access: Controlled via research workflows
- Integration: External source access, multi-step reasoning
- Cost Model: Premium research pricing
- Risk Profile: Medium - external data access requires monitoring

#### Evaluation Systems

Zhipu AI GLM-4 (`zai-glm-46/`)

- Role: Evaluation and comparison, multilingual capabilities testing
- Deployment: Limited testing environment
- Access: Restricted evaluation credentials
- Integration: Isolated test workflows
- Cost Model: Evaluation budget only
- Risk Profile: Low - non-production, isolated testing

### Deployment Documentation Standard

Each model card subdirectory contains:

- YAML Model Card: Structured metadata following repository standard
- README.md: Deployment-specific documentation including:
  - Access controls and authentication details
  - Integration architecture and tool permissions
  - Operational procedures (deployment, updates, monitoring)
  - Risk assessment specific to this deployment
  - Cost tracking and budget allocation
  - Incident response procedures

---

## 🎯 3. Framework Alignment

### NIST AI RMF Coverage

Deployed model cards support AI RMF implementation:

| Function | Card Contribution | Deployment Focus |
|----------|------------------|------------------|
| Govern | Documents AI system inventory and ownership | Access controls, approval processes, cost governance |
| Map | Captures deployment context and stakeholders | Integration architecture, user communities, data flows |
| Measure | Defines performance and cost metrics | Usage monitoring, cost tracking, capability benchmarks |
| Manage | Documents risk controls and mitigations | Deployment-specific controls, incident procedures |
| Monitor | Establishes operational monitoring | Logging, alerting, audit trails for deployed systems |

### Multi-Framework Compliance

ISO/IEC 42001 (AI Management System):

- Clause 8.1: Operational planning and control (deployment documentation)
- Clause 8.2: AI system development and operation (model cards show operational context)
- Clause 8.3: Use of AI systems (access controls and usage policies)

NIST SP 800-53 (Security Controls):

- CM-8: System Component Inventory (deployed models tracked)
- AC-2: Account Management (access control documentation)
- AU-2: Event Logging (operational monitoring requirements)
- SA-9: External System Services (third-party AI service management)

EU AI Act:

- Article 11: Technical documentation (deployment context documented)
- Article 12: Record-keeping (usage logs and audit trails)
- Article 13: Transparency (model capabilities disclosed to users)

Colorado SB24-205:

- Section 6-1-1704: Risk management (deployment-specific risk assessments)
- Documentation requirements (complete system characterization)

---

## 📚 4. Related Resources

### Within This Repository

Parent Directory:

- [📁 Policies - Proxmox Cluster](../README.md) - Policy framework governing these deployments

Related Policy Artifacts:

- [📁 Appendices](../appendices/README.md) - Tool inventory cross-references these model cards
- [📄 Tool Inventory](../appendices/appendix-c-tool-model-inventory.md) - Comprehensive asset tracking
- [📁 Risk Scenarios](../risk-scenarios/README.md) - Risk library applicable to deployments
- [📁 Standards](../standards/README.md) - Technical standards these deployments must follow

Model Card Resources:

- [📁 Model Card Library](../../model-cards/README.md) - Broader vendor model documentation
- [📁 Model Card Templates](../../model-cards-templates/README.md) - Templates for creating new cards
- [📁 Policy Templates](../../policy-templates/README.md) - Governance templates

Repository Root:

- [📁 NIST AI RMF Cookbook](../../README.md) - Main repository overview

### Using Deployed Model Cards

For Operations:

1. Reference model cards before making infrastructure changes
2. Update cards when deployments change (new versions, config updates)
3. Track costs and usage against documented budgets
4. Use integration documentation for troubleshooting
5. Follow incident procedures documented in cards

For Governance:

1. Review deployed model cards during approval processes
2. Verify access controls match policy requirements
3. Assess risk profiles for new deployment requests
4. Track model proliferation and redundancy
5. Ensure compliance documentation is current

For Security:

1. Audit access controls against documented permissions
2. Monitor for unauthorized model deployments
3. Review integration points for security implications
4. Validate logging and monitoring coverage
5. Assess supply chain risks for third-party models

For Compliance:

1. Use model cards as evidence for audits
2. Demonstrate system inventory maintenance
3. Show risk assessment and control implementation
4. Provide deployment documentation for regulatory review
5. Track model lifecycle and change management

### External Resources

Vendor Documentation:

- [Anthropic Claude Documentation](https://docs.anthropic.com/) - Official Claude model specifications
- [Google Gemini Documentation](https://ai.google.dev/gemini-api/docs) - Gemini API and capabilities
- [Zhipu AI GLM Documentation](https://open.bigmodel.cn/dev/api) - GLM model information

Deployment Best Practices:

- [NIST AI Deployment Guide](https://airc.nist.gov/AI_RMF_Knowledge_Base/Playbook) - AI system deployment practices
- [Cloud Security Alliance AI Security](https://cloudsecurityalliance.org/research/topics/ai) - AI deployment security

Model Governance:

- [Model Card Toolkit](https://github.com/tensorflow/model-card-toolkit) - Automated model card generation
- [AI Model Governance](https://www.ibm.com/topics/ai-governance) - Enterprise model governance patterns

### Contributing

Adding New Deployed Models:

1. Create subdirectory: `{vendor}-{model}-{variant}/`
2. Use model card template from `../../model-cards-templates/`
3. Document deployment-specific details (access, integration, costs)
4. Include risk assessment for this deployment context
5. Update tool inventory in appendices
6. Submit for governance board review

Updating Existing Cards:

- Model version updates (new releases deployed)
- Configuration changes (tool permissions, access controls)
- Risk reassessments (based on operational experience)
- Cost updates (usage patterns, budget changes)
- Integration changes (new tools, updated architecture)

Decommissioning Models:

1. Document decommission decision and rationale
2. Update tool inventory to reflect removal
3. Archive model card (don't delete - maintain history)
4. Update integration documentation
5. Verify no dependencies remain

### Community & Support

Questions about Deployed Models:

- Open an issue: [GitHub Issues](https://github.com/vintagedon/nist-ai-rmf-cookbook/issues) with label `deployed-models`
- Start a discussion: [GitHub Discussions](https://github.com/vintagedon/nist-ai-rmf-cookbook/discussions)

Report Deployment Issues:

- Tag with: `bug`, `deployed-models`, `[model-name]`
- Include: Model card path, deployment issue, impact assessment

Request New Deployments:

- Tag with: `enhancement`, `deployment-request`
- Include: Model name, use case justification, cost estimate, risk assessment

---

## 📋 5. Documentation Metadata

### Authorship & Collaboration

Primary Author: VintageDon ([GitHub Profile](https://github.com/vintagedon))  
ORCID: [0009-0008-7695-4093](https://orcid.org/0009-0008-7695-4093)  
Methodology: See [Documentation Methodology](../../docs/methodology.md) for development approach

### Version History

| Version | Date | Changes | Author |
|---------|------|---------|--------|
| 1.0 | 2025-10-26 | Initial deployed model cards documentation | VintageDon |

### Deployment Statistics

- Total Deployed Models: 8 across 3 vendors
- Production Systems: 2 (Claude Sonnet 4.5, Claude Opus 4.2)
- Development/Testing: 6 (Gemini variants, GLM-4)
- Access Methods: Desktop agents, API, CLI
- Integration Points: 10+ MCP servers, filesystem, cloud services
- Cost Profile: Subscription + usage-based models

### Repository Information

Repository: [nist-ai-rmf-cookbook](https://github.com/vintagedon/nist-ai-rmf-cookbook)  
License: MIT  
Framework Version: NIST AI RMF 1.0 (January 2023)  
Status: Active - Updated as deployments change

---

Document Version: 1.0 | Last Updated: 2025-10-26 | Status: Published | Directory: policies-proxmox-cluster/model-cards
