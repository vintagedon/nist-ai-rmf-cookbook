# 🧭 NIST AI RMF Cookbook

Real-world AI governance from a team figuring it out. Your implementation will look different—that's the point.

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![Version](https://img.shields.io/badge/version-0.1.0-orange.svg)]()
[![Status](https://img.shields.io/badge/status-in--use-green.svg)]()
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.17332823.svg)](https://doi.org/10.5281/zenodo.17332823)

> Project Status: v0.1 - Operational (Q4 2025)  
> We formalized AI governance for our own research cluster and documented the process. We had to do this work anyway—we're sharing it because we believe in open science. The learning might be bidirectional.

---

## 📖 What This Is

If you're using AI tools productively but managing them informally—making decisions about which models to use, handling sensitive data, navigating costs—you're probably where we were a few months ago.

We run a research cluster that uses AI extensively. Local models, commercial APIs, public and sensitive data. We realized we had no formal governance framework—just ad-hoc decisions and unwritten policies. The NIST AI Risk Management Framework existed, but it's deliberately abstract. It tells you *what* to think about and *why* it matters, but the *how* is up to you.

So we did what we had to do anyway: we formalized our own governance. But instead of keeping it internal, we're documenting the entire process publicly. Not because we think we've cracked the code, but because we believe the learning might be bidirectional—you might learn from our implementation, and we'll definitely learn from your feedback.

> 📘 New to NIST AI RMF? No prior knowledge required. This repository documents practical implementation, not framework theory. For foundational understanding, see the [NIST AI RMF Playbook](https://www.nist.gov/itl/ai-risk-management-framework/nist-ai-rmf-playbook) [2]. We translate frameworks into working systems—you can learn as you go.

### Our Approach

1. Gap analysis - Figure out what we're actually doing (and what we're not)
2. Write policies - Only what we need right now, nothing theoretical
3. Test them - Use them in our actual cluster with real workflows
4. Backport to templates - Extract the patterns once we know they work
5. Share everything - Publish the whole journey, warts and all

This is v0.1—the formalization phase. We're taking informal practices and making them explicit. The next version will show how these frameworks guide actual decisions, like evaluating Microsoft Business GPT for our environment.

---

## ⚙️ The Framework Adapts to You (Not the Other Way Around)

Here's something important about the NIST AI RMF: it's intentionally abstract. It's a risk management process, not a compliance checklist. That's actually its strength—it adapts to your context instead of forcing you into a one-size-fits-all model.

### What Changes vs. What Stays Constant

Every AI system is different. Different models, different data, different risks, different resources. The NIST AI RMF's four functions (Govern, Map, Measure, Manage) stay constant—they're the process. How you execute them is yours to determine.

| Changes Based on Your Context | Stays Constant (The Framework) |
|-----------------------------------|-----------------------------------|
| Your specific risks and threats | The evidence types you need to generate |
| Your tools and infrastructure | The four core functions (Govern, Map, Measure, Manage) |
| Your budget and resource constraints | The risk management process and methods |
| Your regulatory environment | The systematic approach to AI governance |

Our implementation is opinionated—it reflects our specific environment (Proxmox cluster, local LLMs, hybrid cloud, astronomy research).

Our templates are generic—they extract the reusable patterns that should work regardless of your stack.

When your implementation looks different from ours, that's not a bug—that's the framework working as intended. The RMF adapts to you.

---

## 📦 What You Get in v0.1

We're sharing two things: our actual governance artifacts (opinionated, specific to us) and the templates we extracted from them (generic, adaptable to you).

### Real Policies (Our Implementation)

`_repository-governance/` - What we actually use in our cluster:

- ✅ AI Acceptable Use Policy - How contributors use AI tools, which platforms are approved, what data can go where
- ✅ Model Selection Strategy - Our four-tier architecture ($140/month with documented cost/risk/capability trade-offs)
- ✅ Model Cards - Claude Sonnet 4.5, GPT-5, Gemini Pro 2.5, Llama 3.1 8B fully documented
- ✅ Multi-Model Consensus Process - How we ensure quality for critical artifacts
- ✅ Cost Transparency - ROI analysis showing 175 hours/year saved for $140/month spend

This is opinionated—it works for our use case. Your cluster will have different constraints, different tools, different risks. That's expected.

### Generic Templates (Extracted Patterns)

`policies/` - Adaptable policy templates:

- ✅ AI Acceptable Use Policy Template - Customizable for any organization, includes educational guidance on when/how to adapt each section
- 📜 Additional policies as we write them (we only create what we actually need)

`schemas/` - YAML schemas for structured documentation:

- ✅ Model Card Schema - Document any AI model's properties, limitations, intended use
- ✅ Data Card Schema - Track dataset provenance, preprocessing, demographic analysis
- ✅ Risk Assessment Schema - Identify and document AI-specific risks
- ✅ Control Mapping Schema - Link risks to mitigations, controls, and evidence artifacts
- ✅ Evaluation Plan Schema - Define metrics, testing methodologies, acceptance criteria

`docs/crosswalks.md` - Framework alignment tables:

- ✅ NIST AI RMF ↔ ISO/IEC 42001 (AI Management System standard)
- ✅ NIST AI RMF ↔ ISO/IEC 23894 (Risk management process)
- ✅ NIST AI RMF ↔ NIST SP 800-53 Rev. 5 (Security controls)
- ✅ NIST AI RMF ↔ EU AI Act (High-risk system obligations)

These crosswalks show how the same governance work can satisfy multiple framework requirements simultaneously—useful if you're trying to check several compliance boxes at once.

### What's NOT Here Yet

Let's be realistic about scope. This is v0.1:

- ❌ Worked examples - Generic examples like RAG assistants or classifiers are planned but not present yet
- ❌ Automation tools - YAML validation, OSCAL export, CI/CD workflows are future work
- ❌ Complete policy library - We write policies as we need them, not speculatively
- ❌ GRC tool integration - Adapters for GovReady-Q, OpenGRC planned for later phases

There's a comprehensive blueprint document (`docs/nist-ai-rmf-cookbook-blueprint.pdf`) that lays out the long-term vision—automation, integration, expanded examples. But v0.1 delivers the operational core. We're building what we need when we need it, then generalizing for others.

---

## 🛠️ How We Got Here

### Pre-v0.1: The Ad-Hoc Phase

Where we were in September 2025:

- Using four AI platforms ($140/month total) with no documented selection rationale
- Making model choices based on anecdotal evidence ("Claude writes better docs")
- Processing repository content through AI tools with no formal data classification
- No risk assessment for prompt injection, data leakage, or model limitations
- Zero connection to any governance framework

Sound familiar? We were using AI productively but managing it informally. It worked... until we realized we couldn't answer basic questions like "why did we choose these tools?" or "what data can we put where?"

### The Gap Analysis

Before we could formalize anything, we needed to understand what we were actually doing:

1. Inventoried all AI tools - Which platforms, what they cost, who used them
2. Mapped usage patterns - What tasks used which models, and why
3. Identified implicit policies - Rules we were following but hadn't written down
4. Recognized risks we were managing - Informally handling sensitive data, avoiding certain use cases
5. Discovered multi-framework needs - Different stakeholders care about different standards

The full gap analysis will be in `docs/gap-analysis.md` before final v0.1 release—it's useful as a template if you're doing your own assessment.

### Framework Application

We chose the NIST AI RMF as our primary scaffold for three reasons:

1. Flexible - It's a risk management process, not a prescriptive checklist
2. Comprehensive - Four functions (Govern, Map, Measure, Manage) cover the full lifecycle
3. Voluntary - Allows tailoring to actual needs instead of forcing compliance theater

Then we crosswalked to complementary frameworks because different stakeholders care about different standards:

- ISO/IEC 42001 - Management system structure for organizational governance
- ISO/IEC 23894 - Detailed risk management process guidance
- NIST SP 800-53 - Security control mappings for technical implementations
- EU AI Act - High-risk system obligations for regulatory context

### What v0.1 Formalizes

Here's how our actual artifacts map to the AI RMF functions (as defined in NIST AI 100-1 § 2):

GOVERN Function:

- Repository AI Acceptable Use Policy establishes oversight and approved platforms
- Model Selection Strategy documents risk tolerance and architectural decisions
- Roles and responsibilities defined (repository maintainer, contributors, AI Governance Committee)

MAP Function:

- Model cards identify capabilities, limitations, and known biases for each tool
- Risk identification for each tier (Tier 0 local privacy, Tier 1-3 commercial platforms)
- Data classification approach (public repository content, draft work, proprietary)

MEASURE Function:

- Multi-model consensus methodology defines quality metrics
- Quarterly review triggers ensure continuous evaluation
- Cost/benefit analysis tracks ROI (175 hours/year saved for $140/month spend)

MANAGE Function:

- Four-tier architecture implements risk-based tool selection
- Model exit interview template for deprecating tools systematically
- Evidence artifacts (model cards, policy acknowledgments, methodology docs)

This isn't theoretical compliance—it's our actual operational system.

---

## 🗓️ Where This Goes Next

### Change Log

| Version | Date | Milestone | Key Changes |
|---------|------|-----------|-------------|
| 0.1.0 | 2025-10-10 | Formalization | Repository governance operational, templates extracted, gap analysis documented |

### v0.2/0.3 Preview: Framework-Guided Decision Making

We've informally decided Business ChatGPT might be worth exploring with its added security controls and team functions. Now we'll use our v0.1 framework to evaluate it formally in v0.2.

The context:

- Potential replacement for ChatGPT Plus in our Tier 1 (daily workhorse) slot
- Connectors enable secure access to Outlook, Teams, and SharePoint
- We run a hybrid cloud tenancy—this touches organizational data governance

What we'll document:

- MAP: How does Business GPT change our risk surface? (New risks: enterprise data access, expanded attack surface)
- MEASURE: What evaluation criteria apply? (Comparative analysis vs. existing stack, ROI calculation)
- MANAGE: What controls are needed? (Integration strategy, policy updates, evidence from pilot)

Framework application in action:

- Update `risks.yaml` with Business GPT-specific risks
- Create `eval-plan.yaml` for pilot assessment
- Modify `control-mapping.yaml` with new controls
- Generate model card if we adopt it

Honest transparency: We're learning what this evaluation looks like too. The framework gives us structure, but this will be our first documented example of using it for a major AI adoption decision.

When v0.2 releases, you'll see:

- Complete evaluation documentation in `examples/business-gpt-evaluation/`
- Updated policy templates incorporating enterprise integration learnings
- Lessons learned about framework application to real decisions (including what didn't work)

---

## 🎯 How to Use This Repository

### If You're Starting AI Governance

You're probably where we were three months ago—using AI tools productively but managing them informally.

Phase 1: Inventory (Week 1)

1. List all AI tools your team uses and their costs
2. Document who uses them and for what tasks  
3. Identify what data gets processed through these tools
4. Note any implicit policies you're already following (you probably have unwritten rules)

Phase 2: Gap Analysis (Week 2)

1. Use our `docs/gap-analysis.md` as a template (when it's published)
2. Identify your gaps using NIST AI RMF functions as a checklist
3. Prioritize based on risk—regulatory obligations, sensitive data, high-impact decisions go first

Phase 3: Formalize (Weeks 3-4)

1. Start with policy: Adapt `policies/ai-acceptable-use/template.md` to your organization
2. Document your tools: Use `schemas/model-card.schema.yaml` for each AI platform
3. Map your risks: Use `schemas/risk.schema.yaml` to identify what could go wrong
4. Define your architecture: Use `_repository-governance/model-selection-strategy.md` as inspiration (your stack will be different)

Phase 4: Operationalize (Ongoing)

1. Enforce policy through awareness and tooling (not just documents gathering dust)
2. Track compliance—policy acknowledgments, quarterly reviews, tool evaluations
3. Document decisions—when you add/remove tools, use the framework to explain why
4. Generate evidence—model cards, risk assessments, control mappings that auditors can actually use

### If You're in GRC/Compliance

Start here:

- Review `_repository-governance/` to see operational governance in action (not just theory)
- Examine `docs/crosswalks.md` for framework mappings to your existing control frameworks
- Use `policies/ai-acceptable-use/` as a starting point for organizational policy

Key value for you:

- Framework-aligned policies reduce audit burden—demonstrates systematic approach, not ad-hoc decisions
- Multi-framework crosswalks show how AI RMF complements existing programs (ISO, NIST, EU AI Act)
- Evidence-based approach provides actual audit trail (model cards, risk assessments, control mappings)

Your path:

1. Assess organizational AI footprint (inventory all AI systems—you'll find more than you expect)
2. Determine applicable frameworks (ISO 42001, EU AI Act, sector-specific regulations)
3. Adapt templates to organizational context (risk tolerance, data classification, resource constraints)
4. Work with engineering teams to populate schemas (model cards, data cards—this is collaborative)

### If You're in ML/AI Engineering

Start here:

- Review `schemas/` directory for documentation structure requirements
- Examine `_repository-governance/models/` for completed model cards (real examples, not hypothetical)
- Read `docs/methodology.md` for multi-model consensus process

Key value for you:

- Clear expectations for governance documentation that integrate with development workflows
- Structured formats (YAML) that fit engineering practices—version control, code review, CI/CD
- Evidence artifacts tie directly to your existing processes

Your path:

1. Create model card for each AI system using `schemas/model-card.schema.yaml`
2. Document training/retrieval data using `schemas/data-card.schema.yaml`
3. Identify system-specific risks using `schemas/risk.schema.yaml`
4. Store artifacts alongside code in version control (they're not separate compliance documents—they're part of the system)

### If You're in Leadership

Start here:

- Read this README for strategic context
- Review `_repository-governance/model-selection-strategy.md` to see how we make tool decisions
- Examine the ROI analysis ($140/month spend justified with 175 hours/year saved)

Key value for you:

- Demonstrates AI governance is achievable without armies of consultants
- Evidence-based decision making reduces risk of ad-hoc AI adoption
- Multi-framework alignment prepares for current and future regulatory requirements

Assessment questions:

1. Risk tolerance: Are we comfortable with our current informal AI governance?
2. Regulatory context: Which frameworks apply to our industry/geography?
3. Resource commitment: Can we dedicate time from engineering, legal, security, GRC?
4. Stakeholder buy-in: Do teams understand why governance matters?

---

## 📚 Framework Primer: NIST AI RMF in 5 Minutes

The AI Risk Management Framework organizes AI governance into four core functions. Here's how this repository demonstrates each one operationally.

### The Four Functions

GOVERN - Establish organizational oversight and culture

*Repository example:* AI Acceptable Use Policy, Model Selection Strategy, defined roles  
*Questions answered:* Who owns AI risk? What are our values? What's our risk tolerance?

MAP - Identify and understand risks in your context  

*Repository example:* Model cards documenting limitations, risk identification per tier  
*Questions answered:* What could go wrong? What harms might occur? Who's affected?

MEASURE - Test, evaluate, and quantify AI system performance

*Repository example:* Multi-model consensus methodology, quarterly reviews, ROI tracking  
*Questions answered:* How well does it work? Is it fair? Can we prove it?

MANAGE - Respond to risks and monitor continuously

*Repository example:* Four-tier architecture risk mitigation, model exit interviews  
*Questions answered:* How do we mitigate risks? Do controls work? What if something breaks?

### Why Framework Alignment Matters

For audits: Demonstrates systematic approach to AI risk management, not ad-hoc decisions  
For compliance: Maps directly to ISO 42001, EU AI Act, sector-specific regulations  
For efficiency: Avoid reinventing governance structures—leverage proven frameworks  
For communication: Common vocabulary across engineering, legal, executive teams

Multi-framework strength: This repository proves frameworks are complementary, not competing. Use NIST AI RMF as the process scaffold, ISO 42001 for management system structure, SP 800-53 for technical controls, and EU AI Act for regulatory requirements—all simultaneously.

---

## 🔗 Framework Alignment in Practice

This repository demonstrates operational interoperability with multiple AI governance frameworks. Organizations rarely operate under just one standard—you might need ISO 42001 for customer contracts, NIST SP 800-53 for government work, and EU AI Act for European operations.

### Primary Framework: NIST AI RMF 1.0

We use the AI RMF as our process scaffold because:

- Voluntary and flexible - Process-oriented, not prescriptive checklist
- Comprehensive - Lifecycle coverage from governance through risk management
- AI-specific - Designed for unique AI challenges (bias, explainability, evolving capabilities)
- Compatible - Works alongside existing risk management approaches

Official resource: [NIST AI RMF](https://www.nist.gov/itl/ai-risk-management-framework)

### Multi-Framework Operational Alignment

| Framework/Regulation | Alignment | How We Use It Operationally | Crosswalk |
|---------------------|-----------|----------------------------|-----------|
| NIST AI RMF 1.0 | Primary | Process scaffold for all governance activities | N/A (primary) |
| ISO/IEC 42001 | High | Management system structure, roles, documentation | ✅ [docs/crosswalks.md](docs/crosswalks.md) |
| ISO/IEC 23894 | High | Detailed risk management process, risk treatment | ✅ [docs/crosswalks.md](docs/crosswalks.md) |
| NIST SP 800-53 Rev. 5 | Medium | Technical control mappings for security objectives | ✅ [docs/crosswalks.md](docs/crosswalks.md) |
| EU AI Act | Medium | Regulatory requirements for high-risk systems | ✅ [docs/crosswalks.md](docs/crosswalks.md) |
| OWASP Top 10 for LLMs | High | Technical risk identification for LLM applications | 📜 Integrated |

### Real Example: Model Selection Decision

When we designed our four-tier model architecture, we simultaneously satisfied multiple frameworks. This isn't theoretical compliance—it's our actual operational system:

| Framework | Requirement | How Our Architecture Meets It |
|-----------|------------|------------------------------|
| NIST AI RMF | MAP.1.1: Context established | Model Selection Strategy documents organizational context, constraints ($140/month budget), use cases |
| ISO 42001 | Clause 8.2: AI risk assessment | Risk stratification by tier (Tier 0 privacy, Tier 1-3 commercial platforms) |
| NIST SP 800-53 | RA-3: Risk Assessment | Documented risk/cost/capability trade-offs with quarterly review triggers |
| EU AI Act | Art. 9: Risk management system | Continuous risk management process (model exit interviews, review cycles) |

Full crosswalk tables: [docs/crosswalks.md](docs/crosswalks.md)

---

## 🛣️ Roadmap

### ✅ Completed: Phase 1 - Formalization (v0.1)

October 2025:

- Repository AI governance operational (`_repository-governance/`)
- Model cards for all tools in use (Claude, GPT, Gemini, Llama)
- Multi-framework crosswalks (ISO 42001/23894, SP 800-53, EU AI Act)
- Generic policy templates extracted (`policies/ai-acceptable-use/`)
- Documentation schemas defined (model card, data card, risk, control mapping, eval plan)
- Gap analysis documenting journey from ad-hoc to formal governance

### 🎯 Next: Phase 2 - Framework-Guided Decision (v0.2/0.3)

Q1 2026 Target:

- Business GPT evaluation using MAP/MEASURE/MANAGE functions
- Complete worked example: `examples/business-gpt-evaluation/`
- Policy template updates incorporating enterprise integration learnings
- Model card for Business GPT (if adopted)
- Documented decision rationale regardless of outcome

### 📋 Future: Phase 3 - Automation (Q2 2026)

Planned:

- YAML schema validation (automated testing in CI/CD)
- OSCAL export capability (SSP, SAR, SAP, POA&M generation)
- CI/CD integration examples (GitHub Actions workflows)
- Evidence artifact handling patterns

### 📌 Future: Phase 4 - Integration (Q2-Q3 2026)

Planned:

- GRC tool adapters (GovReady-Q, OpenGRC)
- Additional worked examples (RAG assistant, classifier, vision model)
- Risk library expansion (OWASP LLM Top 10 integration)
- Compliance reporting templates

### 🌍 Future: Phase 5 - Ecosystem (2026+)

Vision:

- Industry-specific adaptations (healthcare, finance, government)
- Regulatory Technical Standards alignment (as EU AI Act RTS finalize)
- Community-contributed policy templates and examples
- Training materials and workshops

Note: Timeline subject to operational needs and community contribution. We build what we need when we need it, then generalize for others.

---

## 🌟 Community & Contributing

### Getting Help

Documentation:

- [📚 Repository Governance](_repository-governance/) - How this repository governs itself
- [📚 Methodology](docs/methodology.md) - Multi-model consensus and development process
- [📚 Framework Crosswalks](docs/crosswalks.md) - Detailed multi-framework mappings
- [📚 Gap Analysis](docs/gap-analysis.md) - How we got from ad-hoc to v0.1 *(to be published)*

Questions & Discussion:

- [💬 GitHub Discussions](https://github.com/vintagedon/nist-ai-rmf-cookbook/discussions) - Ask questions, share your use cases
- [🐛 GitHub Issues](https://github.com/vintagedon/nist-ai-rmf-cookbook/issues) - Report bugs, request features

### Contributing

We need help building this. Here's where contributions have the most impact:

High-value contributions:

- Real-world case studies - How you applied these frameworks in your organization (even if it's different from ours)
- Framework validation - Review crosswalk accuracy, especially if you work with ISO 42001 or EU AI Act
- Policy templates - Additional policies as you need them (model development, vendor management, incident response)
- Industry adaptations - Healthcare, finance, government contexts that require specialized approaches

Quick contribution guide:

1. [Fork the repository](https://github.com/vintagedon/nist-ai-rmf-cookbook/fork)
2. Create a feature branch: `git checkout -b feature/new-policy-template`
3. Make your changes following existing patterns
4. Add educational guidance (📘 boxes in templates) where helpful
5. Commit with clear messages: `git commit -m 'Add vendor management policy template'`
6. Push to your fork: `git push origin feature/new-policy-template`
7. [Open a Pull Request](https://github.com/vintagedon/nist-ai-rmf-cookbook/pulls)

Contribution standards:

- Policy templates must include educational 📘 boxes explaining customization
- Schemas must follow JSON Schema Draft 07 format
- All work must map to specific NIST AI RMF functions
- Framework crosswalks require citation to official sources
- Operational examples must demonstrate actual use, not hypothetical scenarios

Project governance:

- [Code of Conduct](CODE_OF_CONDUCT.md) - Community standards *(to be created)*
- [Contributing Guidelines](CONTRIBUTING.md) - Detailed contribution process *(to be created)*
- [License](LICENSE) - MIT License for maximum reusability

---

## 📖 Related Resources

### Official Standards & Frameworks

- [NIST AI Risk Management Framework](https://www.nist.gov/itl/ai-risk-management-framework) - The foundational framework this repository operationalizes
- [NIST AI RMF Playbook](https://www.nist.gov/itl/ai-risk-management-framework/nist-ai-rmf-playbook) - NIST's suggested actions for implementing the framework
- [ISO/IEC 42001:2023](https://www.iso.org/standard/81230.html) - International standard for AI management systems
- [ISO/IEC 23894:2023](https://www.iso.org/standard/77304.html) - Guidance on AI risk management
- [NIST SP 800-53 Rev. 5](https://csrc.nist.gov/publications/detail/sp/800-53/rev-5/final) - Security and privacy controls catalog
- [OSCAL Documentation](https://pages.nist.gov/OSCAL/) - Open Security Controls Assessment Language
- [EU AI Act](https://digital-strategy.ec.europa.eu/en/policies/regulatory-framework-ai) - European Union's AI regulation

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

## 🙏 Acknowledgments

### Framework Foundation

This repository is built on foundational work from:

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

Methodology: This repository was created using the multi-model consensus process documented in [docs/methodology.md](docs/methodology.md). AI tools provided drafting assistance, structural suggestions, and cross-validation. All content was human-reviewed, verified against authoritative sources, and integrated into a coherent operational system. The AI tools themselves are documented via model cards in `_repository-governance/models/`.

Community Contributors: *Your name could be here—see Contributing section*

---

## 💡 Getting Started Checklist

New to the repository? Here's your path:

- [ ] Read this README to understand the v0.1 journey and operational context
- [ ] Review `docs/gap-analysis.md` to see how we got from ad-hoc to formal governance *(to be published)*
- [ ] Explore `_repository-governance/` to see operational governance in action
- [ ] Examine a policy template in `policies/ai-acceptable-use/`
- [ ] Review schemas in `schemas/` to understand documentation structure
- [ ] Check `docs/crosswalks.md` for your relevant regulatory framework
- [ ] Join [GitHub Discussions](https://github.com/vintagedon/nist-ai-rmf-cookbook/discussions) to ask questions or share your experience
- [ ] Consider contributing your own case studies or framework applications

---

## 🎯 Closing Thoughts

This isn't a finished product. This is v0.1 of a living system.

We formalized governance for AI tools we were already using productively. We documented decisions we had made informally. We applied frameworks to operational constraints, not aspirational scenarios. We proved it's possible to govern AI systems without grinding development to a halt.

The next phase will show how these frameworks guide decisions about *new* AI capabilities—evaluating Business GPT not just on features and cost, but on risk, controls, and framework alignment.

If you're using AI tools productively but managing them informally, you're where we were three months ago. These templates and frameworks can help you formalize what you're already doing.

If you're building AI governance from scratch, this operational example shows it's achievable with realistic resource constraints. You don't need an army of consultants—you need a systematic approach and the willingness to document as you go.

We're learning as we build. So are you. Let's learn together.

---

## 🔬 Citation & Archival Record

This repository is archived and versioned through Zenodo to ensure long-term availability and provide stable citation for academic and professional use.

Version 0.1.0 Citation:

Donald, F. (2025). *NIST AI RMF Cookbook: Operational Templates and Schemas for AI Governance Implementation (0.1)*. Zenodo. <https://doi.org/10.5281/zenodo.17332823>

Why this matters:

Governance frameworks need stable references. When you cite this work in policies, audit documentation, or research, the DOI ensures the specific version you referenced remains accessible. As we release new versions (v0.2 evaluating Business GPT, v0.3 with automation tools), each gets its own DOI. Your citations stay accurate.

When to cite:

- Adapting our policy templates for your organization
- Using our schemas in your documentation systems
- Referencing our framework crosswalks in compliance mapping
- Building on our methodological approach in your research

BibTeX:

```bibtex
@software{donald_2025_nist_ai_rmf_cookbook,
  author       = {Donald, Frederick},
  title        = {{NIST AI RMF Cookbook: Operational Templates and 
                   Schemas for AI Governance Implementation}},
  month        = oct,
  year         = 2025,
  publisher    = {Zenodo},
  version      = {0.1.0},
  doi          = {10.5281/zenodo.17332823},
  url          = {https://doi.org/10.5281/zenodo.17332823}
}
```

---

## ⚖️ Disclaimer

This repository represents an independent, open-source implementation of AI governance frameworks. It is not endorsed by, affiliated with, or representing the official positions of:

- National Institute of Standards and Technology (NIST)
- International Organization for Standardization (ISO)
- International Electrotechnical Commission (IEC)
- European Commission
- Any other standards body or regulatory authority

This work demonstrates practical application of publicly available frameworks and standards. Organizations should consult official guidance documents and qualified legal/compliance advisors when implementing AI governance programs. The approaches documented here reflect our specific operational context and should be adapted to your organization's requirements, risk tolerance, and regulatory obligations.

---

## 📖 References

### Primary Framework Documents

[1] National Institute of Standards and Technology, "Artificial Intelligence Risk Management Framework (AI RMF 1.0)," NIST AI 100-1, Jan. 2023. [Online]. Available: <https://doi.org/10.6028/NIST.AI.100-1>

[2] National Institute of Standards and Technology, "Artificial Intelligence Risk Management Framework (AI RMF) Playbook," Companion to NIST AI 100-1, Jan. 2023. [Online]. Available: <https://www.nist.gov/itl/ai-risk-management-framework/ai-rmf-playbook>

[3] National Institute of Standards and Technology, "Artificial Intelligence Risk Management Framework: Generative Artificial Intelligence Profile," NIST AI 600-1, Jul. 2024. [Online]. Available: <https://doi.org/10.6028/NIST.AI.600-1>

### Supporting Standards and Regulations

[4] International Organization for Standardization, "ISO/IEC 42001:2023 - Information technology — Artificial intelligence — Management system," 2023. [Online]. Available: <https://www.iso.org/standard/81230.html>

[5] International Organization for Standardization, "ISO/IEC 23894:2023 - Information technology — Artificial intelligence — Guidance on risk management," 2023. [Online]. Available: <https://www.iso.org/standard/77304.html>

[6] National Institute of Standards and Technology, "Security and Privacy Controls for Information Systems and Organizations," NIST Special Publication 800-53, Rev. 5, Sep. 2020. [Online]. Available: <https://doi.org/10.6028/NIST.SP.800-53r5>

[7] European Commission, "Regulation (EU) 2024/1689 of the European Parliament and of the Council on Artificial Intelligence (AI Act)," Official Journal of the European Union, Jul. 2024. [Online]. Available: <https://eur-lex.europa.eu/eli/reg/2024/1689/oj>

### Technical Resources

[8] OWASP Foundation, "OWASP Top 10 for Large Language Model Applications," v1.1, 2023. [Online]. Available: <https://owasp.org/www-project-top-10-for-large-language-model-applications/>

[9] M. Mitchell et al., "Model Cards for Model Reporting," in Proc. Conference on Fairness, Accountability, and Transparency (FAT* '19), 2019, pp. 220-229. [Online]. Available: <https://doi.org/10.1145/3287560.3287596>

[10] T. Gebru et al., "Datasheets for Datasets," Communications of the ACM, vol. 64, no. 12, pp. 86-92, Dec. 2021. [Online]. Available: <https://doi.org/10.1145/3458723>

### This Repository

[11] F. Donald, "NIST AI RMF Cookbook: Operational Templates and Schemas for AI Governance Implementation," v0.1.0, Zenodo, Oct. 2025. [Online]. Available: <https://doi.org/10.5281/zenodo.17332823>

---

Document Version: 0.1.0  
Last Updated: 2025-10-10  
Framework: NIST AI RMF 1.0  
Status: Operational  
License: MIT  
Contact: [GitHub Issues](https://github.com/vintagedon/nist-ai-rmf-cookbook/issues)
