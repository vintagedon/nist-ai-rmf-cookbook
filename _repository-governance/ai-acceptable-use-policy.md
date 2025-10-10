<!--
---
title: "AI Acceptable Use Policy - NIST AI RMF Cookbook Repository"
description: "Governs AI tool usage in the development and maintenance of the NIST AI RMF Cookbook"
owner: "VintageDon - https://github.com/vintagedon"
orcid: "https://orcid.org/0009-0008-7695-4093"
ai_contributor: "Claude (Anthropic)"
lastReviewed: "YYYY-MM-DD"
version: "1.0"
status: "Published"
tags:
- type: policy
- domain: ai-governance
- framework: nist-ai-rmf
- audience: contributors-maintainers
related_documents:
- "[Documentation Methodology](methodology.md)"
- "[Local AI Infrastructure](local-ai-infrastructure.md)"
- "[Project Root](../README.md)"
type: policy
---
-->

# 📋 AI Acceptable Use Policy

NIST AI RMF Cookbook Repository

---

## Document Control

| Field | Value |
|-------|-------|
| Document ID | NIST-AI-RMF-COOKBOOK-POL-001 |
| Classification | Public |
| Distribution Scope | All Contributors |
| Document Owner | VintageDon |
| Approved By | Repository Maintainer |
| Effective Date | YYYY-MM-DD |
| Next Review Date | YYYY-MM-DD + 90 days |
| Review Cycle | Quarterly |
| Retention Period | Permanent (public repository) |
| Version | 1.0 |

---

## Purpose and Authority

This policy establishes requirements for the use of Artificial Intelligence (AI) systems and tools in the development and maintenance of the NIST AI RMF Cookbook repository. It is issued under the authority of the repository maintainer (VintageDon) and operates as a component of the project's governance framework.

Primary Objectives:

- Enable high-quality documentation through responsible AI assistance
- Protect repository integrity and content accuracy
- Ensure transparency and traceability of AI-assisted work
- Demonstrate NIST AI RMF principles in practice ("eating our own dog food")
- Establish clear expectations for contributors

Authority: This policy is mandatory for all repository contributors working with AI tools. It demonstrates how the policy template in `policies/ai-acceptable-use/` can be adapted for specific organizational contexts.

---

## Introduction

The NIST AI RMF Cookbook documents AI governance best practices. Using AI tools to create this documentation is both practical and principled—it demonstrates responsible AI use while maintaining the quality and accuracy our users depend on.

What This Policy Delivers: A clear framework for AI tool selection, usage, verification, and governance that produces trustworthy documentation while enabling contributor productivity.

Desired Outcome: Contributors can confidently use approved AI tools for appropriate work activities, understand verification requirements, and make informed decisions about AI assistance in their contributions.

Value Created: Higher quality documentation through multi-model consensus, faster iteration cycles, consistent formatting and structure, and explicit transparency about AI involvement.

---

## Scope

### In Scope

This policy applies to:

Personnel:

- Primary repository maintainer (VintageDon)
- All contributors submitting pull requests
- External collaborators with write access
- Anyone working on cookbook content

Systems and Activities:

- Use of AI systems for documentation creation, review, and improvement
- AI-powered content generation (policies, schemas, examples, guides)
- Local model deployment and inference
- Processing of repository content through AI systems
- AI-assisted code generation for schemas, scripts, and examples

AI System Types Covered:

- Commercial AI APIs (Claude, GPT-4, Gemini Pro)
- Local LLM deployments (Ollama, custom Kubernetes pods)
- AI-powered development tools integrated with approved platforms

### Out of Scope

This policy does NOT cover:

Separate Infrastructure:

- Astronomy research workloads in Proxmox Lab (governed separately)
- Infrastructure management automation (outside documentation scope)
- Model training or fine-tuning (not performed in this repository)

Non-AI Systems:

- Traditional text editors and IDEs without AI features
- Manual documentation authoring without AI assistance
- Version control (git) and standard development tools

---

## Definitions

AI System: Any software, platform, or service that uses artificial intelligence, machine learning, natural language processing, or large language models to generate outputs, recommendations, or content based on input data.

Approved Platform: An AI system that has been evaluated by the repository maintainer, meets quality and transparency requirements, and is explicitly authorized for repository work.

Frontier Model: State-of-the-art commercial AI models (Claude, GPT-4, Gemini Pro) that represent the current leading edge of AI capabilities.

Local Model: AI models deployed on-premises infrastructure (Proxmox Astronomy Lab) with constrained resources compared to commercial APIs.

Multi-Model Analysis: Process of using multiple AI systems to analyze the same task, comparing outputs, and synthesizing consensus with human oversight.

Human Verification: Mandatory review process where a human contributor validates AI-generated content for accuracy, consistency, and quality before publication.

Repository Content: Any documentation, code, schema, policy, or artifact intended for inclusion in the NIST AI RMF Cookbook repository.

Training Opt-Out: Configuration setting ensuring AI provider does not use submitted content to train or improve their models.

---

## Section 1: Approved AI Platforms

### Platform Registry

The following AI platforms are approved for NIST AI RMF Cookbook development:

| Platform | Vendor | Use Case | Security Posture | Access Status |
|----------|--------|----------|------------------|---------------|
| Claude (All Tiers) | Anthropic | Primary content creation, analysis, verification | Training opt-out enabled, SOC2 Type II | Active |
| GPT-4 (All Tiers) | OpenAI | Multi-model consensus, specialized tasks | Training opt-out enabled, SOC2 Type II | Active |
| Gemini Pro (All Tiers) | Google | Multi-model consensus, diverse perspectives | Training opt-out enabled, ISO 27001 | Active |
| Local Models | Self-Hosted | Light review, offline work, experimentation | On-premises, complete control | Active |

Security and Compliance Requirements:

All approved platforms must meet:

- Training Opt-Out: Contractual commitment or technical guarantee that submitted content is not used for model training
- Data Privacy: Clear data handling policies and industry-standard security practices
- Transparency: Provider discloses model capabilities, limitations, and training approaches
- Reliability: Consistent availability and performance for production use

Platform-Specific Details:

- Frontier Models (Claude, GPT-4, Gemini Pro):
  - Used for: Content creation, multi-model analysis, complex reasoning
  - Configuration: All subscription tiers, training opt-out explicitly enabled
  - See: [Documentation Methodology](methodology.md) for usage patterns

- Local Models:
  - Deployed on: NVIDIA RTX A4000 (16GB VRAM) in Proxmox Astronomy Lab
  - Used for: Light review, syntax checking, offline development, learning
  - Constraints: Limited by VRAM, smaller parameter counts
  - See: [Local AI Infrastructure](local-ai-infrastructure.md) for capabilities

### Platform Change Management

Adding new AI platforms or modifying configurations requires:

1. Evaluation Phase:
   - Technical assessment of capabilities and limitations
   - Security review of data handling and privacy policies
   - Cost-benefit analysis for repository needs
   - Trial period with non-critical work

2. Documentation Phase:
   - Update this policy's Platform Registry
   - Document in [Documentation Methodology](methodology.md) if usage patterns change
   - Note in git commit message and pull request

3. Approval:
   - Repository maintainer approval required
   - Community notification through GitHub Discussions

Decommissioning Platforms:

If a platform is removed from approved list:

- Update Platform Registry with "Deprecated" status
- Document rationale for removal
- Identify replacement platform and migration path
- Archive existing work using that platform appropriately

---

## Section 2: Data Handling and Content Types

### Policy Statement

All repository content is public and open-source (MIT License). However, responsible data handling practices still apply.

### What May Be Processed Through AI Systems

Repository Content:

- Draft documentation (markdown files, policies, schemas)
- Code snippets and examples
- Schema definitions (YAML, JSON)
- Configuration files
- Public content from cited sources (with proper attribution)

Development Work:

- Prompt engineering and experimentation
- Structure and formatting improvements
- Technical accuracy verification
- Consistency checking across documents

Guiding Principle: If it's intended for public release in the repository, it can be processed through approved AI platforms.

### What Requires Additional Consideration

External Contributions:

- Review external contributor agreements before processing their content through AI
- Ensure contributors understand AI assistance is used in review process
- Document AI involvement in pull request review comments

Sensitive Experiments:

- Use local models for experimental work not ready for public disclosure
- Keep unpublished research or analysis off commercial APIs until finalized

Third-Party Content:

- Verify licensing allows AI processing before including in prompts
- Never process content that would violate copyright or terms of service
- Properly cite and attribute all sources

### Always Prohibited

Credentials and Secrets:

- Never include API keys, passwords, certificates, or access tokens in AI prompts
- Sanitize example code to remove any authentication information
- Use placeholders (e.g., `[API_KEY]`) instead of real credentials

Personal Information:

- Do not include personal email addresses, phone numbers, or addresses
- Use role-based identifiers (e.g., "repository maintainer") instead
- Exception: Public profiles (GitHub handles, ORCID) intended for publication

---

## Section 3: Required Practices

### Multi-Model Consensus

Requirement: Any content creation or analysis task must use multiple AI models when quality is critical.

When Multi-Model is Required:

- Policy template creation or modification
- Schema definition authoring
- Framework crosswalk development
- Technical accuracy verification
- Complex reasoning or synthesis tasks

When Single Model is Acceptable:

- Routine documentation updates (typo fixes, formatting)
- Minor clarifications or rewording
- Structural improvements to existing content
- Initial drafts (will be multi-model reviewed before merge)

Process:

1. Submit identical or equivalent prompt to 2-3 frontier models
2. Each model independently generates output
3. Models cross-review each other's work
4. Human reads all outputs and synthesizes final content
5. Human verifies against authoritative sources

See [Documentation Methodology](methodology.md) for detailed process.

### Human Verification

Requirement: 100% of AI-generated content must be manually reviewed and verified by a human contributor before merging to main branch.

Verification Requirements:

For all content:

- Human reads output - No blind acceptance of AI suggestions
- Source verification - Check claims against authoritative sources (NIST publications, ISO standards, official regulations)
- Consistency check - Ensure alignment with existing repository content
- Quality review - Grammar, clarity, structure, tone
- Attribution - Proper citation of external sources

For technical content specifically:

- Test functionality - Validate code examples, commands, and schemas
- Validate syntax - Ensure YAML, JSON, and code are well-formed
- Check references - Verify links work and point to correct resources

Verification Evidence:

- Git commits show human author (VintageDon)
- Commit messages describe verification performed
- Pull request descriptions note AI assistance and verification steps
- Changes reviewed in context of full repository

### Transparency and Attribution

Requirement: AI involvement must be transparently disclosed.

How Disclosure is Achieved:

1. Front Matter: Every document includes `ai_contributor` field
2. Methodology Document: [Documentation Methodology](methodology.md) explains process
3. This Policy: Public documentation of AI usage practices
4. Git History: Commits and pull requests show human authorship and oversight

What We Do NOT Do:

- Hide AI involvement
- Claim content is purely human-written
- Misrepresent the role of AI in content creation

What We DO:

- Openly acknowledge AI assistance
- Explain verification process
- Take human responsibility for accuracy
- Document limitations and uncertainties

### Quality Standards

All AI-assisted content must meet:

- Accuracy: Factually correct, verified against authoritative sources
- Clarity: Understandable by target audience
- Consistency: Aligned with repository structure and tone
- Completeness: Addresses the full scope of intended topic
- Accessibility: Written for general audiences, not just experts
- Attribution: Properly cited when referencing external sources

When Quality is Insufficient:

- Do not merge content that fails quality standards
- Use additional model iterations or human rewriting to improve
- Document challenging areas in commit messages
- Consider requesting community feedback for complex topics

---

## Section 4: Local Model Usage

### When to Use Local Models

Appropriate Use Cases:

- Light syntax and structure checking
- Offline development when internet unavailable
- Experimentation and learning about model behavior
- Quick iterative testing of prompts or schemas
- Privacy-sensitive draft work before public disclosure

See [Local AI Infrastructure](local-ai-infrastructure.md) for detailed capabilities and constraints.

### Constraints and Limitations

16GB VRAM Hard Limits:

- Models limited to ~13B parameters (quantized)
- Context windows smaller than commercial APIs
- Quality lower than frontier models
- Not suitable for primary content generation

Quality Expectations:

- Local models are NOT equivalent to frontier models
- Use for support tasks, not critical content creation
- Always verify output more carefully than frontier model output
- Default to commercial APIs when quality matters

### Local Model Governance

Deployment:

- Local models deployed via Kubernetes on Proxmox Astronomy Lab
- GPU scheduling through Kubernetes device plugins
- No public-facing inference endpoints

Access:

- Restricted to authorized infrastructure users
- Audit logging through Kubernetes and Proxmox
- No API keys or credentials stored in model deployments

---

## Section 5: Roles and Responsibilities

### All Contributors

Must:

- Use only approved AI platforms for repository work
- Follow multi-model consensus requirements for critical content
- Perform human verification on all AI-assisted contributions
- Disclose AI assistance in pull request descriptions
- Request clarification when uncertain about policy requirements
- Report policy violations or concerns to repository maintainer

May:

- Use approved AI tools for any public repository content
- Choose appropriate platform based on task requirements
- Experiment with local models for learning and development

Must Not:

- Use unapproved AI platforms for repository contributions
- Submit AI-generated content without human verification
- Include credentials, secrets, or sensitive personal information in AI prompts
- Misrepresent AI-assisted work as purely human-created

### Repository Maintainer (VintageDon)

Responsibilities:

- Approve AI platforms for repository use
- Maintain this policy and related documentation
- Review pull requests for policy compliance
- Investigate reported policy violations
- Update policy based on evolving practices and community feedback
- Ensure transparency in AI usage practices

Authority:

- Final decision on platform approvals and policy interpretations
- Can require additional verification for high-risk content
- May reject contributions that don't meet quality or policy standards

### External Contributors

Guidelines:

- Review this policy before submitting pull requests
- Note if AI assistance was used in pull request description
- Understand that maintainer may use AI tools to review your contribution
- Accept that AI-assisted improvements may be suggested
- Agree to project's MIT license covering AI-assisted derivative works

---

## Section 6: Violations and Enforcement

### Enforcement Approach

This is a public, open-source project. Enforcement focuses on maintaining quality and transparency rather than punitive measures.

### Violation Categories

Category 1: Unintentional Mistakes

Examples:

- Forgot to disclose AI assistance in pull request
- Used unapproved platform without realizing policy requirement
- Submitted AI content without adequate verification

Response:

- Friendly correction and education
- Request updates to pull request
- Document proper approach for future contributions

Category 2: Quality Issues

Examples:

- AI-generated content with factual errors
- Inadequate verification before submission
- Content that doesn't meet repository quality standards

Response:

- Request revisions and additional verification
- Provide feedback on quality expectations
- May require multi-model consensus if not already used
- Block merge until quality standards met

Category 3: Intentional Violations

Examples:

- Deliberately hiding AI involvement
- Using unapproved platforms after policy notification
- Submitting unverified AI content knowing it's incorrect
- Including credentials or sensitive data in AI prompts

Response:

- Pull request closure and explanation
- Contributor communication about policy requirements
- May decline future contributions if pattern continues
- Note: This is a public repo, not an employment context—consequences are limited to participation

### Self-Reporting

If you make a mistake:

- Comment on your own pull request or open an issue
- Explain what happened and how you'll correct it
- Update contribution to comply with policy

Early self-reporting is viewed favorably and demonstrates good faith.

---

## Section 7: Policy Review and Evolution

### Review Cycle

This policy will be reviewed quarterly and updated as needed.

Review Triggers:

- Scheduled quarterly review
- New AI platform evaluation
- Significant changes to AI capabilities or limitations
- Community feedback on policy effectiveness
- Changes to NIST AI RMF guidance
- Regulatory developments affecting AI use

### Policy Evolution

This policy will evolve as:

- AI technology and best practices mature
- Repository needs and scale change
- Community standards develop
- Lessons learned from practical application

### Feedback

Policy feedback and improvement suggestions:

- Open an issue: [GitHub Issues](https://github.com/vintagedon/nist-ai-rmf-cookbook/issues)
- Tag with: `policy`, `ai-governance`
- Start a discussion: [GitHub Discussions](https://github.com/vintagedon/nist-ai-rmf-cookbook/discussions)

---

## Framework Alignment

This policy aligns with NIST AI Risk Management Framework principles:

### NIST AI RMF Functions

| Function | How This Policy Implements It |
|----------|------------------------------|
| Govern | Establishes clear governance structure (maintainer authority), defines roles and responsibilities, creates transparency through documentation |
| Map | Identifies risks (inaccuracy, bias, misuse), assesses AI platform capabilities and limitations, documents context-specific constraints |
| Measure | Requires multi-model consensus as quality metric, mandates human verification, tracks policy compliance through pull request review |
| Manage | Implements controls (approved platforms, verification requirements), establishes incident response (violation handling), maintains continuous monitoring |

### Demonstrates Framework Principles

Transparency and Accountability:

- Openly discloses AI involvement (front matter, this policy, methodology)
- Human maintains ultimate responsibility for all content
- Clear chain of accountability through git history

Human-AI Collaboration:

- AI enhances human capabilities, doesn't replace them
- Verification requirements ensure human oversight
- Multi-model approach mitigates single-model risks

Risk Management:

- Identifies risks (accuracy, bias, quality)
- Implements controls (verification, multi-model consensus)
- Monitors and adapts (quarterly policy review)

---

## Related Documentation

This policy works in conjunction with:

1. [Documentation Methodology](methodology.md) - Detailed explanation of multi-model consensus process, verification practices, and workflow
2. [Local AI Infrastructure](local-ai-infrastructure.md) - Technical specifications and capabilities of on-premises AI systems
3. [Project README](../README.md) - Overall project goals, structure, and community guidelines
4. [Contributing Guidelines](../CONTRIBUTING.md) - General contribution process (when created)

---

## Acknowledgment

By contributing to the NIST AI RMF Cookbook repository, you acknowledge that:

- You have read and understand this AI Acceptable Use Policy
- You will use only approved AI platforms for repository contributions
- You will perform human verification on all AI-assisted content
- You will disclose AI assistance transparently in contributions
- You understand the repository maintainer may use AI tools to review your contributions
- Your contributions (including AI-assisted derivative works) are licensed under MIT License

---

Repository Maintainer: VintageDon ([GitHub Profile](https://github.com/vintagedon))  
ORCID: [0009-0008-7695-4093](https://orcid.org/0009-0008-7695-4093)  
Repository: [nist-ai-rmf-cookbook](https://github.com/vintagedon/nist-ai-rmf-cookbook)  
License: MIT  
Framework Version: NIST AI RMF 1.0 (January 2023)

---

Policy Version: 1.0 | Effective Date: YYYY-MM-DD | Next Review: YYYY-MM-DD + 90 days | Status: Published
