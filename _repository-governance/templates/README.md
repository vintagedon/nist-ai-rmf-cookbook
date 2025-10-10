<!--
---
title: "Governance Templates - Repository Process Documentation"
description: "Reusable templates for repository governance processes and decision documentation"
owner: "VintageDon - https://github.com/vintagedon"
orcid: "https://orcid.org/0009-0008-7695-4093"
ai_contributor: "Claude (Anthropic)"
lastReviewed: "2025-10-10"
version: "1.0"
status: "Published"
tags:
- type: templates
- domain: repository-governance
- framework: nist-ai-rmf
- audience: maintainers
related_documents:
- "[Repository Governance](../README.md)"
- "[Model Selection Strategy](../model-selection-strategy.md)"
- "[AI Acceptable Use Policy](../ai-acceptable-use-policy.md)"
type: templates
---
-->

# 📋 Governance Templates

Reusable templates for repository governance processes and decision documentation

---

## 📖 1. Overview

### What This Is

The `templates/` directory contains structured templates for documenting governance processes, decisions, and transitions within the NIST AI RMF Cookbook repository. These templates enforce consistency and completeness when recording critical governance activities, ensuring that decisions are traceable, rationale is preserved, and lessons are captured for continuous improvement.

### Problem Statement

Challenge: Ad-hoc documentation of governance decisions leads to incomplete records, lost context, and inability to learn from past choices.

Solution: Standardized templates that prompt for all relevant information and create auditable, comparable records across time.

Outcome: Complete historical record of governance decisions with structured data that enables analysis, pattern recognition, and evidence-based policy evolution.

### Target Audience

Primary Users: Repository maintainer (VintageDon), future maintainers  
Prerequisites: Understanding of repository governance structure and AI model lifecycle  
Time to Implement: 15-30 minutes per template use (depending on complexity)

### Key Features

- Structured documentation - Templates prompt for all critical information
- Decision traceability - Links decisions to evidence and outcomes
- Lessons capture - Explicit sections for what worked and what didn't
- Consistency enforcement - Same questions asked every time
- Comparative analysis - Structured format enables cross-decision comparison

---

## 📂 2. Files Included

```
templates/
├── 📄 README.md                           # This file - templates overview
└── 📄 model-exit-interview-template.md    # Template for model deprecation documentation
```

### File Descriptions

Primary Template:

- 📄 model-exit-interview-template.md - Structured interview format for documenting why a model was deprecated, what replaced it, lessons learned, and performance/cost comparisons. Used when removing a model from the four-tier architecture or replacing it with an alternative.

---

## 🚀 3. Quick Start

### Prerequisites

Before using these templates, ensure you have:

- [ ] Understanding of the decision/process being documented
- [ ] Access to relevant metrics, logs, and evidence
- [ ] Time to reflect on lessons learned (not rushed documentation)
- [ ] Authority to make the documented decision (if decision template)

### Step-by-Step Implementation

For Model Exit Interview:

Step 1: Copy Template

```bash
# Copy template to governance directory
cp _repository-governance/templates/model-exit-interview-template.md \
   _repository-governance/model-exit-interviews/[model-name]-[date].md
```

Step 2: Fill Required Sections

- Complete all `[PLACEHOLDER]` fields
- Gather performance metrics from actual usage
- Document cost analysis with real numbers
- Collect team feedback if applicable

Step 3: Review and Validate

- Ensure all sections are complete
- Verify metrics are accurate and sourced
- Check that lessons learned are actionable
- Confirm links to evidence artifacts work

Step 4: Commit to Repository

```bash
git add _repository-governance/model-exit-interviews/
git commit -m "docs: model exit interview for [model-name]"
git push
```

### Expected Time

| Phase | Estimated Time |
|-------|----------------|
| Data gathering | 30-60 minutes |
| Template completion | 15-30 minutes |
| Review/validation | 10-15 minutes |
| Total | 55-105 minutes |

### Success Criteria

You've successfully used a template when:

- ✅ All required sections are complete (no `[PLACEHOLDERS]` remain)
- ✅ Claims are backed by evidence (metrics, logs, examples)
- ✅ Lessons learned are specific and actionable
- ✅ Future readers can understand the decision without additional context

---

## 🔧 4. Customization Guide

### Template Adaptation

These templates are reference implementations for this repository but can be adapted for:

Organizational Use:

- Add your organization's branding and document control fields
- Modify sections to match your governance processes
- Adjust detail level based on your audit requirements
- Include additional stakeholder sign-offs if needed

Additional Templates:

- Use model-exit-interview as pattern for other lifecycle events
- Create similar templates for policy reviews, tool evaluations, etc.
- Maintain consistent structure across all governance templates

### Decision Points

Template Usage Threshold:

Should you use the template or document informally?

- Use template when:
  - Decision affects repository governance structure
  - Multiple stakeholders need to understand rationale
  - Future audits may review this decision
  - Lessons learned could inform future choices
  
- Informal documentation acceptable when:
  - Minor configuration change with no governance impact
  - Decision easily reversible with no cost
  - Context obvious to all stakeholders

### Common Pitfalls

Pitfall 1: Incomplete data gathering before starting

- Symptom: Multiple `[PLACEHOLDER]` fields or "TODO: gather metrics"
- Solution: Treat data gathering as separate phase; don't start template until you have the information

Pitfall 2: Generic lessons learned

- Symptom: "Model wasn't good enough" or "Didn't meet needs"
- Solution: Be specific - what metrics failed? What use cases didn't work? What would you do differently?

Pitfall 3: Rushed documentation after decision already made

- Symptom: Template becomes justification exercise rather than decision record
- Solution: Fill template as part of decision process, not after-the-fact

---

## 🎯 5. Framework Mapping

### NIST AI RMF Alignment

This templates directory directly supports the following AI RMF functions:

| Function | Coverage | Specific Contributions |
|----------|----------|----------------------|
| Govern | ✅ Primary | Establishes structured governance documentation processes that create traceable, auditable records of AI system decisions |
| Map | ⚠️ Partial | Exit interviews capture context about risks that influenced model changes |
| Measure | ✅ Primary | Templates require quantitative metrics and evidence, enforcing measurement discipline |
| Manage | ✅ Primary | Documents how risks were managed through model changes and provides lessons for future risk treatment |

### Regulatory Compliance Support

These templates help address:

| Standard/Regulation | Specific Requirements | How Templates Help |
|---------------------|----------------------|------------------------|
| ISO/IEC 42001 | Clause 7.5 (Documented information), 10.2 (Nonconformity and corrective action) | Structured templates create documented information required by AIMS, capture nonconformities and corrective actions |
| NIST SP 800-53 | PM-9 (Risk Management Strategy), SA-15 (Development Process, Standards, and Tools) | Templates document risk management decisions and tool selection rationale |
| ISO 31000 | Risk management process documentation | Exit interviews capture risk treatment outcomes and lessons learned |

---

## 📗 6. Template Usage Patterns

### Pattern 1: Model Deprecation (Proactive)

When: Planned replacement of a model due to better alternatives or strategic changes

Process:

1. Identify replacement model candidate
2. Run comparative evaluation (performance, cost, features)
3. Fill exit interview template with comparison data
4. Make go/no-go decision based on template analysis
5. If go: Update model-selection-strategy.md
6. Archive completed template in `model-exit-interviews/`

Example: Replacing Gemini Advanced with Claude Max for documentation work after discovering Max's superior sustained session capability.

### Pattern 2: Model Deprecation (Reactive)

When: Forced removal due to model failure, vendor discontinuation, or policy violation

Process:

1. Document immediate issue that triggered deprecation
2. Gather incident data (logs, failure reports, costs)
3. Fill exit interview template focusing on "what went wrong"
4. Identify emergency replacement if needed
5. Update policies to prevent recurrence
6. Archive template with "lessons learned" emphasized

Example: Vendor discontinues API access with short notice; template documents impact and emergency migration.

### Pattern 3: Periodic Review

When: Quarterly or annual review of all active models even if no changes planned

Process:

1. For each model in four-tier architecture:
2. Gather current metrics (usage, cost, performance)
3. Compare against expectations from last review
4. Note any drift or emerging issues
5. If significant issues: Start exit interview process
6. If satisfactory: Update model card with current metrics
7. Document review completion

Example: Quarterly review reveals GPT Plus usage declining while Claude Max usage increased - prompts investigation into whether Plus is still necessary.

---

## 📚 7. Related Resources

### Within This Repository

Parent Directory:

- [📁 Repository Governance](../README.md) - Overview of governance structure and all governance artifacts

Related Artifacts:

- [📄 Model Selection Strategy](../model-selection-strategy.md) - Four-tier architecture these templates document changes to
- [📄 AI Acceptable Use Policy](../ai-acceptable-use-policy.md) - Policy that governs model usage
- [📁 Model Cards](../models/) - Individual model documentation updated when templates use

### External Resources

Governance Best Practices:

- [ISO/IEC 42001:2023](https://www.iso.org/standard/81230.html) - AI management system requirements for documented information
- [NIST AI RMF](https://www.nist.gov/itl/ai-risk-management-framework) - Framework these templates operationalize

Template Methodology:

- [Decision Records (ADR)](https://adr.github.io/) - Architecture decision record format that influenced these templates
- [Postmortem Culture](https://sre.google/sre-book/postmortem-culture/) - Google SRE approach to learning from incidents

### Learning Resources

For template creators:

- Study model-exit-interview-template.md structure for pattern
- Focus on "what information would future-you need?"
- Balance completeness with usability

For template users:

- Read full template before starting (understand flow)
- Gather data first, fill template second
- Treat "lessons learned" as most valuable section

### Community & Support

Questions about templates:

- Open an issue: [GitHub Issues](https://github.com/vintagedon/nist-ai-rmf-cookbook/issues) with label `governance`
- Start a discussion: [GitHub Discussions](https://github.com/vintagedon/nist-ai-rmf-cookbook/discussions)

Suggest new templates:

- Tag issue with: `enhancement`, `governance`, `template`
- Describe: What process needs documentation and why current templates insufficient

---

## 📋 8. Documentation Metadata

### Authorship & Collaboration

Primary Author: VintageDon ([GitHub Profile](https://github.com/vintagedon))  
ORCID: [0009-0008-7695-4093](https://orcid.org/0009-0008-7695-4093)  
Methodology: See [Documentation Methodology](../../docs/methodology.md) for details on development approach and AI collaboration

### Version History

| Version | Date | Changes | Author |
|---------|------|---------|--------|
| 1.0 | 2025-10-10 | Initial templates directory documentation | VintageDon |

### Artifact Information

- Artifact Type: directory-overview
- Complexity Level: Beginner
- Maintenance Status: Active
- Last Reviewed: 2025-10-10

### Repository Information

Repository: [nist-ai-rmf-cookbook](https://github.com/vintagedon/nist-ai-rmf-cookbook)  
License: MIT  
Framework Version: NIST AI RMF 1.0 (January 2023)

---

Document Version: 1.0 | Last Updated: 2025-10-10 | Status: Published | Directory: templates
