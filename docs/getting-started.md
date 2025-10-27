# Getting Started with the NIST AI RMF Cookbook

## What You're Looking At

This repository contains operational AI governance artifacts: policies, standards, risk assessments, model cards, and templates. Not theoretical frameworks—actual documentation we use to govern AI systems at RadioAstronomy.io.

You're here because you need governance that works at small-team scale. This shows it's achievable.

## First Decision: Do You Need Governance?

**Start here:** [`policies-proxmox-cluster/risk-scenarios/`](../policies-proxmox-cluster/risk-scenarios/)

Read through R01-R10. These describe AI risks in operational terms—data exposure, credential leakage, prompt injection, infrastructure drift, supply chain vulnerabilities, access control, hallucinations, compliance gaps, cost sprawl, logging blind spots.

If 3+ scenarios make you think "yeah, that could happen to us," you need systematic governance. If most scenarios seem irrelevant, you might not—yet.

## Repository Structure at a Glance

```
nist-ai-rmf-cookbook/
├── policies-proxmox-cluster/          ← Our actual implementation
│   ├── 01-ai-governance-policy.md     ← Governance structure & oversight
│   ├── standards/                      ← Risk assessment, security, transparency
│   ├── risk-scenarios/                 ← R01-R10 operational risk library
│   ├── model-cards/                    ← Deployed system documentation
│   └── appendices/                     ← Framework crosswalk, glossary, decision logs
│
├── *-templates/                        ← Blank templates for your implementation
│   ├── policy-templates/               ← Policy structure & guidance
│   ├── standards/                      ← Standard templates with inline help
│   ├── risk-scenario-templates/        ← Risk assessment pattern
│   ├── model-cards-templates/          ← Model documentation structure
│   └── appendices-templates/           ← Supporting docs (inventory, charter, etc.)
│
├── model-cards/                        ← 130+ vendor model assessments
│   └── [vendor]-[model]-model-card.yaml
│
└── docs/                               ← You are here
    ├── getting-started.md              ← This document
    ├── framework-decision-rationale.md ← Why these frameworks
    └── article-templates/              ← Writing patterns for public explainers
```

**Key Pattern:** Our implementation lives in `policies-proxmox-cluster/`. Templates live in `*-templates/` directories. The model card library documents the vendor landscape. Everything else supports these.

## Navigation by Intent

### "I need to understand governance frameworks"

1. Read [`mission-statement.md`](../mission-statement.md) - Why we built this
2. Read [`docs/framework-decision-rationale.md`](framework-decision-rationale.md) - Why these frameworks specifically
3. Review [`policies-proxmox-cluster/appendices/appendix-a-ai-framework-crosswalk.md`](../policies-proxmox-cluster/appendices/appendix-a-ai-framework-crosswalk.md) - How frameworks map together

### "I need to assess our AI risks"

1. Start with [`policies-proxmox-cluster/risk-scenarios/README.md`](../policies-proxmox-cluster/risk-scenarios/README.md)
2. Read through R01-R10 scenarios
3. Use [`risk-scenario-templates/risk-scenario-template.md`](../risk-scenario-templates/risk-scenario-template.md) to document your own risks
4. Reference [`standards/ai-risk-assessment-standard-template.md`](../standards/ai-risk-assessment-standard-template.md) for systematic process

### "I need to document an AI system we're deploying"

1. Review example model cards in [`policies-proxmox-cluster/model-cards/`](../policies-proxmox-cluster/model-cards/) to see pattern
2. Check vendor landscape in [`model-cards/`](../model-cards/) - we may have already assessed that model
3. Use [`model-cards-templates/model-card-general-template.yaml`](../model-cards-templates/model-card-general-template.yaml) for your implementation
4. Link risks to scenarios, controls to standards

### "I need to write governance policies"

1. Read [`policies-proxmox-cluster/01-ai-governance-policy.md`](../policies-proxmox-cluster/01-ai-governance-policy.md) - Our implementation as reference
2. Review [`policies-proxmox-cluster/standards/`](../policies-proxmox-cluster/standards/) - How standards support policy
3. Use [`policy-templates/`](../policy-templates/) to create your version
4. Adapt to your risk profile, don't copy verbatim

### "I need to implement technical controls"

1. Review [`policies-proxmox-cluster/standards/03-secure-ai-systems-standard.md`](../policies-proxmox-cluster/standards/03-secure-ai-systems-standard.md)
2. Note CIS Controls v8.1 IG1 baseline (56 controls, small-team focused)
3. Check [`policies-proxmox-cluster/appendices/appendix-c-tool-model-inventory.md`](../policies-proxmox-cluster/appendices/appendix-c-tool-model-inventory.md) for inventory pattern
4. Map your infrastructure against control baselines

### "I need transparency/disclosure guidance"

1. Read [`policies-proxmox-cluster/standards/04-ai-transparency-disclosure-standard.md`](../policies-proxmox-cluster/standards/04-ai-transparency-disclosure-standard.md)
2. Review [`policies-proxmox-cluster/ai-acceptable-use-policy-formal.md`](../policies-proxmox-cluster/ai-acceptable-use-policy-formal.md) for user-facing guidance
3. Use [`docs/article-templates/public-explainer-article-template.md`](article-templates/public-explainer-article-template.md) for external communication

### "I'm evaluating vendor models"

1. Search [`model-cards/`](../model-cards/) - 130+ models already assessed
2. Review assessment criteria in existing cards (trustworthiness dimensions, risk ratings)
3. Use [`model-cards-templates/saas-model-card-template.yaml`](../model-cards-templates/saas-model-card-template.yaml) for SaaS vendors
4. Cross-reference risk scenarios when documenting concerns

## Framework Integration

This repository integrates four frameworks:

- **NIST AI RMF 1.0** - Governance structure (Map, Measure, Manage, Govern functions)
- **CIS-RAM** - Repeatable risk assessment methodology
- **CIS Controls v8.1 IG1** - Technical baseline (56 controls for small teams)
- **Colorado SB-24-205** - Concrete regulatory language (voluntarily adopted)

**Why these?** See [`docs/framework-decision-rationale.md`](framework-decision-rationale.md) for full reasoning. Short version: operationalizable at small-team scale with realistic resources.

The crosswalk in [`appendices/appendix-a-ai-framework-crosswalk.md`](../policies-proxmox-cluster/appendices/appendix-a-ai-framework-crosswalk.md) shows how they reinforce each other.

## Critical Understanding: This Is Reference Implementation

**Our governance reflects our context:**
- 6-person team managing on-premises research infrastructure
- AI-native operations producing cited scientific datasets
- Google Workspace + Gemini Enterprise deployment
- Specific risk profile from astronomy research workload

**Your governance should look different:**
- Different team size, structure, expertise
- Different infrastructure and vendor dependencies  
- Different regulatory obligations and risk tolerance
- Different use cases and downstream impact

**Use this repository to:**
- Understand what operational governance looks like in practice
- Learn framework integration patterns that actually work
- Adapt templates and processes to your specific context
- See worked examples of risk assessment, control mapping, transparency

**Do not use this repository to:**
- Copy policies verbatim without contextual adaptation
- Substitute for professional compliance auditing (we work with external security consultants)
- Claim certification or regulatory compliance (see mission statement disclaimer)
- Avoid thinking through your own risk profile and requirements

## What Success Looks Like

After 2-4 weeks working with this repository, you should have:

**Assessment complete:**
- Risk scenarios documented for your context
- AI systems inventory with basic model cards
- Gap analysis against chosen frameworks

**Foundation established:**
- Governance policy defining structure and oversight
- Core standards for risk, security, transparency
- Review process or board charter (even if it's 2 people)

**Operational process:**
- Version control for governance docs
- Decision log capturing rationale
- Model card workflow for new AI deployments
- Regular risk review cadence

**Not perfect, but systematic.** Governance is continuous improvement, not one-time implementation.

## Getting Help

**This repository documents our implementation.** We share it to help others, but we're not consultants and this isn't support infrastructure.

**If you need:**
- Clarification on framework concepts → Start with NIST AI RMF official documentation
- Legal/compliance advice → Engage qualified professionals (we do too)
- Industry-specific guidance → Domain consultants understand your regulatory environment
- Certification preparation → External auditors are essential

**What the repo provides:**
- Proof that small-team governance is achievable
- Patterns and templates you can adapt
- Worked examples showing framework integration
- Operational artifacts demonstrating what "done" looks like

Study what works for us. Build what works for you. Adapt, don't adopt.

## Quick Start Checklist

For teams ready to begin implementation:

- [ ] Read mission statement and framework rationale
- [ ] Review R01-R10 risk scenarios, note which apply to your context
- [ ] Inventory your AI systems (tools, models, deployments)
- [ ] Choose governance framework(s) matching your scale and obligations
- [ ] Adapt governance policy template to establish structure
- [ ] Create 3-5 risk scenarios specific to your highest-exposure areas
- [ ] Document 1-2 deployed systems with model cards
- [ ] Establish version control and decision logging
- [ ] Define review process (even informal)
- [ ] Set 90-day review cycle for continuous improvement

Start small. Build systematically. Improve continuously.

---

**Next:** [`framework-decision-rationale.md`](framework-decision-rationale.md) explains why we chose these specific frameworks over alternatives.
