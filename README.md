# 🧭 NIST AI RMF Cookbook

Practical AI Governance: From Ad-Hoc Usage to Framework-Aligned Operations

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![Version](https://img.shields.io/badge/version-0.1.0-orange.svg)]()
[![Status](https://img.shields.io/badge/status-operational-green.svg)]()

> Project Status: v0.1 - Operational (Q4 2025)  
> This repository manages its own AI tooling using the governance frameworks it documents. You're looking at a working AI governance system, not just templates. This is the formalization phase—watch this space as we use these frameworks to guide real AI adoption decisions.

---

## 📖 1. Introduction

### The Problem

Organizations need practical AI governance today, not theoretical frameworks for tomorrow. But most available resources are either:

- Academic papers disconnected from operational constraints
- Expensive consulting promising bespoke solutions
- "Best practices" that assume unlimited time and resources

Meanwhile, teams are using AI tools productively right now—making decisions about Claude vs ChatGPT, managing costs, handling sensitive data, and navigating compliance obligations—mostly without formal governance.

### Our Starting Point (Pre-v0.1)

In Q4 2025, this repository had:

- Four AI subscriptions: $140/month across ChatGPT Plus, Claude Max, Gemini Advanced, and local Llama models
- No formal AI usage policy: Ad-hoc decisions about what data could go where
- No risk assessment framework: Choosing tools based on vibes and Reddit threads
- No documentation: Why did we pick these tools? What are the constraints? Who decided?
- No framework alignment: Zero connection to NIST AI RMF, ISO 42001, or regulatory requirements

We were typical: using AI productively but managing it informally.

### What We Did

We applied the NIST AI Risk Management Framework to our own AI tooling and crosswalked it to ISO/IEC 42001, NIST SP 800-53, and EU AI Act requirements. Instead of writing theoretical documentation, we built operational governance for the AI systems actually creating this repository.

The result: This repository is a working AI governance system managing real tools under real constraints, documented in real-time.

### What You're Looking At

Primary Artifacts (Operational):

- `_repository-governance/ai-acceptable-use-policy.md` - Actual enforceable policy for contributors
- `_repository-governance/model-selection-strategy.md` - Real cost/risk/capability trade-offs documented
- `_repository-governance/models/` - Model cards for Claude Sonnet 4.5, GPT-5, Gemini Pro 2.5, Llama 3.1 8B
- Four-tier model architecture ($140/mo production spend justified with ROI analysis)
- Multi-framework crosswalks used operationally, not just theoretically

Extracted Templates (Reusable):

- `policies/ai-acceptable-use/` - Generic policy template adaptable to any organization
- `schemas/` - YAML schemas for model cards, data cards, risk assessments, control mappings
- `docs/crosswalks.md` - Framework alignment tables (NIST AI RMF ↔ ISO 42001/23894 ↔ SP 800-53 ↔ EU AI Act)

Evidence of Use:

- Every document in this repository was created using the AI tools governed by these policies
- Model selection decisions reflect documented strategy trade-offs
- Multi-model consensus methodology (from `docs/methodology.md`) applied throughout

This is v0.1: formalizing what we discovered we needed. The next version will document how this framework guides a real decision—evaluating Microsoft Business GPT with Entra ID integration.

---

## 🎯 2. What You Get in v0.1

### Working Governance System

Repository-Specific Implementation (`_repository-governance/`):

- ✅ AI Acceptable Use Policy - Governs contributor AI tool usage, data handling, approved platforms
- ✅ Model Selection Strategy - Four-tier architecture (Local/ChatGPT Plus/Claude Max/Gemini Advanced) with documented trade-offs
- ✅ Model Cards - Claude Sonnet 4.5, GPT-5, Gemini Pro 2.5, Llama 3.1 8B documented per schema
- ✅ Multi-Model Consensus Methodology - Quality assurance process for critical artifacts
- ✅ Cost Transparency - $140/month justified with ROI analysis showing 175 hours/year saved

What This Demonstrates:

- NIST AI RMF functions applied to real system (GOVERN, MAP, MEASURE, MANAGE)
- Multi-framework operational alignment (not just crosswalk tables)
- Evidence-based decision making under resource constraints
- Continuous risk management (quarterly review triggers, model exit interviews)

### Extractable Templates

Generic Policy Templates (`policies/`):

- ✅ AI Acceptable Use Policy Template - Customizable for any organization, with educational guidance
- 📜 Model Development Policy - Standards for training, testing, deployment (planned)
- 📜 Data Governance Policy - Training data quality, lineage, privacy (planned)

Documentation Schemas (`schemas/`):

- ✅ Model Card Schema - Structured format for documenting model properties, limitations, intended use
- ✅ Data Card Schema - Dataset provenance, preprocessing, demographic analysis
- ✅ Risk Assessment Schema - Framework for identifying and documenting AI-specific risks
- ✅ Control Mapping Schema - Links risks to mitigations, controls, evidence artifacts
- ✅ Evaluation Plan Schema - Metrics, testing methodologies, acceptance criteria

Framework Crosswalks (`docs/crosswalks.md`):

- ✅ NIST AI RMF ↔ ISO/IEC 42001 - Management system alignment
- ✅ NIST AI RMF ↔ ISO/IEC 23894 - Risk management process mapping
- ✅ NIST AI RMF ↔ NIST SP 800-53 Rev. 5 - Security control overlays
- ✅ NIST AI RMF ↔ EU AI Act - High-risk system obligations

### What's NOT in v0.1

Be realistic about scope:

- ❌ Worked examples - Generic examples (RAG assistant, classifier) are planned but not present
- ❌ Automation tools - YAML validation, OSCAL export, CI/CD workflows are future work
- ❌ Complete policy library - Additional policies will be added as we need them operationally
- ❌ GRC tool integration - Adapters for GovReady-Q, OpenGRC planned for later phases

Note on the Deep Research Blueprint: The comprehensive architectural vision in `docs/nist-ai-rmf-cookbook-blueprint.pdf` (generated via Gemini Deep Research) represents the *long-term roadmap*. v0.1 delivers the operational core that validates the approach. Future phases will build automation, integration, and expanded examples.

---

## 🔄 3. How We Got Here

### The Gap Analysis

Before we could formalize governance, we needed to understand what we were actually doing and what gaps existed.

Pre-v0.1 State (September 2025):

- Using four AI platforms with no documented selection rationale
- Handling repository content through AI tools with no data classification
- Making model choices based on anecdotal evidence ("Claude writes better docs")
- No risk assessment for prompt injection, data leakage, or model limitations
- No connection to any governance framework

Gap Discovery Process:

1. Inventoried all AI tools in use and their costs
2. Mapped actual usage patterns (what tasks used which models)
3. Identified implicit policies we were following (but hadn't documented)
4. Recognized risks we were managing informally
5. Discovered need for multi-framework alignment due to varied organizational contexts

Full details: See [`docs/gap-analysis.md`](docs/gap-analysis.md) *(to be created before v0.1 release)*

### Framework Application

We applied NIST AI RMF as the primary scaffold because:

- Flexible: Risk management process, not prescriptive checklist
- Comprehensive: Four functions (GOVERN, MAP, MEASURE, MANAGE) cover full lifecycle
- Voluntary: Allows tailoring to actual needs vs forcing compliance theater

We then crosswalked to complementary frameworks:

- ISO/IEC 42001: Management system structure for organizational governance
- ISO/IEC 23894: Detailed risk management process guidance
- NIST SP 800-53: Security control mappings for technical implementations
- EU AI Act: High-risk system obligations for regulatory context

### What v0.1 Formalizes

GOVERN Function:

- Repository AI Acceptable Use Policy establishes oversight and approved platforms
- Model Selection Strategy documents risk tolerance and architectural decisions
- Roles and responsibilities defined (repository maintainer, AI Governance Committee)

MAP Function:

- Model cards identify capabilities, limitations, and known biases
- Risk identification for each tier (local privacy, commercial data handling)
- Data classification approach (public repository content, draft work, proprietary)

MEASURE Function:

- Multi-model consensus methodology defines quality metrics
- Quarterly review triggers ensure continuous evaluation
- Cost/benefit analysis tracks ROI (175 hours/year saved for $140/mo spend)

MANAGE Function:

- Four-tier architecture implements risk-based tool selection
- Model exit interview template for deprecating tools systematically
- Evidence artifacts (model cards, policy acknowledgments, methodology docs)

---

## 🚀 4. Where This Goes

### Change Log

| Version | Date | Milestone | Key Changes |
|---------|------|-----------|-------------|
| 0.1.0 | 2025-10-10 | Formalization | Repository governance operational, templates extracted, gap analysis documented |

### Next: Framework-Guided Decision Making

v0.2/0.3 Preview: Business GPT Evaluation

We've informally decided Microsoft Business GPT with Entra ID integration is worth exploring. Now we'll document how our v0.1 framework guides the formal evaluation:

Context:

- Potential replacement for ChatGPT Plus in Tier 1 (daily workhorse)
- Entra ID integration enables secure access to Outlook, Teams, SharePoint, Google Drive
- Hybrid cloud tenancy model with organizational data governance

What We'll Document:

- MAP: How does Business GPT change our risk surface? (New risks: enterprise data access, expanded attack surface)
- MEASURE: What evaluation criteria apply? (Comparative analysis vs existing four-tier stack, ROI calculation)
- MANAGE: What controls are needed? (Integration strategy, policy updates, evidence artifacts from pilot)

Framework Application in Action:

- Update `risks.yaml` with Business GPT-specific risks
- Create `eval-plan.yaml` for pilot assessment
- Modify `control-mapping.yaml` with new controls
- Generate model card if adopted

Honest Transparency: We're learning what this evaluation looks like too. The framework gives us structure, but this will be our first documented example of using it for a major AI adoption decision.

Watch this space: When v0.2 releases, you'll see:

- Complete evaluation documentation in `examples/business-gpt-evaluation/`
- Updated policy templates incorporating enterprise integration considerations
- Lessons learned about framework application to real decisions

---

## 📚 5. NIST AI RMF Quick Primer

The AI Risk Management Framework organizes AI governance into four core functions. This repository demonstrates all four operationally.

### The Four Functions

GOVERN - Cultivate organizational culture and establish oversight  
*Repository Example*: AI Acceptable Use Policy, Model Selection Strategy, defined roles  
*Questions Answered*: Who owns AI risk? What are our values? What's our risk tolerance?

MAP - Identify and understand risks in your specific context  
*Repository Example*: Model cards documenting limitations, risk identification per tier  
*Questions Answered*: What could go wrong? What harms might occur? Who's affected?

MEASURE - Test, evaluate, and quantify AI system performance  
*Repository Example*: Multi-model consensus methodology, quarterly reviews, ROI tracking  
*Questions Answered*: How well does it work? Is it fair? Can we prove it?

MANAGE - Respond to identified risks and monitor continuously  
*Repository Example*: Four-tier architecture risk mitigation, model exit interviews  
*Questions Answered*: How do we mitigate risks? How do we know controls work? What if something breaks?

### Why Framework Alignment Matters

For Audits: Demonstrates systematic approach to AI risk management, not ad-hoc decisions  
For Compliance: Maps directly to ISO 42001, EU AI Act, sector-specific regulations  
For Efficiency: Avoid reinventing governance structures—leverage proven frameworks  
For Communication: Common vocabulary across engineering, legal, executive teams

Multi-Framework Strength: This repository proves frameworks are complementary, not competing. Use NIST AI RMF as the process scaffold, ISO 42001 for management system structure, SP 800-53 for technical controls, and EU AI Act for regulatory requirements—all simultaneously.

---

## 🛠️ 6. How to Use This Repository

### For Organizations Starting AI Governance

You're us three months ago. You're using AI tools productively but managing them informally. Here's your path:

Phase 1: Inventory (Week 1)

1. List all AI tools your team uses and their costs
2. Document who uses them and for what tasks
3. Identify what data gets processed through these tools
4. Note any implicit policies you're already following

Phase 2: Gap Analysis (Week 2)

1. Read our [`docs/gap-analysis.md`](docs/gap-analysis.md) as a template
2. Identify your gaps using NIST AI RMF functions as checklist
3. Prioritize based on risk (regulatory obligations, sensitive data, high-impact decisions)

Phase 3: Formalize (Weeks 3-4)

1. Start with policy: Adapt `policies/ai-acceptable-use/template.md`
2. Document your tools: Use `schemas/model-card.schema.yaml`
3. Map your risks: Use `schemas/risk.schema.yaml`
4. Define your architecture: Use `_repository-governance/model-selection-strategy.md` as inspiration

Phase 4: Operationalize (Ongoing)

1. Enforce policy through awareness and tooling
2. Track compliance (policy acknowledgments, quarterly reviews)
3. Document decisions (when you add/remove tools, use the framework)
4. Generate evidence (model cards, risk assessments, control mappings)

### For GRC / Compliance Teams

Start Here:

- Review `_repository-governance/` to see operational governance in action
- Examine `docs/crosswalks.md` for framework mappings to your existing controls
- Use `policies/ai-acceptable-use/` as starting point for organizational policy

Key Value:

- Framework-aligned policies reduce audit burden (demonstrate systematic approach)
- Multi-framework crosswalks show how AI RMF complements existing programs
- Evidence-based approach (model cards, risk assessments) provides audit trail

Your Path:

1. Assess organizational AI footprint (inventory all AI systems)
2. Determine applicable frameworks (ISO 42001, EU AI Act, sector-specific)
3. Adapt templates to organizational context (risk tolerance, data classification)
4. Work with engineering teams to populate schemas (model cards, data cards)

### For ML / AI Engineering Teams

Start Here:

- Review `schemas/` directory for documentation structure requirements
- Examine `_repository-governance/models/` for completed model cards
- Read `docs/methodology.md` for multi-model consensus process

Key Value:

- Clear expectations for governance documentation integrated with development
- Structured formats (YAML) that fit engineering workflows
- Evidence artifacts tie to CI/CD and version control

Your Path:

1. Create model card for each AI system using `schemas/model-card.schema.yaml`
2. Document training/retrieval data using `schemas/data-card.schema.yaml`
3. Identify system-specific risks using `schemas/risk.schema.yaml`
4. Store artifacts alongside code in version control

### For Leadership / Decision-Makers

Start Here:

- Read this README for strategic context
- Review `_repository-governance/model-selection-strategy.md` for decision framework
- Examine ROI analysis ($140/mo spend justified with 175 hours/year saved)

Key Value:

- Comprehensive starter kit demonstrates AI governance is achievable
- Evidence-based decision making reduces risk of ad-hoc AI adoption
- Multi-framework alignment prepares for regulatory requirements

Assessment Questions:

1. Risk Tolerance: Are we comfortable with our current informal AI governance?
2. Regulatory Context: Which frameworks apply to our industry/geography?
3. Resource Commitment: Can we dedicate time from engineering, legal, security, GRC?
4. Stakeholder Buy-In: Do teams understand why governance matters?

---

## 🔗 7. Prerequisites & What You Need to Know

### Assumed Knowledge

Minimal Requirements:

- Familiarity with your organization's governance and policy processes
- Basic understanding of AI/ML concepts (models, training data, inference)
- Ability to edit Markdown or YAML files

Helpful But Not Required:

- Experience with NIST AI RMF or other governance frameworks
- Background in information security or GRC
- Understanding of multi-framework compliance approaches

### Technical Requirements

For Policy Templates:

- Text editor or Markdown editor
- Your organization's policy management system

For Schemas:

- Text editor with YAML support (VS Code, Sublime, etc.)
- Future: Python 3.8+ for validation tools (not in v0.1)

For Operational Use (our setup):

- Git for version control
- GitHub for repository hosting and collaboration
- AI platform subscriptions (as determined by your model selection strategy)

### Organizational Readiness

Before diving in, consider:

Risk Tolerance: These templates provide structure, but you must make risk acceptance decisions. There's no universal "correct" level of AI risk—it depends on your context, data sensitivity, and regulatory obligations.

Stakeholder Buy-In: AI governance requires cross-functional coordination. Expect to involve:

- Engineering (implementation and evidence generation)
- Legal (policy review, contractual considerations)
- Security (risk assessment, control validation)
- Compliance/GRC (framework alignment, audit preparation)
- Business leadership (risk tolerance, resource allocation)

Resource Commitment: Effective implementation requires dedicated time from multiple teams. Our v0.1 took approximately 40-60 hours across documentation, policy development, and operationalization. Maintenance is ongoing (quarterly reviews, policy updates, tool evaluations).

---

## 🌐 8. Framework Alignment

This repository demonstrates operational interoperability with multiple AI governance frameworks and standards.

### Primary Framework: NIST AI RMF 1.0

All artifacts in this repository map directly to the AI RMF's four functions (Govern, Map, Measure, Manage). This alignment ensures:

- Systematic coverage of AI-specific risks through structured process
- Common vocabulary across teams and organizations
- Flexibility to adapt to organizational context and risk tolerance
- Foundation for demonstrating compliance with multiple regulatory frameworks

Why NIST AI RMF as Primary?

- Voluntary and flexible (process-oriented, not prescriptive checklist)
- Comprehensive lifecycle coverage (governance, risk identification, testing, management)
- Designed specifically for AI systems (addresses unique AI challenges)
- Compatible with existing risk management approaches (ISO 31000, NIST RMF)

Official Resource: [NIST AI RMF](https://www.nist.gov/itl/ai-risk-management-framework)

### Multi-Framework Operational Alignment

Organizations rarely operate under a single standard. You might need:

- ISO 42001 certification for customer contracts
- NIST SP 800-53 compliance for government work  
- EU AI Act adherence for European operations
- Internal risk frameworks unique to your industry

This repository provides a single operational system that satisfies multiple requirements simultaneously.

| Framework/Regulation | Alignment Level | Operational Use | Crosswalk Available |
|---------------------|----------------|-----------------|---------------------|
| NIST AI RMF 1.0 | Primary | Process scaffold for all governance activities | N/A (primary framework) |
| ISO/IEC 42001 (AI Management System) | High | Management system structure, roles, documentation requirements | ✅ [docs/crosswalks.md](docs/crosswalks.md) |
| ISO/IEC 23894 (AI Risk Management) | High | Detailed risk management process, risk treatment | ✅ [docs/crosswalks.md](docs/crosswalks.md) |
| NIST SP 800-53 Rev. 5 (Security Controls) | Medium | Technical control mappings for security objectives | ✅ [docs/crosswalks.md](docs/crosswalks.md) |
| EU AI Act (High-Risk Obligations) | Medium | Regulatory requirements for high-risk systems | ✅ [docs/crosswalks.md](docs/crosswalks.md) |
| OWASP Top 10 for LLMs | High | Technical risk identification for LLM applications | 📜 Integrated into risk library |

### Framework Crosswalk Example

Sample: Model Selection Decision

When we chose our four-tier model architecture, we simultaneously satisfied:

| Framework | Requirement Addressed | How This Repository Meets It |
|-----------|----------------------|------------------------------|
| NIST AI RMF | MAP.1.1: Context established | Model Selection Strategy documents organizational context, constraints ($140/mo budget), and use cases |
| ISO 42001 | Clause 8.2: AI risk assessment | Risk stratification by tier (Tier 0 privacy, Tier 1-3 commercial platforms) |
| NIST SP 800-53 | RA-3: Risk Assessment | Documented risk/cost/capability trade-offs with quarterly review triggers |
| EU AI Act | Art. 9: Risk management system | Continuous risk management process (model exit interviews, review cycles) |

This is not theoretical compliance—this is our actual operational system demonstrating multi-framework alignment in practice.

Full crosswalk tables: See [docs/crosswalks.md](docs/crosswalks.md)

---

## 🌟 9. Community & Support

### Getting Help

Documentation:

- [📚 Repository Governance](\_repository-governance/) - How this repository governs itself
- [📚 Methodology](docs/methodology.md) - Multi-model consensus and development process
- [📚 Framework Crosswalks](docs/crosswalks.md) - Detailed multi-framework mappings
- [📚 Gap Analysis](docs/gap-analysis.md) - How we got from ad-hoc to v0.1 *(to be created)*

Questions & Discussion:

- [💬 GitHub Discussions](https://github.com/vintagedon/nist-ai-rmf-cookbook/discussions) - Ask questions, share use cases
- [🐛 GitHub Issues](https://github.com/vintagedon/nist-ai-rmf-cookbook/issues) - Report bugs, request features

### Contributing

We need help building this operational infrastructure. Priority areas:

High-Value Contributions:

- Real-world case studies: How you applied these frameworks in your organization
- Framework validation: Review crosswalk accuracy (especially ISO 42001, EU AI Act)
- Policy templates: Additional policies as you need them (model development, vendor management)
- Industry-specific adaptations: Healthcare, finance, government contexts

Quick Contribution Guide:

1. [Fork the repository](https://github.com/vintagedon/nist-ai-rmf-cookbook/fork)
2. Create a feature branch: `git checkout -b feature/new-policy-template`
3. Make your changes following existing patterns
4. Add educational guidance (📘 boxes in templates) where helpful
5. Commit with clear messages: `git commit -m 'Add vendor management policy template'`
6. Push to your fork: `git push origin feature/new-policy-template`
7. [Open a Pull Request](https://github.com/vintagedon/nist-ai-rmf-cookbook/pulls)

Contribution Standards:

- Policy templates must include educational 📘 boxes explaining customization
- Schemas must follow JSON Schema Draft 07 format
- All work must map to specific NIST AI RMF functions
- Framework crosswalks require citation to official sources
- Operational examples must demonstrate actual use, not hypothetical scenarios

### Project Governance

- [Code of Conduct](CODE_OF_CONDUCT.md) - Community standards and expectations *(to be created)*
- [Contributing Guidelines](CONTRIBUTING.md) - Detailed contribution process *(to be created)*
- [License](LICENSE) - MIT License for maximum reusability

---

## 🗺️ 10. Roadmap

### Completed: Phase 1 - Formalization (v0.1)

October 2025:

- ✅ Repository AI governance operational (`_repository-governance/`)
- ✅ Model cards for all tools in use (Claude, GPT, Gemini, Llama)
- ✅ Multi-framework crosswalks (ISO 42001/23894, SP 800-53, EU AI Act)
- ✅ Generic policy templates extracted (`policies/ai-acceptable-use/`)
- ✅ Documentation schemas defined (model card, data card, risk, control mapping, eval plan)
- ✅ Gap analysis documenting journey from ad-hoc to formal governance

### Next: Phase 2 - Framework-Guided Decision (v0.2/0.3)

Q1 2026 Target:

- Business GPT evaluation using MAP/MEASURE/MANAGE functions
- Complete worked example: `examples/business-gpt-evaluation/`
- Policy template updates incorporating enterprise integration learnings
- Model card for Business GPT (if adopted)
- Documented decision rationale regardless of outcome

### Future: Phase 3 - Automation (Q2 2026)

Planned:

- YAML schema validation (automated testing in CI/CD)
- OSCAL export capability (SSP, SAR, SAP, POA&M generation)
- CI/CD integration examples (GitHub Actions workflows)
- Evidence artifact handling patterns

### Future: Phase 4 - Integration (Q2-Q3 2026)

Planned:

- GRC tool adapters (GovReady-Q, OpenGRC)
- Additional worked examples (RAG assistant, classifier, vision model)
- Risk library expansion (OWASP LLM Top 10 integration)
- Compliance reporting templates

### Future: Phase 5 - Ecosystem (2026+)

Vision:

- Industry-specific adaptations (healthcare, finance, government)
- Regulatory Technical Standards alignment (as EU AI Act RTS finalize)
- Community-contributed policy templates and examples
- Training materials and workshops

Note: Timeline subject to operational needs and community contribution velocity. We build what we need when we need it, then generalize for others.

---

## 📖 11. Related Resources

### Official Standards & Frameworks

- [NIST AI Risk Management Framework](https://www.nist.gov/itl/ai-risk-management-framework) - The foundational framework this repository operationalizes
- [NIST AI RMF Playbook](https://www.nist.gov/itl/ai-risk-management-framework/nist-ai-rmf-playbook) - NIST's suggested actions for implementing the framework
- [ISO/IEC 42001:2023](https://www.iso.org/standard/81230.html) - International standard for AI management systems
- [ISO/IEC 23894:2023](https://www.iso.org/standard/77304.html) - Guidance on AI risk management
- [NIST SP 800-53 Rev. 5](https://csrc.nist.gov/publications/detail/sp/800-53/rev-5/final) - Security and privacy controls catalog
- [OSCAL Documentation](https://pages.nist.gov/OSCAL/) - Open Security Controls Assessment Language
- [EU AI Act Official Page](https://digital-strategy.ec.europa.eu/en/policies/regulatory-framework-ai) - European Union's AI regulation

### AI Security & Risk Resources

- [OWASP Top 10 for LLMs](https://owasp.org/www-project-top-10-for-large-language-model-applications/) - Critical security risks for LLM applications
- [Hugging Face Model Cards](https://huggingface.co/docs/hub/model-cards) - Practical examples of model documentation
- [Google Model Card Toolkit](https://github.com/tensorflow/model-card-toolkit) - Reference implementation for model cards
- [Partnership on AI](https://partnershiponai.org/) - Ethical AI development guidelines
- [AI Incident Database](https://incidentdatabase.ai/) - Real-world AI failure patterns

### Complementary Projects

- [GovReady-Q](https://www.govready.com/) - Open-source GRC platform with OSCAL support
- [OpenGRC](https://opengrc.com/) - Open-source governance, risk, and compliance tool

---

## 🙏 12. Acknowledgments

### Framework Foundation

This repository is built on the foundational work of:

- NIST AI Risk Management Framework Team - For creating a comprehensive, flexible governance framework
- OSCAL Project Team - For developing machine-readable compliance standards
- ISO/IEC JTC 1/SC 42 - For international AI governance standards development

### Research & Best Practices

AI risk identification and mitigation strategies informed by:

- OWASP LLM Security Team - For systematizing LLM-specific threats
- Partnership on AI - For ethical AI development guidelines
- AI Incident Database - For real-world AI failure patterns

### Contributors

Primary Author: VintageDon ([GitHub](https://github.com/vintagedon))  
ORCID: [0009-0008-7695-4093](https://orcid.org/0009-0008-7695-4093)  
AI Assistance: Claude (Anthropic), GPT-5 (OpenAI), Gemini Pro (Google), Llama 3.1 (Meta/Self-hosted)

Methodology: This repository was created using the multi-model consensus process documented in [docs/methodology.md](docs/methodology.md). AI tools provided drafting assistance, structural suggestions, and cross-validation. All content was human-reviewed, verified against authoritative sources, and integrated into a coherent operational system. The AI tools are documented via model cards in `_repository-governance/models/`.

Community Contributors: *Your name could be here - see Contributing section*

---

## 📋 13. Document Metadata

| Field | Value |
|-------|-------|
| Version | 0.1.0 |
| Status | Operational - Formalization Phase |
| Last Updated | 2025-10-10 |
| License | MIT |
| Maintained By | VintageDon + Community |
| Framework Version | NIST AI RMF 1.0 (January 2023) |
| Contact | [GitHub Issues](https://github.com/vintagedon/nist-ai-rmf-cookbook/issues) |

---

## 💡 14. Getting Started Checklist

New to the repository? Follow this sequence:

- [ ] Read this README to understand the v0.1 journey and operational context
- [ ] Review [`docs/gap-analysis.md`](docs/gap-analysis.md) to see how we got from ad-hoc to formal governance
- [ ] Explore [`_repository-governance/`](_repository-governance/) to see operational governance in action
- [ ] Examine a policy template in [`policies/ai-acceptable-use/`](policies/ai-acceptable-use/)
- [ ] Review schemas in [`schemas/`](schemas/) to understand documentation structure
- [ ] Check [`docs/crosswalks.md`](docs/crosswalks.md) for your relevant regulatory framework
- [ ] Join [GitHub Discussions](https://github.com/vintagedon/nist-ai-rmf-cookbook/discussions) to ask questions
- [ ] Consider contributing your own case studies or framework applications

---

## 🎯 Closing Thoughts

This is not a finished product. This is v0.1 of a living system.

We formalized governance for AI tools we were already using productively. We documented decisions we had made informally. We applied frameworks to operational constraints, not aspirational scenarios. We proved it's possible to govern AI systems without grinding development to a halt.

The next phase will show how these frameworks guide decisions about *new* AI capabilities—evaluating Business GPT not just on features and cost, but on risk, controls, and framework alignment.

If you're using AI tools productively but managing them informally, you're where we were three months ago. These templates and frameworks can help you formalize what you're already doing. If you're building AI governance from scratch, this operational example shows it's achievable with realistic resource constraints.

*Let's build practical, operational AI governance together—one real decision at a time.*

---

Document Version: 0.1.0 | Last Updated: 2025-10-10 | Framework: NIST AI RMF 1.0 | Status: Operational
