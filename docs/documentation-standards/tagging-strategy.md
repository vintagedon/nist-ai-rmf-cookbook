<!--
---
title: "Tagging Strategy"
description: "Controlled vocabulary for document classification in nist-ai-rmf-cookbook"
author: "VintageDon (https://github.com/vintagedon/)"
date: "2026-03-29"
version: "2.0"
tags:
  - type: guide
  - domain: documentation
related_documents:
  - "[Interior README Template](interior-readme-template.md)"
  - "[General KB Template](general-kb-template.md)"
  - "[Worklog README Template](worklog-readme-template.md)"
---
-->

# Tagging Strategy

## 1. Purpose

Controlled tag vocabulary for the nist-ai-rmf-cookbook repository. Consistent tagging enables human navigation and RAG system retrieval.

---

## 2. Why Controlled Vocabulary

Uncontrolled tagging leads to synonyms fragmenting search, inconsistent granularity, and tag proliferation that reduces signal. A controlled vocabulary defines allowed values upfront, ensuring consistency across contributors and time.

---

## 3. Tag Categories

| Category | Question Answered | Required |
|----------|-------------------|----------|
| `type` | What kind of document is this? | Yes |
| `domain` | What subject area? | Yes |
| `status` | What's the lifecycle state? | Recommended |
| `framework` | What compliance framework? | When applicable |

---

## 4. Domain Tags

| Tag | Use For | Boundary |
|-----|---------|----------|
| `governance` | AI Governance Policy, Review Board, risk tolerance, organizational structure | How AI is governed, not technical controls |
| `risk-assessment` | Risk scenarios, CIS-RAM methodology, threat identification, impact analysis | Identifying and evaluating risks, not mitigating them |
| `security` | Secure AI Systems Standard, CIS Controls, technical safeguards, zero-trust | Technical controls and security measures |
| `transparency` | Disclosure standards, impact assessments, consumer rights, incident reporting | What and how we communicate about AI use |
| `model-cards` | Vendor model assessments, NIST trustworthiness mappings, capability documentation | Individual model evaluations, not the template |
| `templates` | Reusable patterns: policy, model card, risk scenario, appendix, impact assessment | The extractable pattern, not our specific implementation |
| `compliance` | Framework crosswalks, regulatory mappings, audit evidence | Multi-framework alignment and regulatory language |
| `infrastructure` | Deployment context, tool stack, workspace configuration | The operational environment, not the governance of it |
| `documentation` | Templates, standards, meta-content about the repo itself | Docs about docs |

---

## 5. Type Tags

| Tag | Use For |
|-----|---------|
| `project-root` | Repository root README |
| `directory-readme` | Interior README for any directory |
| `worklog` | Work log entries and milestone documentation |
| `policy` | Governance policies: commitments and principles |
| `standard` | Operational standards: how activities are carried out |
| `model-card` | Individual AI model assessment (YAML) |
| `risk-scenario` | CIS-RAM risk documentation |
| `template` | Reusable document pattern |
| `guide` | Step-by-step procedures and how-to documents |
| `reference` | Lookup information: glossaries, crosswalks, schemas |
| `report` | Analysis findings, assessment results |

---

## 6. Status Tags

| Tag | Description |
|-----|-------------|
| `draft` | In development, not yet reviewed |
| `active` | Current, board-approved, maintained |
| `under-review` | Scheduled or triggered review in progress |
| `deprecated` | Superseded, avoid for new work |
| `archived` | Historical reference only |

---

## 7. Framework Tags

| Tag | Framework |
|-----|-----------|
| `nist-ai-rmf` | NIST AI Risk Management Framework 1.0 |
| `nist-ai-600` | NIST AI 600-1 Generative AI Profile |
| `cisv8` | CIS Controls v8.1 |
| `cis-ram` | CIS Risk Assessment Method |
| `co-sb24-205` | Colorado Senate Bill 24-205 |
| `iso-42001` | ISO/IEC 42001 AI Management System (reference only) |

---

## 8. Implementation

### Standard Frontmatter

```yaml
<!--
---
title: "Document Title"
description: "What this document covers"
author: "VintageDon (https://github.com/vintagedon/)"
date: "YYYY-MM-DD"
version: "1.0"
status: "Active"
tags:
  - type: policy
  - domain: governance
  - framework: [nist-ai-rmf, cisv8]
related_documents:
  - "[Related Doc](path/to/doc.md)"
---
-->
```

### Conventions

- Use lowercase, hyphenated values
- Framework tags reference the specific standard being mapped
- One value per line for readability, or array syntax for multi-value
- `related_documents` links use relative paths within the repo

---

## 9. Maintaining the Vocabulary

- This document is the authoritative source for allowed tag values
- Prefer broader tags over proliferating specific ones
- Check for existing coverage before adding new tags
- Backfill existing documents when adding new tags

---

## 10. References

| Resource | Description |
|----------|-------------|
| [Interior README Template](interior-readme-template.md) | Shows tag usage in directory READMEs |
| [General KB Template](general-kb-template.md) | Shows tag usage for standalone docs |
| [Worklog README Template](worklog-readme-template.md) | Shows tag usage for work log entries |
