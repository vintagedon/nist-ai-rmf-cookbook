# 🧭 NIST AI RMF Cookbook

Operational AI governance for small teams producing work with downstream impact.

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![Version](https://img.shields.io/badge/version-0.2.0-orange.svg)]()
[![Status](https://img.shields.io/badge/status-active--development-green.svg)]()
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.PENDING.svg)](https://doi.org/10.5281/zenodo.PENDING)

> Project Status: v0.2 - Active Development (Q4 2025)  
> Operational AI governance system for a six-person citizen science team producing enhanced research datasets. We operationalized the same rigor we apply to data quality into AI governance—not because regulations require it, but because quality outputs require quality process.

---

## 📖 What This Is

This repository contains operational AI governance artifacts from RadioAstronomy.io—a collaboration between IT professionals and citizen scientists managing on-premises infrastructure for astronomy research. We produce datasets that are being downloaded, cited, and used by other researchers. When your outputs have downstream impact, operational responsibility follows.

You get our complete governance system: policies, standards, risk scenarios, and 130+ model cards. Version-controlled, peer-reviewed, board-approved documentation mapping NIST AI RMF, CIS Controls, CIS-RAM, and Colorado SB-24-205 into operational practice. These aren't aspirational frameworks—this is what we actually use to run a six-person AI-native team.

We share this because open science means transparency about both the data and the operational practices ensuring its quality. Read our [mission statement](mission-statement.md) for the full story on why downstream responsibility drove us to formalize governance and share it publicly.

[Learn more about the astronomy lab →](https://github.com/Proxmox-Astronomy-Lab/proxmox-astronomy-lab)

---

## ✨ Key Features

130+ Model Cards - NIST-aligned assessments covering major AI systems from 15+ vendors (Anthropic, Google, Meta, Microsoft, Mistral, OpenAI, and emerging providers). Each card maps capabilities, risks, and controls to NIST AI RMF trustworthiness characteristics.

Policy Stack - Four integrated frameworks operationalized: AI Governance Policy, Risk Assessment Standard, Secure AI Systems Standard, and Transparency & Disclosure Standard. Board-approved and enforced through Google Workspace Enterprise.

Operational Risk Library - R01-R10+ risk scenarios documenting AI-specific threats (data exposure, credential leakage, prompt injection, infrastructure drift, supply chain vulnerabilities) with controls mapped to CIS Controls IG1 baseline.

Adaptable Templates - Reusable patterns extracted from operational documentation. Model card templates, policy structures, risk assessment frameworks, and impact assessment guides ready for your context.

Framework Integration - Proven approach combining NIST AI RMF (structure), CIS-RAM (methodology), CIS Controls v8.1 IG1 (technical baseline), and Colorado SB-24-205 (regulatory language) into comprehensive governance achievable at small-team scale.

[Browse model card collection →](./model-cards/)  
[See example policy →](./policies-proxmox-cluster/01-ai-governance-policy.md)  
[Review risk scenarios →](./policies-proxmox-cluster/risk-scenarios/)

---

## 🚀 Quick Start

New to AI governance or evaluating this repository?

1. Assess relevance: Read [`policies-proxmox-cluster/risk-scenarios/`](./policies-proxmox-cluster/risk-scenarios/) - If 3+ scenarios apply to your operations, systematic governance would benefit you
2. Understand approach: Review [`docs/framework-decision-rationale.md`](./docs/framework-decision-rationale.md) - Why we chose these frameworks over alternatives
3. See it in action: Examine [`policies-proxmox-cluster/01-ai-governance-policy.md`](./policies-proxmox-cluster/01-ai-governance-policy.md) - Our operational governance structure
4. Explore resources: Browse [`model-cards/`](./model-cards/) for vendor assessments you might need
5. Adapt to your context: Use templates in `*-templates/` directories to build your own governance artifacts

Comprehensive navigation guide: [`docs/getting-started.md`](./docs/getting-started.md)

---

## 🗂️ Repository Structure

```markdown
nist-ai-rmf-cookbook/
├── policies-proxmox-cluster/      # Our operational implementation
│   ├── 01-ai-governance-policy.md
│   ├── standards/                 # Risk assessment, security, transparency
│   ├── risk-scenarios/            # R01-R10 operational risk library
│   ├── model-cards/               # Deployment-specific documentation
│   └── appendices/                # Framework crosswalk, decision logs
│
├── model-cards/                   # 130+ vendor model assessments
├── *-templates/                   # Reusable templates for your implementation
│   ├── policy-templates/
│   ├── model-cards-templates/
│   ├── risk-scenario-templates/
│   └── appendices-templates/
│
├── docs/                          # Documentation and guides
│   ├── getting-started.md
│   ├── framework-decision-rationale.md
│   └── article-templates/
│
└── schemas/                       # YAML validation schemas
```

Each directory contains its own README with detailed navigation. See [`docs/getting-started.md`](./docs/getting-started.md) for comprehensive structure explanation and navigation by intent.

---

## 🛠️ The Story: v0.1 → v0.2

### v0.1: The Ad-Hoc Phase (Q3 2025)

Where we started:

- Azure infrastructure with expensive licensing
- AI tools scattered across personal accounts
- "GPT Business solves everything" (narrator: it didn't)
- Informal practices without documentation
- No framework alignment or risk assessment

We were using AI productively, but managing it through tribal knowledge and good intentions. It worked until it didn't scale.

### Team Evolution

Six-person team with diverse backgrounds:

- CTO/Repository Owner (also engineer)
- System engineers with high-compliance environment experience
- Networking engineer
- Senior support desk role
- Security advisor

This mix brought both technical capability and compliance awareness from regulated industries, but the question remained: could we achieve enterprise-grade governance at small-team scale without enterprise budgets?

### v0.2: Operational Governance (Q4 2025)

Infrastructure transformation:

- Google Workspace Enterprise as the work fabric
- Gemini integrated everywhere (Docs, Sheets, Gmail, Meet, Drive)
- Gemini CLI running automation (120 req/min, enterprise identity, audit logs)
- NetBird zero-trust mesh (no exposed services)
- Kasm isolated workspaces for protected data

Governance formalization:

- AI Review Board established (entire team rotates the ARO role)
- Policies drafted, reviewed, board-approved
- Risk assessment process operationalized
- 130+ model cards documenting vendor landscape
- Technical controls mapped to CIS Controls v8.1 IG1 baseline

Framework integration:
We chose frameworks based on practical operational needs:

- NIST AI RMF 1.0 - Governance structure and trustworthiness framework
- CIS-RAM - Repeatable risk assessment methodology
- CIS Controls v8.1 IG1 - Technical baseline (56 controls for small teams)
- Colorado SB-24-205 - Concrete regulatory language and requirements

Result: Comprehensive governance system running on commodity infrastructure ($250/month tool costs, open-source where possible) with enterprise-grade rigor. This is what operational AI governance looks like at small-team scale—not scaled-down enterprise programs or aspirational frameworks, but actual practice.

---

## ⚙️ Framework Integration

NIST AI RMF is descriptive, not prescriptive. It defines what to consider (risks, trustworthiness, stakeholders) and why it matters (safety, accountability, transparency). The implementation details are yours to determine based on your context.

### The Four Frameworks Work Together

NIST AI RMF 1.0 provides governance structure through four core functions (Govern, Map, Measure, Manage) and establishes trustworthiness characteristics for AI systems.

CIS-RAM operationalizes NIST's functions into repeatable assessment methodology: Identify, Assess, Prioritize, Respond, Monitor. It's the "how" that makes NIST's "what" actionable.

CIS Controls v8.1 IG1 delivers technical baseline—56 specific controls achievable by small teams without dedicated security staff. Basic cyber hygiene mapped to AI trustworthiness principles.

Colorado SB-24-205 adds regulatory concreteness—operational definitions of "high-risk AI systems," impact assessment requirements, disclosure obligations, and consumer rights. We voluntarily adopted it to demonstrate proactive governance and access concrete regulatory language.

Together: Governance structure + risk methodology + technical controls + regulatory alignment = comprehensive system achievable with realistic resources.

Deep dive: [`docs/framework-decision-rationale.md`](./docs/framework-decision-rationale.md) explains our selection process, what we rejected (ISO 42001, SOC 2, FedRAMP), and why these specific frameworks satisfy our operational needs.

### What Changes vs. What Stays Constant

| Changes Based on Your Context | Stays Constant (The Framework) |
|-------------------------------|-------------------------------|
| Your specific risks and threats | The evidence types you need |
| Your tools and infrastructure | Four core functions (Govern, Map, Measure, Manage) |
| Your budget and resource constraints | Risk management process and methods |
| Your regulatory environment | Systematic approach to AI governance |

Our implementation is opinionated—six-person team, Google Workspace, astronomy research, public datasets, zero-trust enclave.

Our templates are adaptable—extracted patterns that work regardless of your stack.

When your implementation looks different from ours, that's not a bug—that's the framework working as intended. Your risk assessment depth should match your downstream impact and organizational risk tolerance.

---

## 📦 What v0.2 Contains

### Operational Policies (`/policies-proxmox-cluster/`)

Complete governance suite for our infrastructure:

- AI Governance Policy - Foundational structure, Review Board charter, risk tolerance framework, NIST RMF adoption
- AI Risk Assessment & Management Standard - NIST Map + CIS-RAM evaluation + CIS Controls mitigation (systematic 4-8 hour assessment per system)
- Secure AI Systems Standard - CIS Controls IG1 baseline (56 safeguards), zero-trust architecture, agent governance, acceptable use
- AI Transparency & Disclosure Standard - Impact assessments, model cards, consumer rights, incident disclosure procedures
- Framework Crosswalk - Integration mapping across NIST/CIS-RAM/CIS Controls/Colorado SB-24-205

Supporting documentation:

- Decision log documenting framework selection rationale
- Implementation guides showing how frameworks work together operationally
- Role-based AI stack defining which models for what purposes

### Model Cards (`/model-cards/`)

130+ cards covering the vendor landscape:

Major Providers:

- Anthropic Claude family (Opus, Sonnet, Haiku across versions)
- Google Gemini (1.0, 1.5, 2.5 across Pro/Flash/Nano)
- Meta Llama (3, 3.1, 4 variants)
- Microsoft Phi (3, 4 reasoning and multimodal)
- Mistral/Mixtral family
- OpenAI GPT (4, 5, o1/o3 reasoning models)

Emerging Providers:

- DeepSeek, Qwen, Yi, Falcon, and others

Each card maps to NIST trustworthiness characteristics (valid/reliable, safe, secure/resilient, accountable/transparent, explainable/interpretable, privacy-enhanced, fair with bias managed) and provides risk categorization for RMF functions.

### Templates (`/*-templates/`)

Reusable patterns extracted from operational documentation:

- Model card templates with YAML schema validation
- Policy structure templates with inline guidance
- Risk scenario documentation patterns (CIS-RAM methodology)
- Impact assessment templates (AISIA format)
- Appendix templates (crosswalks, glossaries, decision logs)

### Schemas (`/schemas/`)

YAML schemas for structure enforcement and validation across all documentation types. Enables automated quality checks and consistency verification.

### What's NOT Here Yet

Realistic scope acknowledgment for v0.2:

- ❌ Universal governance solution - Our implementation reflects our specific context; yours will differ
- ❌ Complete risk scenario library - We build as we encounter scenarios, not speculatively
- ❌ Full automation tooling - YAML validation works; CI/CD workflows and GRC integration planned for future releases
- ❌ Extended implementation guides - Focusing on core operational needs first; detailed guides as community needs emerge
- ❌ Certification audit support - This demonstrates governance maturity but doesn't replace professional audit preparation

We build what we need when we need it, then extract patterns for sharing. No speculative development.

---

## 🎯 Who This Serves

Small teams producing impactful work - If your outputs matter (datasets being cited, models being deployed, research influencing others), you have downstream responsibility. This shows governance is achievable at your scale.

AI-native organizations - When AI is woven into everything you do, informal management doesn't scale. This provides systematic process you can actually implement without enterprise resources.

Teams navigating US regulatory complexity - Fragmented state laws, pending federal legislation, theoretical frameworks that don't operationalize. We built what works now with concrete examples and real implementation.

Research organizations - Scientific integrity demands quality governance when AI assists research. This shows it's achievable alongside research priorities.

Anyone evaluating frameworks - Our integration approach demonstrates how NIST AI RMF, CIS-RAM, CIS Controls, and regulatory requirements work together without redundant effort.

---

## 🤝 Contributing

This repository documents operational governance that evolved through team collaboration. Contributions welcome in several forms:

Framework implementation feedback:

- How did you adapt these templates to your context?
- What worked? What didn't?
- What's missing that would improve adaptability?

Additional model cards:

- Using a vendor we haven't documented? Contribute an assessment.
- Follow the YAML template and NIST trustworthiness mapping.

Risk scenarios:

- Encountered AI risks we haven't documented?
- Document scenario, controls, and monitoring metrics.

Framework crosswalks:

- Mappings to other compliance requirements (GDPR, HIPAA, FedRAMP, ISO standards)
- Help others satisfy multiple frameworks simultaneously.

Implementation examples:

- Adapted our templates for different contexts?
- Share your approach (anonymized if needed) to help others.

See [CONTRIBUTING.md](CONTRIBUTING.md) for detailed guidelines.

---

## 📜 License

MIT License - Use freely, adapt to your context, share improvements.

See [LICENSE](LICENSE) for full text.

---

## 👥 Authors & Acknowledgments

Primary Author: VintageDon ([GitHub](https://github.com/vintagedon))  
ORCID: [0009-0008-7695-4093](https://orcid.org/0009-0008-7695-4093)

RadioAstronomy.io Team:  
Six-person collaborative team including engineers, network specialist, and security advisor with backgrounds spanning high-compliance environments (Azure GCC/GCC High), commercial infrastructure, and enterprise security.

AI Assistance:  
Claude Sonnet 4.5 (Anthropic), Gemini Pro 2.5 (Google) and GLM 4.6 via Z.ai (with data restrictions)

This repository was created through iterative collaboration between human expertise and AI assistance. Policies underwent peer review and board approval. Model cards were verified against vendor documentation. All content represents operational practice, not theoretical frameworks.

Community Contributors: *Your name could be here—see Contributing section*

---

## 🔬 Citation & Archival Record

This repository is archived and versioned through Zenodo to ensure long-term availability and provide stable citation for academic and professional use.

Version 0.2.0 Citation:

Donald, F. (2025). *NIST AI RMF Cookbook: Operational AI Governance Implementation (v0.2)*. Zenodo. <https://doi.org/10.5281/zenodo.PENDING>

Why this matters:

Governance frameworks need stable references. When you cite this work in policies, audit documentation, or research, the DOI ensures the specific version you referenced remains accessible. As we release new versions, each gets its own DOI. Your citations stay accurate.

When to cite:

- Adapting our policies for your organization
- Using our model card templates
- Referencing our framework integration approach
- Building on our risk assessment methodology

BibTeX:

```bibtex
@software{donald_2025_nist_ai_rmf_cookbook_v02,
  author       = {Donald, Frederick},
  title        = {{NIST AI RMF Cookbook: Operational AI Governance 
                   Implementation}},
  month        = oct,
  year         = 2025,
  publisher    = {Zenodo},
  version      = {0.2.0},
  doi          = {10.5281/zenodo.PENDING},
  url          = {https://doi.org/10.5281/zenodo.PENDING}
}
```

---

## ⚖️ Disclaimer

This repository represents an independent, open-source implementation of AI governance frameworks. It is not endorsed by, affiliated with, or representing the official positions of:

- National Institute of Standards and Technology (NIST)
- Center for Internet Security (CIS)
- International Organization for Standardization (ISO)
- International Electrotechnical Commission (IEC)
- State of Colorado or any regulatory authority

This work demonstrates practical application of publicly available frameworks and standards. Organizations should consult official guidance documents and qualified legal/compliance advisors when implementing AI governance programs. The approaches documented here reflect our specific operational context and should be adapted to your organization's requirements, risk tolerance, and regulatory obligations.

We voluntarily adopted Colorado SB-24-205 requirements as part of proactive governance practice. This demonstrates our commitment to responsible AI deployment and provides concrete operational language for governance implementation, even though we are not legally subject to this regulation.

---

## 🎯 Closing Thoughts

This is v0.2 of a living system.

We went from Azure chaos with scattered AI accounts (v0.1) to operational governance on Google Workspace Enterprise with Gemini automation (v0.2). We formalized what we were already doing, integrated frameworks that work at small-team scale, and documented everything publicly.

The result: Comprehensive AI governance achievable without enterprise budgets or armies of consultants. Just systematic process, framework integration, and willingness to document operational reality.

If you're using AI productively but managing it informally, these templates can help you formalize what you're already doing.

If you're building AI governance from scratch, this operational example proves it's achievable with realistic resource constraints.

If you're evaluating frameworks, our integration approach shows how NIST/CIS-RAM/CIS Controls/Colorado SB-24-205 work together without redundant effort.

We're learning as we build. So are you. Let's learn together.

---

## 📖 References

### Primary Framework Documents

[1] National Institute of Standards and Technology, "Artificial Intelligence Risk Management Framework (AI RMF 1.0)," NIST AI 100-1, Jan. 2023. [Online]. Available: <https://doi.org/10.6028/NIST.AI.100-1>

[2] National Institute of Standards and Technology, "Artificial Intelligence Risk Management Framework (AI RMF) Playbook," Companion to NIST AI 100-1, Jan. 2023. [Online]. Available: <https://www.nist.gov/itl/ai-risk-management-framework/ai-rmf-playbook>

[3] National Institute of Standards and Technology, "Artificial Intelligence Risk Management Framework: Generative Artificial Intelligence Profile," NIST AI 600-1, Jul. 2024. [Online]. Available: <https://doi.org/10.6028/NIST.AI.600-1>

[4] Center for Internet Security, "CIS Controls v8.1," 2024. [Online]. Available: <https://www.cisecurity.org/controls/v8>

[5] Center for Internet Security, "CIS Risk Assessment Method (CIS RAM)," 2024. [Online]. Available: <https://www.cisecurity.org/insights/white-papers/cis-ram-risk-assessment-method>

[6] Colorado General Assembly, "Senate Bill 24-205: Concerning Consumer Protections in Interactions with Artificial Intelligence Systems," 2024. [Online]. Available: <https://leg.colorado.gov/bills/sb24-205>

### Supporting Standards

[7] International Organization for Standardization, "ISO/IEC 42001:2023 - Information technology — Artificial intelligence — Management system," 2023. [Online]. Available: <https://www.iso.org/standard/81230.html>

[8] International Organization for Standardization, "ISO/IEC 23894:2023 - Information technology — Artificial intelligence — Guidance on risk management," 2023. [Online]. Available: <https://www.iso.org/standard/77304.html>

[9] National Institute of Standards and Technology, "Security and Privacy Controls for Information Systems and Organizations," NIST Special Publication 800-53, Rev. 5, Sep. 2020. [Online]. Available: <https://doi.org/10.6028/NIST.SP.800-53r5>

### This Repository

[10] F. Donald, "NIST AI RMF Cookbook: Operational AI Governance Implementation," v0.2.0, Zenodo, Oct. 2025. [Online]. Available: <https://doi.org/10.5281/zenodo.PENDING>

---

Document Version: 0.2.0  
Last Updated: 2025-10-26  
Framework: NIST AI RMF 1.0 + CIS-RAM + CIS Controls v8.1 IG1 + Colorado SB-24-205  
Status: Active Development  
License: MIT  
Contact: [GitHub Issues](https://github.com/vintagedon/nist-ai-rmf-cookbook/issues)
