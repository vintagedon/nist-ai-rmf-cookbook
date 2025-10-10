<!--
---
title: "ChatGPT-5 Model Documentation"
description: "Model card and usage documentation for ChatGPT-5 (GPT-5) in repository governance"
owner: "VintageDon - https://github.com/vintagedon"
orcid: "https://orcid.org/0009-0008-7695-4093"
ai_contributor: "Claude (Anthropic)"
lastReviewed: "2025-10-10"
version: "1.0"
status: "Published"
tags:
- type: model-documentation
- domain: repository-governance
- framework: nist-ai-rmf
- model: gpt-5
related_documents:
- "[Models Directory](../README.md)"
- "[Model Selection Strategy](../../model-selection-strategy.md)"
- "[AI Acceptable Use Policy](../../ai-acceptable-use-policy.md)"
type: model-documentation
---
-->

# 🤖 ChatGPT-5 (GPT-5)

Tier 1 daily workhorse model for repository development

---

## 📖 1. Overview

### What This Is

Documentation for ChatGPT-5 (GPT-5), the primary daily-use model in the NIST AI RMF Cookbook's four-tier architecture. This directory contains the model card describing GPT-5's role, capabilities, and usage patterns within repository governance.

### Role in Repository

**Tier:** Tier 1 - Daily Volume Workhorse  
**Cost:** $20/month (ChatGPT Plus subscription)  
**Primary Use:** High-volume interactive development work requiring coding excellence

**Strategic Value:** Unlimited token throughput via web interface, best-in-class coding performance (74.9% SWE-bench), superior structured output generation. Handles the bulk of daily repository work.

### Key Capabilities

- **Projects feature** - Persistent file context across sessions
- **50MB zip uploads** - Entire repository as compressed archive
- **Unlimited usage** - Push millions of tokens through web interface
- **SOTA coding** - 74.9% SWE-bench, 88% Aider Polyglot benchmarks
- **Structured outputs** - Best-in-class JSON/YAML generation

---

## 📂 2. Files Included

```markdown
chat-gpt-5/
├── 📄 README.md           # This file - model overview
└── 📄 chat-gpt-5.md       # Model card (Markdown format)
```

### File Descriptions

Primary Artifact:

- 📄 **chat-gpt-5.md** - Complete model card documenting GPT-5's properties, intended use, limitations, evaluation results, and role in repository governance. Written in Markdown for human readability.

---

## 🚀 3. Quick Start

### Using This Model

**When to Use GPT-5:**

- Daily coding tasks (Python scripts, YAML schemas)
- Repository analysis (upload 50MB zip)
- Structured output generation (JSON, OSCAL)
- Code review and debugging
- Mathematical/logical reasoning
- Any work requiring sustained, high-volume interaction

**When NOT to Use:**

- Quality prose where Claude excels (policy templates)
- Deep research requiring 10+ sources (use Gemini)
- Privacy-sensitive work (use local models)

### Access

**Subscription:** ChatGPT Plus ($20/month)  
**Interface:** Web (primary), API available  
**Projects:** Repository files maintained in persistent project context

---

## 🎯 4. Framework Mapping

### NIST AI RMF Alignment

| Function | Coverage | How GPT-5 Supports |
|----------|----------|-------------------|
| Govern | ⚠️ Partial | Generates governance artifacts (schemas, scripts) but prose quality lower than Claude |
| Map | ⚠️ Partial | Assists with risk identification through code analysis |
| Measure | ✅ Primary | Generates evaluation scripts, validation tooling, test frameworks |
| Manage | ✅ Primary | Creates automation for continuous monitoring and evidence collection |

### Repository Workflow Integration

- **Schema Generation:** Primary tool for creating/modifying YAML schemas
- **Validation Scripts:** Generates Python scripts for CI/CD pipeline
- **OSCAL Export:** Builds transformation logic for format conversion
- **Code Review:** Reviews pull requests for technical correctness

---

## 📚 5. Related Resources

### Within This Repository

Parent Directory:

- [📁 Models Directory](../README.md) - Overview of all documented models

Related Documentation:

- [📄 Model Selection Strategy](../../model-selection-strategy.md) - Four-tier architecture and GPT-5's role
- [📄 AI Acceptable Use Policy](../../ai-acceptable-use-policy.md) - Governance policy GPT-5 operates under

Other Models in Architecture:

- [🤖 Claude Sonnet 4.5](../claude-sonnet-pro-45/) - Tier 2 quality specialist
- [🤖 Gemini Pro 2.5](../gemini-pro-25/) - Tier 3 research specialist
- [🤖 Llama 3.1 8B](../llama-3.1-8b-doc-linter/) - Tier 0 local linter

### External Resources

Official Documentation:

- [OpenAI Platform Documentation](https://platform.openai.com/docs) - API reference and guides
- [ChatGPT Plus](https://openai.com/chatgpt/plus) - Subscription details

Performance Benchmarks:

- [SWE-bench](https://www.swebench.com/) - Software engineering benchmark results
- [Aider Polyglot](https://aider.chat/docs/leaderboards/) - Multi-language coding leaderboard

---

## 📋 6. Documentation Metadata

### Authorship & Collaboration

Primary Author: VintageDon ([GitHub Profile](https://github.com/vintagedon))  
ORCID: [0009-0008-7695-4093](https://orcid.org/0009-0008-7695-4093)  
Methodology: See [Documentation Methodology](../../../docs/methodology.md)

### Version History

| Version | Date | Changes | Author |
|---------|------|---------|--------|
| 1.0 | 2025-10-10 | Initial model documentation | VintageDon |

### Model Information

- Model: GPT-5 (ChatGPT-5)
- Tier: Tier 1 (Daily Workhorse)
- Status: Active
- Cost: $20/month
- Last Reviewed: 2025-10-10

### Repository Information

Repository: [nist-ai-rmf-cookbook](https://github.com/vintagedon/nist-ai-rmf-cookbook)  
License: MIT  
Framework Version: NIST AI RMF 1.0 (January 2023)

---

Document Version: 1.0 | Last Updated: 2025-10-10 | Status: Published | Model: GPT-5
