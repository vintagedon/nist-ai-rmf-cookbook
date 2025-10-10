<!--
---
title: "[Item Name] - [Brief Item Purpose]"
description: "Implementation guide for [specific artifact/policy/example]"
owner: "VintageDon - https://github.com/vintagedon"
orcid: "https://orcid.org/0009-0008-7695-4093"
ai_contributor: "Claude (Anthropic)"
lastReviewed: "YYYY-MM-DD"
version: "1.0"
status: "Published"
tags:
- type: item-guide
- domain: [policy/example/schema-specific]
- framework: nist-ai-rmf
- artifact-type: [policy-template/worked-example/reference-implementation]
related_documents:
- "[Parent Directory](../README.md)"
- "[Related Item](../related-item/README.md)"
type: item-guide
---
-->

---

# 📋 TEMPLATE USAGE GUIDE

## For AI Agents

This template is for item-level directory READMEs - subdirectories that contain a specific artifact (policy template, worked example, schema implementation). This is one level deeper than top-level directories.

### Item-Level vs. Top-Level

| Aspect | Top-Level (policies/) | Item-Level (policies/ai-acceptable-use/) |
|--------|----------------------|------------------------------------------|
| Focus | Overview of category | Deep dive on specific artifact |
| Audience | Browsers, decision-makers | Implementers, customizers |
| Content | Navigation, options | Customization, step-by-step |
| Length | Medium (comprehensive) | Shorter (focused) |

### How to Use This Template

1. Replace all `[PLACEHOLDERS]` with item-specific content
2. Focus on implementation - this is a "how to use THIS artifact" guide
3. Remove optional sections based on visible 📝 guidance notes
4. Keep it focused - resist adding general information that belongs in parent directory
5. Delete this entire "TEMPLATE USAGE GUIDE" section from the final output

### Mandatory vs. Optional Sections

| Section | Status | Notes |
|---------|--------|-------|
| 1. Overview | ✅ MANDATORY | Brief, focused on THIS artifact |
| 2. Files Included | ✅ MANDATORY | Always include - shows what's here |
| 3. Quick Start | ✅ MANDATORY | Step-by-step for using this artifact |
| 4. Customization Guide | ✅ MANDATORY | Critical for templates/examples |
| 5. Framework Mapping | ✅ MANDATORY | Specific to this artifact |
| 6. Integration & Usage | ⚠️ CONDITIONAL | Keep for examples/schemas, optional for simple policies |
| 7. Related Resources | ✅ MANDATORY | Navigation and learning aids |
| 8. Documentation Metadata | ✅ MANDATORY | Always include - ensures traceability |

### Artifact Type Adaptations

For policy templates:

- Emphasize customization checklist
- Include "Sections to Customize" breakdown
- Highlight placeholders that must be replaced
- Note approval/review requirements

For worked examples:

- Emphasize what problem this solves
- Include architecture/approach explanation
- Detail file dependencies and execution order
- Provide validation/testing guidance

For schema implementations:

- Emphasize required vs. optional fields
- Include validation examples
- Detail integration with other schemas
- Provide example populated files

---

# 📄 [Item Name]

[One-sentence description of what this specific artifact is and what problem it solves]

---

## 📖 1. Overview

### What This Is

[2-3 sentences clearly explaining what this artifact is, its purpose, and what it accomplishes within the NIST AI RMF Cookbook]

### Problem Statement

Challenge: [What problem does this artifact address?]

Solution: [How does this artifact solve it?]

Outcome: [What can users achieve by using this artifact?]

### Target Audience

Primary Users: [Specific roles who will use this artifact - be precise]  
Prerequisites: [Required knowledge, tools, or access to use this effectively]  
Time to Implement: [Realistic estimate for using/customizing this artifact]

### Key Features

- [Feature 1 - specific to THIS artifact]
- [Feature 2 - unique capability]
- [Feature 3 - value proposition]

---

## 📂 2. Files Included

> 📝 Style Guide: List ALL files in this directory with clear descriptions. Help users understand what each file does.

```markdown
[item-directory]/
├── 📄 README.md                    # This file - implementation guide
├── 📄 [artifact-file].[ext]        # [Primary artifact - what it contains]
├── 📄 [supporting-file].[ext]      # [Supporting resource - its purpose]
└── 📁 [subdirectory]/              # [Optional - if artifact has multiple parts]
    ├── 📄 [file].[ext]             # [Description]
    └── 📄 [file].[ext]             # [Description]
```

### File Descriptions

Primary Artifact:

- 📄 [artifact-file].[ext] - [Detailed description of the main file, its structure, and intended use]

Supporting Files:

- 📄 [supporting-file].[ext] - [What this file provides and when to use it]

### File Formats

> 📝 Subsection Guidance: Only include if multiple formats exist or format is non-obvious. Remove if all files are standard text formats.

[Explanation of file formats used and why, conversion guidance if applicable]

---

## 🚀 3. Quick Start

### Prerequisites

Before using this artifact, ensure you have:

- [ ] [Prerequisite 1 - required access, knowledge, or tools]
- [ ] [Prerequisite 2 - dependencies or setup requirements]
- [ ] [Prerequisite 3 - organizational readiness or approvals]

### Step-by-Step Implementation

Step 1: [Action]

```bash
# Commands if applicable
[example command]
```

[Brief explanation of what this step accomplishes]

Step 2: [Action]
[Detailed instructions for this step]

Step 3: [Action]
[Detailed instructions for this step]

Step 4: [Validation]
[How to verify successful implementation]

### Expected Time

| Phase | Estimated Time |
|-------|----------------|
| Initial setup | [Time] |
| Customization | [Time] |
| Review/approval | [Time] |
| Total | [Total time] |

### Success Criteria

You've successfully implemented this artifact when:

- ✅ [Specific outcome 1]
- ✅ [Specific outcome 2]
- ✅ [Specific outcome 3]

---

## 🔧 4. Customization Guide

> 📝 Section Guidance: This is CRITICAL for templates. For static examples (reference implementations with no customization), this section can be simplified to "Adaptation Notes" instead.

### Required Customizations

These placeholders must be replaced before use:

| Placeholder | Replace With | Example |
|-------------|--------------|---------|
| `[PLACEHOLDER1]` | [What to put here] | [Example value] |
| `[PLACEHOLDER2]` | [What to put here] | [Example value] |
| `[PLACEHOLDER3]` | [What to put here] | [Example value] |

### Optional Customizations

Consider customizing these based on your organization's context:

- [Section/Field Name]: [What it controls and when to modify]
- [Section/Field Name]: [What it controls and when to modify]

### Decision Points

> 📝 Style Guide: Call out critical decisions users need to make during customization. Use decision trees or tables if helpful.

Decision 1: [Topic]

Options:

- Option A: [Description] - Use when [condition]
- Option B: [Description] - Use when [condition]

Decision 2: [Topic]

Options:

- Option A: [Description] - Use when [condition]
- Option B: [Description] - Use when [condition]

### Customization Checklist

Use this checklist to track customization progress:

- [ ] [Customization task 1]
- [ ] [Customization task 2]
- [ ] [Customization task 3]
- [ ] [Validation task]
- [ ] [Review task]
- [ ] [Approval task]

### Common Pitfalls

Pitfall 1: [Common mistake users make]

- Symptom: [How to recognize it]
- Solution: [How to avoid/fix it]

Pitfall 2: [Common mistake users make]

- Symptom: [How to recognize it]
- Solution: [How to avoid/fix it]

---

## 🎯 5. Framework Mapping

### NIST AI RMF Alignment

> 📝 Style Guide: Be SPECIFIC about which functions this artifact addresses. Unlike top-level directories that show coverage across many items, item-level mappings are precise.

This artifact directly supports the following AI RMF functions:

| Function | Coverage | Specific Contributions |
|----------|----------|----------------------|
| Govern | [✅ Primary / ⚠️ Partial / ❌ None] | [Exactly what this artifact provides for Govern] |
| Map | [✅ Primary / ⚠️ Partial / ❌ None] | [Exactly what this artifact provides for Map] |
| Measure | [✅ Primary / ⚠️ Partial / ❌ None] | [Exactly what this artifact provides for Measure] |
| Manage | [✅ Primary / ⚠️ Partial / ❌ None] | [Exactly what this artifact provides for Manage] |

### Regulatory Compliance Support

This artifact helps address:

| Standard/Regulation | Specific Requirements | How This Artifact Helps |
|---------------------|----------------------|------------------------|
| ISO/IEC 42001 | [Specific clauses] | [What this artifact provides] |
| NIST SP 800-53 | [Specific controls] | [What this artifact provides] |
| EU AI Act | [Specific articles] | [What this artifact provides] |

> 📝 Style Guide: Only include regulations relevant to THIS artifact. Not every item addresses every framework.

### Control Mappings

> 📝 Subsection Guidance: Most relevant for policies and examples. Remove for pure documentation artifacts.

Controls Implemented:

- [Control ID] - [Control name] - [How this artifact implements it]
- [Control ID] - [Control name] - [How this artifact implements it]

Controls Referenced:

- [Control ID] - [Control name] - [How this artifact supports it]

---

## 🔗 6. Integration & Usage

> 📝 Section Guidance: This section is CONDITIONAL. KEEP for examples, schemas, and technical artifacts. SIMPLIFY or REMOVE for standalone policies that don't integrate with other systems.

### Integration with Other Artifacts

This artifact works with:

- [Related Artifact 1](../related-path/) - [How they work together]
- [Related Artifact 2](../related-path/) - [How they work together]

### Usage Patterns

Pattern 1: [Common Use Case]

```markdown
[Diagram, code example, or workflow showing this usage pattern]
```

Pattern 2: [Common Use Case]

```markdown
[Diagram, code example, or workflow showing this usage pattern]
```

### Dependencies

This artifact requires:

- [Dependency 1] - [Why it's needed]
- [Dependency 2] - [Why it's needed]

This artifact is used by:

- [Consumer 1] - [How they use it]
- [Consumer 2] - [How they use it]

### Testing & Validation

> 📝 Subsection Guidance: Highly relevant for schemas and examples. Less relevant for policy templates.

How to validate this artifact:

```bash
# Validation commands or procedures
[example validation]
```

Expected output:

```markdown
[What success looks like]
```

---

## 📚 7. Related Resources

### Within This Repository

Parent Directory:

- [📁 Parent Directory](../README.md) - Overview of [category] and navigation to other [items]

Related Artifacts:

- [📄 Related Item 1](../related-item/) - [How it relates to this artifact]
- [📄 Related Item 2](../related-item/) - [How it relates to this artifact]

Complementary Documentation:

- [📖 Framework Crosswalks](../../docs/crosswalks.md) - Detailed regulatory mappings
- [📖 Methodology](../../docs/methodology.md) - Documentation approach and AI collaboration

### External Resources

Official References:

- [Framework/Standard](URL) - [Relevance to this artifact]
- [Implementation Guide](URL) - [How it helps with this artifact]

Best Practices:

- [Resource Name](URL) - [What you'll learn]
- [Resource Name](URL) - [What you'll learn]

Tools & Validation:

- [Tool Name](URL) - [How to use it with this artifact]

### Learning Resources

> 📝 Subsection Guidance: Only include if specific learning materials exist for this artifact type. Remove if not applicable.

For beginners:

- [Resource] - [What it teaches]

For advanced users:

- [Resource] - [What it teaches]

### Community & Support

Questions about this artifact:

- Open an issue: [GitHub Issues](https://github.com/vintagedon/nist-ai-rmf-cookbook/issues) with label `[artifact-type]`
- Start a discussion: [GitHub Discussions](https://github.com/vintagedon/nist-ai-rmf-cookbook/discussions)

Report problems:

- Tag issue with: `bug`, `[artifact-name]`
- Include: What you expected vs. what happened

Suggest improvements:

- Tag issue with: `enhancement`, `[artifact-name]`
- Describe: The improvement and why it's valuable

---

## 📋 8. Documentation Metadata

### Authorship & Collaboration

Primary Author: VintageDon ([GitHub Profile](https://github.com/vintagedon))  
ORCID: [0009-0008-7695-4093](https://orcid.org/0009-0008-7695-4093)  
Methodology: See [Documentation Methodology](../../docs/methodology.md) for details on development approach and AI collaboration

> 📝 Style Guide: AI contribution is disclosed in front matter (`ai_contributor` field). Human author takes responsibility for accuracy and final content.

### Version History

> 📝 Style Guide: Use git for detailed history. This table is for major milestones only. Keep to 3-5 entries maximum.

| Version | Date | Changes | Author |
|---------|------|---------|--------|
| 1.0 | YYYY-MM-DD | Initial artifact release | VintageDon |

### Artifact Information

- Artifact Type: [policy-template/worked-example/schema-implementation/reference-guide]
- Complexity Level: [Beginner/Intermediate/Advanced]
- Maintenance Status: [Active/Stable/Deprecated]
- Last Tested: [Date - if applicable for examples/schemas]

### Repository Information

Repository: [nist-ai-rmf-cookbook](https://github.com/vintagedon/nist-ai-rmf-cookbook)  
License: MIT  
Framework Version: NIST AI RMF 1.0 (January 2023)

---

Document Version: 1.0 | Last Updated: YYYY-MM-DD | Status: Published | Artifact: [artifact-name]
