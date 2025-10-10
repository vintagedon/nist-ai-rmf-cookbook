<!--
---
title: "[Directory Name] - [Brief Directory Purpose]"
description: "Directory overview and navigation for [specific functionality/component]"
owner: "VintageDon - https://github.com/vintagedon"
orcid: "https://orcid.org/0009-0008-7695-4093"
ai_contributor: "Claude (Anthropic)"
lastReviewed: "YYYY-MM-DD"
version: "1.0"
status: "Published"
tags:
- type: directory-overview
- domain: [nist-ai-rmf/policies/schemas/examples/docs/tools]
- framework: nist-ai-rmf
- audience: [developers/grc-teams/compliance-officers/ml-engineers]
related_documents:
- "[Project Root](../README.md)"
- "[Related Directory](../related-directory/README.md)"
type: directory-overview
---
-->

---

# 📋 TEMPLATE USAGE GUIDE

## For AI Agents

This template serves as both a structural guide and style reference for generating top-level directory READMEs in the NIST AI RMF Cookbook repository.

### How to Use This Template

1. Replace all `[PLACEHOLDERS]` with directory-specific content
2. Read all visible guidance notes (📝 blocks) - they instruct when to remove/adapt sections
3. Remove optional sections based on guidance (e.g., Dependencies, Advanced Operations)
4. Keep mandatory sections (all 8 numbered sections are conceptually important, but some subsections are optional)
5. Delete this entire "TEMPLATE USAGE GUIDE" section from the final output

### Mandatory vs. Optional Sections

| Section | Status | Notes |
|---------|--------|-------|
| 1. Introduction | ✅ MANDATORY | Always include all subsections |
| 2. Dependencies & Relationships | ⚠️ OPTIONAL | Remove entire section if directory is self-contained |
| 3. Directory Structure | ✅ MANDATORY | Always include - shows actual file tree |
| 4. Usage & Implementation | ✅ MANDATORY | May remove "Advanced Operations" or "Time Estimates" subsections |
| 5. Security & Compliance | ⚠️ CONDITIONAL | KEEP for policies/, schemas/, examples/. REMOVE for tools/, .github/ |
| 6. Maintenance & Support | ✅ MANDATORY | Core section - keep all subsections |
| 7. References & Related Resources | ✅ MANDATORY | Always include - critical for navigation |
| 8. Documentation Metadata | ✅ MANDATORY | Always include - ensures traceability |

### Guidance Note Types

- 📝 Section Guidance: Instructions about entire section (remove/keep)
- 📝 Subsection Guidance: Instructions about specific subsection
- 📝 Style Guide: How to format or present information

### Directory Type Adaptations

For `policies/` directory:

- Keep Security & Compliance section
- Include Framework Alignment with all 4 functions
- Focus on GRC audience in Target Audience
- Emphasize regulatory crosswalks

For `schemas/` directory:

- Keep Security & Compliance section (schema validation is a control)
- Framework Alignment: Heavy on Map and Measure
- Target Audience: ML engineers, data scientists
- Include technical validation examples

For `examples/` directory:

- Keep Security & Compliance section
- Framework Alignment: All 4 functions (examples are comprehensive)
- Target Audience: Implementers, GRC teams
- Include worked example walkthroughs

For `tools/` or `.github/` directories:

- Remove Security & Compliance section (unless tools handle sensitive data)
- Framework Alignment: Focus on Manage function (automation)
- Target Audience: Developers, DevOps, maintainers
- Include command examples and troubleshooting

---

# 📁 [Directory Name]

[Brief description of this directory's purpose and what it contains within the context of the NIST AI RMF Cookbook]

---

## 📖 1. Introduction

This directory provides [clear description of what this directory accomplishes]. It serves as [primary function description] within the NIST AI RMF Cookbook, addressing [specific need or functionality] for [target audience] working with [relevant component or feature].

### Purpose

[2-3 sentences explaining the directory's purpose, the problem it addresses, and the value it provides within the broader AI governance context.]

### Scope

What's Covered:

- [Specific area covered in this directory]
- [Another specific area covered]  
- [Additional coverage area]

What's Not Covered:

- [Explicit exclusion to set boundaries]
- [Reference to where excluded items are covered]

### Target Audience

Primary Users: [Main user group who interacts with this directory]  
Secondary Users: [Additional user groups who benefit]  
Background Assumed: [Required knowledge or experience level for this component]

### Framework Alignment

> 📝 Style Guide: Keep this subsection light - detailed crosswalks live in docs/crosswalks.md. Focus on high-level coverage only.

NIST AI RMF Function Coverage:

| Function | Coverage Level | How This Directory Supports |
|----------|----------------|----------------------------|
| Govern | [✅ Primary / ⚠️ Partial / ❌ None] | [Brief explanation] |
| Map | [✅ Primary / ⚠️ Partial / ❌ None] | [Brief explanation] |
| Measure | [✅ Primary / ⚠️ Partial / ❌ None] | [Brief explanation] |
| Manage | [✅ Primary / ⚠️ Partial / ❌ None] | [Brief explanation] |

Regulatory Alignment: [Brief statement about ISO 42001, SP 800-53, EU AI Act relevance, or "See docs/crosswalks.md for detailed mappings"]

### Overview

[2-3 sentences providing context about this directory's structure and how it connects to other parts of the cookbook.]

---

## 🔗 2. Dependencies & Relationships

> 📝 Section Guidance: This section is OPTIONAL for simple directories with few dependencies. Remove entirely if not applicable.

This section maps how this directory integrates with other cookbook components and external resources.

### Related Components

- [Component Name](../component-path/) - [How they work together] - [Link to documentation]
- [Another Component](../component-path/) - [Relationship description] - [Documentation link]

### External Dependencies

> 📝 Subsection Guidance: Only include if this directory relies on external tools, standards, or frameworks. Remove if directory is self-contained.

- [External Tool/Library](link-to-official-docs) - [Brief description and version requirements]
- [Another Dependency](link) - [Description and any specific configuration notes]

---

## 📂 3. Directory Structure

``` markdown
[directory-name]/
├── 📄 README.md               # This file - directory overview and navigation
├── 📄 [key-file].[ext]        # [Description of key file purpose]
├── 📄 [another-file].[ext]    # [Description of another important file]
├── 📁 [subdirectory]/         # [Description of subdirectory purpose]
│   ├── 📄 README.md           # [Subdirectory documentation]
│   ├── 📄 [sub-file].[ext]    # [Description of file in subdirectory]
│   └── 📁 [another-sub]/      # [Nested subdirectory if applicable]
├── 📁 [another-subdir]/       # [Description of another subdirectory]
│   ├── 📄 README.md           # [Subdirectory documentation]
│   └── 📄 [files].[ext]       # [Description of files in this subdirectory]
└── 📄 [config-file].[ext]     # [Configuration or supporting file]
```

### File Inventory

Core Files:

- 📄 [key-file].[ext] - [Primary purpose and functionality]
- 📄 [another-file].[ext] - [Secondary purpose and how it relates]
- 📄 [config-file].[ext] - [Configuration purpose and usage]

### Subdirectories

- [📁 subdirectory](subdirectory/) - [Purpose and contents description]
- [📁 another-subdir](another-subdir/) - [Purpose and contents description]

### Status & Availability

> 📝 Style Guide: Quick reference table for what's available vs. planned. Use emoji indicators consistently: ✅ Released, 🔜 Planned, 🚧 In Progress

| Item | Status | Description |
|------|--------|-------------|
| [Item 1] | ✅ Released | [Brief description] |
| [Item 2] | 🔜 Planned | [Brief description] |
| [Item 3] | 🚧 In Progress | [Brief description] |

---

## 🚀 4. Usage & Implementation

Complete guide to using and working with files in this directory.

### Getting Started

[Instructions for how to use the components in this directory, including any setup or initialization steps]

```bash
# Example commands for working with this directory
[command examples]
```

### Common Operations

Basic Operations:

```bash
# Common task 1
[command example]

# Common task 2
[command example]
```

Advanced Operations:

> 📝 Subsection Guidance: Only include if advanced usage patterns exist. Remove if directory usage is straightforward.

```bash
# Advanced usage pattern
[command example]
```

### Integration Points

[Explain how files in this directory interact with other parts of the cookbook]

- Dependencies: [What this directory depends on]
- Used By: [What other parts of the cookbook use this directory]
- Interfaces: [Any APIs or interfaces this directory provides]

### Time Estimates

> 📝 Subsection Guidance: Helpful for planning. Remove if timing is trivial or highly variable.

| Task | Estimated Time |
|------|----------------|
| [Common task 1] | [Time estimate] |
| [Common task 2] | [Time estimate] |
| [Complete workflow] | [Time estimate] |

---

## 🔒 5. Security & Compliance

> 📝 Section Guidance: This section is OPTIONAL for non-compliance-focused directories (e.g., tools/, .github/). KEEP this section for: policies/, schemas/, examples/. Remove entirely if directory has no security/compliance implications.

### Access Requirements

[Who needs access to files in this directory and why]

### Security Considerations

[Any security implications, sensitive data, or access restrictions specific to this directory]

### File Permissions

[Any specific file permission requirements or security considerations]

### Compliance Notes

[Relevant standards, regulations, or internal policies that apply to this directory]

Framework Mapping:

- ISO/IEC 42001: [Relevant clauses this directory addresses]
- NIST SP 800-53: [Relevant controls this directory implements]
- EU AI Act: [Relevant articles this directory supports]

---

## 🛠️ 6. Maintenance & Support

> 📝 Section Guidance: Simplified from original template. Focus on common issues and basic guidance. Keep practical and action-oriented.

### File Management

Adding New Files:
[Guidelines for adding new files to this directory]

Modifying Existing Files:
[Process for making changes to files in this directory]

Dependencies:
[How to handle dependency updates or changes]

### Common Issues

Issue 1: [Description]

- Symptoms: [What users observe]
- Resolution: [Step-by-step solution]

Issue 2: [Description]

- Symptoms: [What users observe]
- Resolution: [Step-by-step solution]

### Getting Help

Questions about this directory:

- Open an issue: [GitHub Issues](https://github.com/vintagedon/nist-ai-rmf-cookbook/issues)
- Start a discussion: [GitHub Discussions](https://github.com/vintagedon/nist-ai-rmf-cookbook/discussions)

Need something not available?

- Check the [Project Roadmap](../README.md#roadmap) for planned content
- Request via GitHub Issues with appropriate label
- Consider contributing (see [CONTRIBUTING.md](../CONTRIBUTING.md) when available)

---

## 📚 7. References & Related Resources

### Internal References

- [📁 Parent Directory](../README.md) - [How this relates to the parent context]
- [📁 Related Directory](../related-dir/) - [Description of relationship]
- [🏠 Project Root](../README.md) - Return to main cookbook overview

### External Resources

Official Standards & Frameworks:

- [NIST AI RMF](https://www.nist.gov/itl/ai-risk-management-framework) - The foundational framework
- [ISO/IEC 42001:2023](https://www.iso.org/standard/81230.html) - AI management system standard
- [NIST SP 800-53 Rev. 5](https://csrc.nist.gov/publications/detail/sp/800-53/rev-5/final) - Security and privacy controls

Implementation Guides:

- [NIST AI RMF Playbook](https://www.nist.gov/itl/ai-risk-management-framework/nist-ai-rmf-playbook) - Official implementation guidance
- [Framework Documentation](external-link) - [Relevant external guides]

Tools & Libraries:

- [Tool/Library](external-link) - [Purpose and relevance]
- [Another Resource](external-link) - [How it relates to this directory]

### Cross-References

> 📝 Style Guide: Links to other cookbook sections that provide complementary information. Focus on direct relationships.

- [📖 Framework Crosswalks](../docs/crosswalks.md) - Detailed regulatory mappings
- [📖 Worked Examples](../examples/) - See these concepts in action
- [📖 Documentation Schemas](../schemas/) - Structured formats referenced here

---

## 📋 8. Documentation Metadata

### Authorship & Collaboration

Primary Author: VintageDon ([GitHub Profile](https://github.com/vintagedon))  
ORCID: [0009-0008-7695-4093](https://orcid.org/0009-0008-7695-4093)  
Methodology: See [Documentation Methodology](../docs/methodology.md) for details on development approach and AI collaboration

> 📝 Style Guide: AI contribution is disclosed in front matter (`ai_contributor` field). Human author takes responsibility for accuracy and final content. Link to methodology doc provides context without repeating details.

### Version History

> 📝 Style Guide: Use git for detailed history. This table is for major milestones only. Keep to 3-5 entries maximum.

| Version | Date | Changes | Author |
|---------|------|---------|--------|
| 1.0 | YYYY-MM-DD | Initial directory documentation | VintageDon |

### Technical Notes

- Directory Standards: [Standards and conventions followed for this directory]
- Integration Requirements: [Any special requirements for cookbook integration]
- Maintenance Notes: [Technical considerations for future updates]

### Repository Information

Repository: [nist-ai-rmf-cookbook](https://github.com/vintagedon/nist-ai-rmf-cookbook)  
License: MIT  
Framework Version: NIST AI RMF 1.0 (January 2023)

---

Document Version: 1.0 | Last Updated: YYYY-MM-DD | Status: Published
