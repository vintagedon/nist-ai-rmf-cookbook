# AGENTS.md

Entry point for AI coding agents working on this repository.

## Project Identity

**Domain:** AI Governance / Compliance / Risk Management
**Repository:** https://github.com/radioastronomyio/nist-ai-rmf-cookbook
**Purpose:** Operational AI governance artifacts from radioastronomy.io. Contains policies, standards, risk scenarios, and 130+ YAML model cards mapping NIST AI RMF, CIS Controls v8.1, CIS-RAM, and Colorado SB-24-205 into operational practice for a six-person citizen science team. Not aspirational frameworks; this is what we actually use.

## Current State

**Phase:** v0.2, active development
**Date:** March 2026

### What Exists

- **AI Governance Policy** with Review Board charter, risk tolerance framework, NIST RMF adoption
- **Three standards:** Risk Assessment, Secure AI Systems, Transparency & Disclosure
- **Risk scenario library** (R01-R10+) with CIS Controls mappings
- **130+ YAML model cards** covering Anthropic, Google, Meta, Microsoft, Mistral, OpenAI, DeepSeek, Qwen, and emerging providers
- **Reusable templates** for policies, model cards, risk scenarios, appendices, impact assessments
- **YAML validation schemas** for structure enforcement
- **Framework crosswalk** mapping NIST/CIS-RAM/CIS Controls/Colorado SB-24-205
- **Mission statement** explaining downstream responsibility rationale

### What Does NOT Exist Yet

- Complete risk scenario library (built as scenarios are encountered)
- CI/CD automation for YAML validation
- Extended implementation guides
- Certification audit support tooling

## Framework Integration

Four frameworks work together:

| Framework | Role |
|-----------|------|
| NIST AI RMF 1.0 | Governance structure (Govern, Map, Measure, Manage) |
| CIS-RAM | Risk assessment methodology (Identify, Assess, Prioritize, Respond, Monitor) |
| CIS Controls v8.1 IG1 | Technical baseline (56 controls for small teams) |
| Colorado SB-24-205 | Regulatory language and concrete requirements (voluntarily adopted) |

## Key Constraints

- This is a documentation/governance repo, not a code execution repo
- Model cards are YAML files with NIST trustworthiness characteristic mappings
- Policies are peer-reviewed and board-approved operational documents
- Templates are extracted patterns from operational documentation
- The `policies-proxmox-cluster/` directory is our specific implementation; `*-templates/` directories are the reusable patterns

## Execution Environment

**Primary execution:** ML01 (`/opt/repos/nist-ai-rmf-cookbook/`)
**Agent runtime:** OpenCode (global config at `~/.config/opencode/opencode.json`)
**Session management:** aoe (Agent of Empires)
**Strategic work:** Claude.ai Projects
**Agentic coding:** Claude Code, OpenCode

## Repository Structure

```
nist-ai-rmf-cookbook/
├── appendices-templates/           # Reusable appendix templates
├── assets/                         # Images, banners
├── docs/
│   ├── documentation-standards/    # Templates, tagging strategy
│   ├── article-templates/          # Article/blog templates
│   ├── framework-decision-rationale.md
│   ├── getting-started.md
│   └── glossary-of-terms.md
├── internal-files/                 # Working documents
├── model-cards/                    # 130+ vendor model assessments (YAML)
├── model-cards-templates/          # Reusable model card templates
├── policies-proxmox-cluster/       # Our operational implementation
│   ├── appendices/
│   ├── model-cards/                # Deployment-specific cards
│   ├── risk-scenarios/             # R01-R10+ risk library
│   ├── schemas/
│   └── standards/
├── policy-templates/               # Reusable policy templates
├── risk-scenario-templates/        # Reusable risk scenario templates
├── schemas/                        # YAML validation schemas
├── shared/                         # Cross-project utilities
├── spec/                           # Specifications
├── staging/                        # Staged work (gitignored)
├── standards/                      # Standard templates at repo level
├── work-logs/                      # Development history
├── AGENTS.md                       # This file
├── CLAUDE.md                       # Pointer to AGENTS.md
├── mission-statement.md            # Why downstream responsibility matters
├── LICENSE                         # MIT
└── README.md
```

## Conventions

- **Documentation:** Use templates from `docs/documentation-standards/`
- **Commits:** Conventional commits (`feat:`, `fix:`, `docs:`, `data:`)
- **Model cards:** Follow YAML template and NIST trustworthiness mapping
- **Frontmatter:** YAML frontmatter with tags from `docs/documentation-standards/tagging-strategy.md`
- **Interior READMEs:** Every directory has one

## Related Repositories

| Repository | Relationship |
|-----------|-------------|
| `proxmox-astronomy-lab` | Infrastructure documented by these governance artifacts |
| `ai-models-wiki` | Public-facing model governance data derived from this work |
| `ethops` | Autonomous IT ops framework governed under this policy stack |
