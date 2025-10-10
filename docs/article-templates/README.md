# 📐 Article Templates - Documentation Structure Standards

Ensuring Consistency Across Repository Documentation

---

## 📖 Overview

This directory contains structural templates for creating consistent, high-quality documentation across the NIST AI RMF Cookbook repository. These templates establish:

- Standard sections and organization
- Consistent formatting and style
- Framework alignment documentation patterns
- Navigation and cross-reference approaches

Purpose:
Enable anyone (maintainers, contributors, AI tools) to create documentation that follows established patterns and maintains the repository's quality standards.

---

## 📂 Available Templates

### [top-level-directory-readmes.md](top-level-directory-readmes.md)

For Directory Overview Documentation

Use this template when:

- Creating or updating READMEs in top-level directories (`policies/`, `schemas/`, `examples/`, `docs/`)
- Providing navigation and orientation for a collection of related artifacts
- Explaining a directory's purpose within the broader repository structure

Key characteristics:

- Comprehensive coverage - Overview of entire directory contents
- Navigation focus - Helps users find what they need
- Multiple audience paths - Tailored guidance for different roles
- Framework alignment - High-level mapping to NIST AI RMF functions

Example implementations:

- [policies/README.md](../../policies/README.md) - Policy templates overview
- [schemas/README.md](../../schemas/README.md) - Schema usage guide
- [_repository-governance/README.md](../../_repository-governance/README.md) - Living example explanation

Template sections:

1. Introduction - Purpose and scope
2. Dependencies & Relationships (optional)
3. Directory Structure - Visual tree and file inventory
4. Usage & Implementation - How to use directory contents
5. Security & Compliance (conditional)
6. Maintenance & Support - Getting help, common issues
7. References & Related Resources - Internal and external links
8. Documentation Metadata - Version, ownership, review schedule

---

### [item-level-directory-readme.md](item-level-directory-readme.md)

For Specific Artifact Documentation

Use this template when:

- Documenting a specific policy, schema, example, or other individual artifact
- Creating subdirectory READMEs (e.g., `policies/ai-acceptable-use/README.md`)
- Providing implementation guidance for a single deliverable

Key characteristics:

- Focused scope - Deep dive on ONE artifact
- Implementation oriented - Step-by-step usage guidance
- Customization emphasis - How to adapt for your context
- Specific framework mapping - Precise RMF function alignment

Example implementations:

- [policies/ai-acceptable-use/README.md](../../policies/ai-acceptable-use/README.md) - Policy template usage guide

Template sections:

1. Overview - What this specific artifact is
2. Files Included - Complete file inventory for this artifact
3. Quick Start - Step-by-step implementation
4. Customization Guide - Required and optional adaptations
5. Framework Mapping - Specific RMF alignment
6. Integration & Usage (conditional)
7. Related Resources - Navigation to complementary artifacts
8. Documentation Metadata - Version, ownership, status

---

## 🎯 How to Choose the Right Template

### Decision Tree

```markdown
START: I need to create a README
  │
  ├─→ Is this for a TOP-LEVEL directory?
  │   (policies/, schemas/, examples/, docs/, _repository-governance/)
  │   │
  │   └─→ YES → Use top-level-directory-readmes.md
  │       • Provides navigation across multiple items
  │       • Explains directory purpose
  │       • Guides multiple audience types
  │
  └─→ Is this for a SPECIFIC ARTIFACT?
      (policies/ai-acceptable-use/, examples/rag-assistant/)
      │
      └─→ YES → Use item-level-directory-readme.md
          • Deep dive on single deliverable
          • Implementation and customization focused
          • Specific framework alignment
```

### Key Differences

| Aspect | Top-Level Template | Item-Level Template |
|--------|-------------------|---------------------|
| Focus | Navigation and overview | Implementation and customization |
| Scope | Entire directory collection | Single artifact |
| Audience | Browsers, decision-makers | Implementers, customizers |
| Framework Alignment | High-level function coverage | Specific control mappings |
| Length | Medium (comprehensive) | Shorter (focused) |
| Depth | Broad (what's available) | Deep (how to use it) |

---

## 🛠️ Using the Templates

### Step-by-Step Process

Step 1: Determine Template Type

- Use decision tree above
- Consider audience and purpose

Step 2: Copy Template Structure

- Copy relevant template file
- Rename to `README.md` in target directory

Step 3: Replace Placeholders

- All `[PLACEHOLDERS]` in brackets
- Follow guidance in 📝 notes within template

Step 4: Remove Optional Sections

- Read 📝 guidance notes carefully
- Remove sections marked as optional if not applicable
- Keep mandatory sections

Step 5: Delete Template Usage Guide

- Remove the "TEMPLATE USAGE GUIDE" section at top
- This is for template users, not end readers

Step 6: Review and Refine

- Check for remaining placeholders
- Verify all links work
- Ensure framework mappings are accurate
- Validate against similar READMEs

---

## 📚 Template Maintenance

### When Templates Need Updates

Update triggers:

- Repository structure changes
- Framework updates (NIST AI RMF revisions)
- Community feedback on clarity
- New documentation patterns emerge
- Inconsistencies discovered across READMEs

### Update Process

1. Propose change - Open issue with `templates` label
2. Document rationale - Explain why change improves consistency
3. Impact analysis - Which existing READMEs affected?
4. Update template - Modify source template file
5. Propagate changes - Update existing READMEs to match
6. Version increment - Update template version in metadata

### Version Control

Templates follow semantic versioning:

- Major (x.0.0) - Structural changes, section additions/removals
- Minor (0.x.0) - New optional sections, enhanced guidance
- Patch (0.0.x) - Clarifications, typo fixes, example improvements

Current version: 1.0.0 (both templates)

---

## 🎓 Best Practices

### General Guidelines

Do:

- ✅ Follow template structure closely
- ✅ Include all mandatory sections
- ✅ Provide concrete examples
- ✅ Link to related resources
- ✅ Update metadata fields accurately
- ✅ Remove guidance notes before committing

Don't:

- ❌ Skip mandatory sections
- ❌ Leave placeholders unfilled
- ❌ Deviate from established patterns without reason
- ❌ Copy-paste without customizing
- ❌ Forget to update "Last Updated" date

### Writing Style

Clarity:

- Write for the target audience (technical or non-technical)
- Use consistent terminology across READMEs
- Define acronyms on first use

Conciseness:

- Be thorough but not verbose
- Use tables for comparisons
- Use lists for discrete items
- Keep paragraphs focused

Actionability:

- Provide clear next steps
- Include command examples where relevant
- Link to specific files, not just directories

---

## 🔗 Template Usage in This Repository

### Current Implementations

Top-Level Template Used In:

- [policies/README.md](../../policies/README.md)
- [schemas/README.md](../../schemas/README.md)
- [docs/README.md](../README.md)
- [examples/README.md](../../examples/README.md)
- [_repository-governance/README.md](../../_repository-governance/README.md)

Item-Level Template Used In:

- [policies/ai-acceptable-use/README.md](../../policies/ai-acceptable-use/README.md)

Consistency Check:
All these READMEs follow their respective template structure, demonstrating:

- Uniform navigation patterns
- Consistent framework alignment documentation
- Predictable section organization
- Standardized metadata formats

---

## 🤝 Contributing Template Improvements

### What We Need

High-value contributions:

- Clarifications based on confusion when using templates
- Additional guidance for complex sections
- Examples of excellent template usage
- Simplifications without losing necessary detail

### Contribution Process

1. Identify improvement - What would make templates clearer or more useful?
2. Document use case - When would this improvement help?
3. Propose change - Open issue with specific suggestion
4. Discuss impact - How many READMEs would need updates?
5. Implement if accepted - Update template and propagate changes

See [CONTRIBUTING.md](../../CONTRIBUTING.md) (when created) for detailed guidance.

---

## 📖 Related Resources

### Within This Repository

- [📚 Documentation Overview](../README.md) - Parent directory
- [📋 Policies](../../policies/README.md) - Examples of top-level template usage
- [🔧 Schemas](../../schemas/README.md) - Another top-level implementation
- [🏛️ Repository Governance](../../_repository-governance/README.md) - Living example documentation

### External Resources

- [GitHub Documentation Guide](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-readmes) - README best practices
- [Markdown Guide](https://www.markdownguide.org/) - Formatting reference
- [NIST AI RMF](https://www.nist.gov/itl/ai-risk-management-framework) - Framework these templates help document

---

## 🔄 Maintenance Schedule

Review Cycle: Quarterly

Next Review: 2025-12-31

Review Checklist:

- [ ] Are templates still aligned with repository structure?
- [ ] Do examples reflect current template usage?
- [ ] Have any new patterns emerged that should be templated?
- [ ] Is guidance clear and actionable?
- [ ] Are version numbers accurate?

---

Document Version: 1.0  
Last Updated: 2025-10-10  
Status: Published  
Template Versions: top-level-directory-readmes.md v1.0.0, item-level-directory-readme.md v1.0.0

---

*Good templates enable consistent quality. These templates ensure every README contributes to repository usability.*
