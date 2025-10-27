# AI Transparency & Disclosure Standard Template

Document ID: [STD-XXX]  
Version: [x.x]  
Effective Date: [YYYY-MM-DD]  
Last Updated: [YYYY-MM-DD]  
Document Owner: [Role]  
Review Cycle: [Annual/Quarterly]  
Status: [Active/Draft]

[GUIDANCE: This standard establishes how you communicate about AI use to stakeholders - when to disclose, what to disclose, how to disclose. Unlike policies (which set rules) or risk assessments (which evaluate systems), this standard focuses on transparency and honest communication about AI involvement in your work.]

---

> RadioAstronomy.io Implementation:
>
> Document ID: STD-004  
> Version: 1.1  
> Effective Date: 2025-10-26  
> Last Updated: 2025-10-26  
> Document Owner: CTO  
> Review Cycle: Annual (or upon material AI service changes)  
> Status: Active
>
> Version History:
>
> | Version | Date | Author | Changes |
> |---------|------|--------|---------|
> | 1.0 | 2025-01-15 | CTO | Initial standard based on NIST AI RMF and Colorado SB24-205 |
> | 1.1 | 2025-10-26 | CTO | Removed all unapproved OpenAI references; added Z.ai/GLM-4.6 with training disclosure requirement; aligned data classification references with 4-tier system |

---

## Table of Contents

[GUIDANCE: Include comprehensive ToC for navigation - transparency standards tend to be long because they cover many content types and scenarios]

1. Purpose
2. Scope
3. Transparency Principles
4. Disclosure Requirements
5. Documentation Standards
6. Stakeholder Communication
7. Limitations and Risks
8. Monitoring and Compliance
9. Regulatory Compliance
10. Roles and Responsibilities
11. References
12. Appendices

---

## 1. Purpose

[GUIDANCE: State what this standard accomplishes and why it matters. Connect to stakeholder trust, regulatory compliance, and organizational values.]

This standard establishes transparency and disclosure requirements for AI systems deployed or used within [Organization] operations. It ensures:

- Transparency about AI capabilities, limitations, and risks
- Disclosure of AI involvement in content, decisions, and processes
- Accountability through clear documentation and communication
- Trust with stakeholders through honest representation of AI use
- Compliance with [regulatory frameworks] and ethical AI principles

This standard applies to:

- AI-generated or AI-assisted content (documents, code, analysis)
- AI systems used in decision-making or recommendations
- Research outputs involving AI tools
- Public-facing materials created with AI assistance
- Internal documentation and communication

---

> RadioAstronomy.io Purpose:
>
> This standard establishes transparency and disclosure requirements for AI systems deployed or used within RadioAstronomy.io operations. It ensures:
>
> - Transparency about AI capabilities, limitations, and risks
> - Disclosure of AI involvement in content, decisions, and processes
> - Accountability through clear documentation and communication
> - Trust with stakeholders through honest representation of AI use
> - Compliance with NIST AI RMF, Colorado SB24-205, and ethical AI principles
>
> This standard applies to:
>
> - AI-generated or AI-assisted content (documents, code, analysis)
> - AI systems used in decision-making or recommendations
> - Research outputs involving AI tools
> - Public-facing materials created with AI assistance
> - Internal documentation and communication
>
> ---
>
> Why transparency matters for research output: As citizen scientists producing datasets and research that others build on, our downstream footprint creates transparency responsibility. When your first dataset gets 100+ downloads on Zenodo in 3 weeks and other researchers cite your work, they need to know when AI contributed to methods, analysis, or findings. This isn't compliance theater - it's scientific integrity.

---

## 2. Scope

### 2.1 In Scope

[GUIDANCE: Define what AI systems, content types, and stakeholders this standard covers.]

AI Systems:

- [List your AI systems - LLMs, computer vision, ML models, etc.]

Content Types:

- [List content requiring disclosure - research papers, code, documentation, etc.]

Stakeholders:

- [List who needs transparency - collaborators, funders, public, etc.]

### 2.2 Out of Scope

[GUIDANCE: Clarify what this standard does NOT cover to prevent confusion.]

- [General IT transparency covered elsewhere]
- [Financial disclosures covered elsewhere]
- [Other transparency domains not AI-specific]

### 2.3 Related Policies

[GUIDANCE: Map to other governance documents so people understand the ecosystem.]

---

> RadioAstronomy.io Scope:
>
> ### 2.1 In Scope
>
> AI Systems:
>
> - Large Language Models (Gemini, Claude Max, Z.ai GLM-4.6, local Llama models)
> - Computer vision models for astronomical image processing
> - Machine learning models for data analysis
> - AI-powered development and documentation tools
>
> Content Types:
>
> - Research papers and publications
> - Technical documentation and reports
> - Software code and documentation
> - Blog posts and public communications
> - Internal analysis and recommendations
> - Meeting notes and summaries
>
> Stakeholders:
>
> - Academic collaborators and research partners
> - Funding agencies and grant reviewers
> - Open-source community and contributors
> - General public and media
> - Internal team members
>
> ### 2.2 Out of Scope
>
> - General IT transparency (covered in IT policies)
> - Financial disclosures (covered in financial policies)
> - Personnel matters (covered in HR policies)
> - Non-AI data processing transparency
>
> ### 2.3 Related Policies
>
> - POL-001: AI Governance Policy (overarching framework)
> - STD-001: AI System Assessment Standard (risk assessment)
> - STD-003: Secure AI Systems Standard (security controls, data classification)
> - AUP-001: AI Acceptable Use Policy (user behavior)

---

## 3. Transparency Principles

[GUIDANCE: Establish your foundational principles for transparency. Most organizations adopt 4-6 core principles. Common themes: honesty, clarity, accessibility, completeness, timeliness. For each principle, explain what it means operationally with concrete examples.]

[Organization]'s transparency approach is guided by the following principles:

### 3.1 [Principle 1 - e.g., Honesty]

Principle: [Core statement]

Application:

- [How this principle applies in practice]
- [Operational guidance]

Example:

```markdown
✓ Good: [Example of principle applied correctly]
✗ Bad: [Example of principle violation]
```

[Repeat pattern for each principle]

---

> RadioAstronomy.io Transparency Principles:
>
> RadioAstronomy.io's transparency approach is guided by the following principles:
>
> ### 3.1 Honesty
>
> Principle: Truthfully represent AI involvement in content and decisions.
>
> Application:
>
> - Never claim AI-generated content as entirely human-created
> - Disclose when AI significantly contributed to analysis or conclusions
> - Acknowledge AI limitations when they affect outputs
> - Correct misrepresentations promptly if discovered
>
> Example:
>
> ```markdown
> ✓ Good: "This code was generated with AI assistance (Gemini) and reviewed by engineers."
> ✗ Bad: Submitting AI-generated code without disclosure, implying human authorship.
> ```
>
> ### 3.2 Clarity
>
> Principle: Use clear, accessible language to explain AI involvement.
>
> Application:
>
> - Avoid technical jargon in stakeholder communications
> - Explain AI capabilities in context-appropriate terms
> - Provide examples of AI use when helpful
> - Tailor disclosure depth to audience needs
>
> Example:
>
> ```markdown
> For academic audience: "Analysis performed using Gemini 2.5 Pro (Google) LLM for pattern recognition in astronomical datasets."
> 
> For general public: "We used AI tools to help identify patterns in star data."
> ```
>
> ### 3.3 Accessibility
>
> Principle: Make transparency information easy to find and understand.
>
> Application:
>
> - Include AI disclosure in prominent locations (abstracts, introductions, READMEs)
> - Provide links to detailed AI methodology where applicable
> - Maintain public documentation of AI systems in use
> - Ensure disclosures are readable by non-technical stakeholders
>
> ### 3.4 Completeness
>
> Principle: Provide sufficient information for stakeholders to understand AI's role.
>
> Application:
>
> - Disclose both capabilities and limitations
> - Include risks or uncertainties when material
> - Explain data sources for AI training (where known)
> - Document human oversight and validation processes
>
> ### 3.5 Timeliness
>
> Principle: Provide AI disclosures when stakeholders need them.
>
> Application:
>
> - Disclose AI involvement at time of content publication/sharing
> - Update disclosures if AI use changes significantly
> - Retroactively disclose if previously unknown AI involvement discovered
> - Maintain disclosure records for future reference
>
> ---
>
> Why these five principles: They're action-oriented (not just aspirational) and cover the critical dimensions - truthfulness (Honesty), understandability (Clarity), findability (Accessibility), sufficiency (Completeness), and timing (Timeliness). Together they prevent common transparency failures: vague disclosures buried in footnotes discovered months after publication.

---

## 4. Disclosure Requirements

### 4.1 Disclosure Thresholds

[GUIDANCE: Not all AI use requires the same disclosure level. Define thresholds based on AI contribution percentage or significance. Common pattern: Minimal/Moderate/Substantial/Comprehensive disclosure levels. Provide decision framework so people can self-assess.]

| AI Use Case | Disclosure Level | Required Information |
|-------------|-----------------|---------------------|
| Minimal AI Assistance | [Disclosure approach] | [What to include] |
| Moderate AI Assistance | [Disclosure approach] | [What to include] |
| Substantial AI Assistance | [Disclosure approach] | [What to include] |
| AI-Primary Content | [Disclosure approach] | [What to include] |

Decision Framework:
[Provide decision tree or flowchart helping people determine disclosure level]

---

> RadioAstronomy.io Disclosure Thresholds:
>
> Not all AI use requires the same level of disclosure. Use these thresholds to determine appropriate disclosure depth:
>
> | AI Use Case | Disclosure Level | Required Information |
> |-------------|-----------------|---------------------|
> | Minimal AI Assistance (spell-check, grammar, minor suggestions) | None required | Optional: Brief mention acceptable |
> | Moderate AI Assistance (code suggestions, data analysis help, content expansion) | Basic Disclosure | Tool name, general purpose, human review |
> | Substantial AI Assistance (significant content generation, complex analysis, decision support) | Detailed Disclosure | Tool name, specific use, limitations, validation process |
> | AI-Primary Content (majority of content AI-generated, minimal human editing) | Comprehensive Disclosure | Full methodology, tool details, limitations, risks, validation |
>
> Decision Framework:
>
> ```markdown
> Ask: What percentage of intellectual contribution came from AI?
> ├─ <10%: Minimal (no disclosure required)
> ├─ 10-40%: Moderate (basic disclosure)
> ├─ 40-80%: Substantial (detailed disclosure)
> └─ >80%: AI-Primary (comprehensive disclosure)
> 
> Ask: Could AI limitations materially affect conclusions?
> └─ Yes: Increase disclosure level by one tier
> 
> Ask: Is this high-stakes content (research publication, funding application)?
> └─ Yes: Increase disclosure level by one tier
> 
> Ask: Would stakeholders reasonably expect to know about AI use?
> └─ Yes: Ensure appropriate disclosure
> ```
>
> ---
>
> Why percentage thresholds: They're imperfect but actionable. "Substantial" is vague; "40-80% AI contribution" is measurable. Adjustments for high-stakes content or material limitations prevent gaming the percentages. When in doubt, round up disclosure level - over-disclosure builds trust, under-disclosure destroys it.

### 4.2 Required Disclosure Elements

[GUIDANCE: Define what information must be included in disclosures. Common elements: tool identification, purpose/scope, human oversight, limitations/risks. Be specific about format and level of detail.]

#### 4.2.1 Tool Identification

Requirement: [What tool information is required]

Format:

```markdown
[Example disclosure format]
```

Examples:
✓ Good: [Good example]  
✗ Bad: [Bad example]

[Repeat pattern for other required elements]

---

> RadioAstronomy.io Required Disclosure Elements:
>
> #### 4.2.1 Tool Identification
>
> Requirement: Name the specific AI tool(s) used.
>
> Rationale: Different tools have different capabilities, limitations, and training behaviors. Stakeholders need specific information for informed evaluation.
>
> Format:
>
> ```markdown
> AI Tool: Google Gemini 2.5 Pro
> AI Tools: Anthropic Claude Sonnet 4.5, local Llama 3.1 8B
> ```
>
> Do NOT use generic terms like "AI" or "large language model" without tool identification.
>
> Examples:
> ✓ Good: "Code generated using Google Gemini 2.5 Pro"  
> ✓ Good: "Analysis performed with Anthropic Claude Sonnet 4.5 and Z.ai GLM-4.6"  
> ✗ Bad: "This was created with AI assistance" (too vague)  
> ✗ Bad: "We used an LLM for this" (not specific)
>
> #### 4.2.2 Purpose and Scope
>
> Requirement: Explain what the AI tool was used for and the extent of its contribution.
>
> Rationale: Stakeholders need to understand which parts of the work involved AI and which parts were human-driven.
>
> Format:
>
> ```markdown
> AI Purpose: Literature review and initial pattern identification
> AI Scope: Approximately 30% of analysis; all findings validated by domain experts
> ```
>
> Be specific about boundaries:
>
> ```markdown
> AI-Generated: Initial code structure and boilerplate
> Human-Authored: Core algorithms, security-critical functions, integration logic
> ```
>
> #### 4.2.3 Human Oversight and Validation
>
> Requirement: Describe human review, validation, or quality control applied to AI outputs.
>
> Rationale: Stakeholders want assurance that AI outputs were verified by qualified humans.
>
> Format:
>
> ```markdown
> Validation: Code reviewed by senior engineers for correctness and security
> Review: All AI-suggested statistical methods validated against textbook references
> Quality Control: Domain expert (astronomer with 10+ years experience) verified all conclusions
> ```
>
> Avoid defensive or dismissive language:
> ✗ Bad: "Obviously we checked it"  
> ✗ Bad: "Don't worry, we validated everything"  
> ✓ Good: "Validation performed by [role] with [qualification]"
>
> #### 4.2.4 Training Behavior Disclosure
>
> Requirement: Disclose whether the AI tool trains on submitted data.
>
> Rationale: Stakeholders have legitimate interest in whether their content contributes to model training, especially in research and open-source contexts.
>
> For Tools That Train on Data:
>
> ```markdown
> Training Behavior: Content reviewed using [Tool], which trains on submitted data. Used only for [specific data classification tier] per organizational policy. Not used for [prohibited data types].
> ```
>
> For Tools with Training Opt-Out:
>
> ```markdown
> Training Behavior: Tool configured with training opt-out; submitted data not used for model training.
> ```
>
> For Local/Air-Gapped Models:
>
> ```markdown
> Training Behavior: Local air-gapped deployment; data never transmitted externally and not used for training.
> ```
>
> #### 4.2.5 Limitations and Risks
>
> Requirement: Acknowledge material limitations or risks associated with AI use.
>
> Rationale: Transparency includes honest communication about what AI cannot do or where it might fail.
>
> Format:
>
> ```markdown
> Limitations:
> - AI may generate plausible but incorrect citations (all references verified by human researcher)
> - Pattern recognition optimized for visual appearance; physical validation required
> - Statistical suggestions may not account for domain-specific constraints
> 
> Known Risks:
> - Model trained on publicly available code; may reflect common but outdated practices
> - Hallucination risk for obscure or specialized topics
> ```
>
> ---
>
> Why tool-specific identification matters: "AI helped" is meaningless. Gemini vs. Claude vs. Z.ai have different capabilities, limitations, and training behaviors. Stakeholders evaluating your work need to know which specific tool was used to assess reliability and bias risks. Generic disclosure prevents informed evaluation.
>
> Why training behavior disclosure is critical: Z.ai trains on everything you submit. That's fine for Public-External research code (going public anyway), unacceptable for infrastructure code (our IP). Explicit disclosure lets stakeholders know if their contributions to our work became model training data. This isn't paranoia - it's informed consent.

### 4.3 Disclosure Formats by Content Type

[GUIDANCE: Provide specific guidance for different content types. Common types: research papers, software code, technical documentation, internal reports, blog posts, presentations. For each type: where to disclose, minimum required elements, format examples.]

#### 4.3.1 Research Papers

Location: [Where disclosure should appear]

Minimum Required:

- [Element 1]
- [Element 2]

Example:

```markdown
[Full example disclosure for research paper]
```

[Repeat pattern for other content types]

---

> RadioAstronomy.io Content-Specific Formats:
>
> #### 4.3.1 Research Papers
>
> Location: Methods section (preferred) or acknowledgments section
>
> Minimum Required:
>
> - Tool identification
> - Specific use (data analysis, literature review, etc.)
> - Human validation process
> - Training behavior (if using tool that trains on data)
>
> Example:
>
> ```markdown
> ## Methods
> 
> ### AI-Assisted Analysis
> 
> This research employed Google Gemini 2.5 Pro for initial literature review and pattern identification in observational datasets. Specific contributions:
> 
> 1. Literature Review: AI identified candidate papers based on keyword searches. All papers reviewed by human researchers; final selection and interpretation performed by authors.
> 
> 2. Data Pattern Recognition: AI flagged potential periodicities in time-series data. All patterns validated against physical models and confirmed through traditional Fourier analysis.
> 
> All AI-assisted analysis was reviewed by domain experts with radio astronomy specialization. Final conclusions and interpretations are the work of the human research team.
> 
> Training Behavior: Gemini configured with training opt-out; data not used for model training.
> ```
>
> #### 4.3.2 Software Code
>
> Location: README file + inline comments for AI-generated sections
>
> Minimum Required:
>
> - Tool identification
> - Which portions are AI-generated vs human-written
> - Review process
> - Training behavior (especially if using tool that trains on data)
>
> Example README:
>
> ```markdown
> # Project Name
> 
> ## AI Disclosure
> 
> This codebase includes AI-assisted development:
> 
> - Tool: Google Gemini 2.5 Pro
> - AI-Generated: Initial API client implementation (~40% of src/client/), unit test scaffolding
> - Human-Authored: Core algorithm implementations, security-critical functions, integration logic
> - Review: All AI-generated code reviewed by senior engineers for correctness, security, and maintainability
> - Training: Gemini configured with training opt-out per organizational policy
> 
> AI-generated sections are marked with inline comments:
> \`\`\`python
> # AI-GENERATED: Gemini 2.5 Pro (reviewed by [engineer])
> def example_function():
>     ...
> \`\`\`
> ```
>
> Example Inline Comment:
>
> ```python
> # AI-GENERATED: Gemini 2.5 Pro - Initial implementation
> # REVIEWED: [Engineer Name] - 2025-10-26 - Validated logic, added error handling
> def process_data(input_data):
>     # Human modification: Added input validation
>     if not input_data:
>         raise ValueError("Input data required")
>     
>     # AI-generated processing logic (validated)
>     result = transform(input_data)
>     return result
> ```
>
> #### 4.3.3 Technical Documentation
>
> Location: Document header, footer, or dedicated section
>
> Minimum Required:
>
> - Tool identification
> - Content contribution level (percentage or description)
> - Human review
> - Training behavior (if applicable)
>
> Example Header:
>
> ```markdown
> # System Architecture Documentation
> 
> AI Disclosure: This document was drafted using Anthropic Claude Sonnet 4.5 (~60% AI-generated content). Technical accuracy validated by lead architect. Final structure and critical sections authored by human team. Training opt-out enabled.
> 
> ---
> 
> [Document content]
> ```
>
> #### 4.3.4 Blog Posts and Public Communications
>
> Location: Author byline, footnote, or end-of-post disclosure
>
> Minimum Required:
>
> - Tool identification
> - Content contribution (keep simple for general audience)
> - Human review
>
> Example:
>
> ```markdown
> # Blog Post Title
> 
> [Content]
> 
> ---
> 
> *This post was written with assistance from Google Gemini 2.5 Pro. The author drafted the outline and key points; AI expanded sections and suggested phrasing. All content reviewed and edited by the author for accuracy.*
> ```
>
> ---
>
> Why format varies by content type: Academic readers expect methods section disclosure. Open-source contributors need README transparency. General public needs simple end-of-post notes. Matching disclosure format to content type and audience prevents both under-disclosure (buried in wrong section) and over-disclosure (intimidating jargon scaring off readers).
>
> Why inline code comments: README disclosure says "this repo uses AI." Inline comments say "this specific function was AI-generated and reviewed by [engineer]." Granular attribution helps future maintainers understand code provenance and know which sections to scrutinize more carefully during debugging.

### 4.4 Special Disclosure Scenarios

[GUIDANCE: Address edge cases and special situations. Common scenarios: collaborative work with partners, retroactive disclosure when AI use wasn't initially disclosed, historical tools no longer in use, disclosure waivers for classified work. Provide processes not just principles.]

#### 4.4.1 Collaborative Work with External Partners

Challenge: [Situation description]

Requirements:

- [Requirement 1]
- [Requirement 2]

Process:

1. [Step 1]
2. [Step 2]

[Repeat pattern for other scenarios]

---

> RadioAstronomy.io Special Scenarios:
>
> #### 4.4.1 Collaborative Work with External Partners
>
> Challenge: External collaborators may have different AI policies or transparency practices.
>
> Requirements:
>
> - Align disclosure approach with partners before publication
> - Ensure all parties agree on AI disclosure language
> - Respect partner's more restrictive policies if applicable
> - Document AI use in shared collaboration agreements
>
> Process:
>
> 1. Identify all AI use by any collaborator
> 2. Draft disclosure statement collaboratively
> 3. Obtain approval from all parties before publication
> 4. Include disclosure in agreed location (methods, acknowledgments, etc.)
>
> #### 4.4.2 Retroactive Disclosure
>
> Scenario: AI involvement was not disclosed initially, or new information about AI training/behavior is discovered after publication.
>
> Requirements:
>
> - Disclose as soon as discovery is made
> - Explain why disclosure was omitted initially (unknown, oversight, policy change)
> - Update affected materials if possible (erratum, README update, website correction)
> - Notify stakeholders if AI involvement could affect their use/interpretation
>
> Process:
>
> 1. Document what was omitted and why
> 2. Prepare disclosure statement with retroactive context
> 3. Update materials where feasible
> 4. Communicate proactively to affected stakeholders
> 5. Learn from incident to prevent recurrence
>
> Example Retroactive Disclosure:
>
> ```markdown
> ## Correction: AI Disclosure (2025-10-26)
> 
> This paper, originally published 2025-09-15, did not disclose AI assistance in literature review. We correct this omission:
> 
> AI Use: Google Gemini 2.5 Pro was used for initial literature search and paper identification in Section 2.1. All identified papers were reviewed by human researchers; final selection and interpretation performed by authors. This omission was an oversight; our current policy requires explicit disclosure.
> 
> This correction does not affect the paper's conclusions or validity. We apologize for the initial omission.
> ```
>
> #### 4.4.3 AI Tools No Longer in Use
>
> Scenario: Content was created with AI tool that is no longer approved or available.
>
> Requirements:
>
> - Continue to disclose historical AI use accurately
> - Note tool is no longer in use (if relevant to interpretation)
> - Do not remove historical disclosures for compliance reasons
>
> Example:
>
> ```markdown
> Historical Note: This codebase (2024-2025) includes sections generated with OpenAI GPT-4, which was part of our approved toolset at the time. As of 2025-10-26, we no longer use OpenAI tools. Historical AI-generated sections are marked in comments.
> ```
>
> ---
>
> Why retroactive disclosure matters: Mistakes happen. Tools change. Policies evolve. When you discover undisclosed AI use, cover-up is worse than disclosure. Academic community respects honest correction more than perfect execution. We've done retroactive disclosures - it's uncomfortable but necessary for maintaining trust.
>
> Why collaborative alignment is critical: Partner says "we don't disclose AI in methods section, just acknowledgments." You say "we disclose in methods per policy." Resolution: disclosure appears in both sections. Default to more disclosure, not less, when policies conflict.

---

## 5. Documentation Standards

### 5.1 AI System Inventory

[GUIDANCE: Maintain public-facing list of approved AI systems. This enables transparency without requiring disclosure in every artifact. Stakeholders can reference central inventory to understand your AI landscape.]

Requirement: [What to maintain]

Location: [Where stakeholders find it]

Minimum Contents:

- [Element 1]
- [Element 2]

Example:

```markdown
[Example inventory format]
```

### 5.2 Project-Level AI Documentation

[GUIDANCE: For projects using AI extensively, maintain dedicated documentation tracking AI use, disclosures, and lessons learned. Provides audit trail and knowledge capture.]

Required Documentation:

- [Documentation type 1]
- [Documentation type 2]

Template:

```markdown
[Project documentation template]
```

### 5.3 Transparency Audit Trail

[GUIDANCE: What records to keep for compliance and audit. Define retention periods.]

Records to Keep:

- [Record type 1]
- [Record type 2]

Retention: [Duration and rationale]

---

> RadioAstronomy.io Documentation Standards:
>
> ### 5.1 AI System Inventory
>
> Requirement: Maintain public inventory of approved AI systems in use.
>
> Location: Public website or repository (e.g., <https://radioastronomy.io/ai-tools>)
>
> Minimum Contents:
>
> - Tool name and version
> - Vendor/provider
> - Primary use cases
> - Data classification restrictions
> - Training behavior (trains on data? opt-out enabled?)
> - Last updated date
>
> Example:
>
> ```markdown
> # RadioAstronomy.io AI Systems Inventory
> 
> Last Updated: 2025-10-26
> 
> ## Approved AI Tools
> 
> ### Google Gemini 2.5 Pro
> - Vendor: Google (via Workspace)
> - Use Cases: Code generation, data analysis, documentation, general assistance
> - Data Restrictions: Public-Internal and Public-External only (NOT for Protected data)
> - Training: Opt-out enabled at Workspace level
> - Access: All personnel
> 
> ### Anthropic Claude Sonnet 4.5
> - Vendor: Anthropic
> - Use Cases: High-quality documentation, strategic analysis, Protected data processing (via Kasm)
> - Data Restrictions: All tiers (Public, Protected) with appropriate controls
> - Training: Opt-out enabled
> - Access: CTO only
> 
> ### Z.ai GLM-4.6
> - Vendor: Z.ai
> - Use Cases: Astronomy and data science research code review
> - Data Restrictions: Public-External only (research code where training acceptable)
> - Training: Trains on submitted data (disclosed per STD-004)
> - Access: Engineer role only
> 
> ### Meta Llama 3.1 8B
> - Vendor: Meta (open-source)
> - Use Cases: Local/air-gapped operations, Protected data processing
> - Data Restrictions: All tiers including Protected
> - Training: Air-gapped, no external data transmission
> - Access: All personnel
> 
> ## Prohibited Tools
> - Personal AI accounts (free Claude, consumer Gemini, etc.)
> - Unapproved commercial AI services
> - Tools without clear data handling policies
> ```
>
> ### 5.2 Project-Level AI Documentation
>
> For each project using AI tools:
>
> Required Documentation:
>
> - AI Usage Log: Track which tools used when and for what purpose
> - Disclosure Records: Archive all AI disclosures made for the project
> - Validation Records: Document human review and validation process
> - Lessons Learned: Note what worked well and what challenges occurred
>
> Template:
>
> ```markdown
> # [Project Name] - AI Usage Documentation
> 
> ## AI Tools Used
> 
> | Tool | Date Range | Purpose | Data Classification | Training Behavior |
> |------|-----------|---------|-------------------|------------------|
> | Gemini 2.5 Pro | 2025-01-15 to present | Code generation, docs | Public-Internal | Opt-out enabled |
> | Local Llama | 2025-03-01 to present | Protected data analysis | Protected | Air-gapped |
> 
> ## Disclosures Made
> 
> | Date | Content Type | Location | Disclosure Level |
> |------|-------------|----------|-----------------|
> | 2025-06-15 | Research Paper | Methods section | Detailed |
> | 2025-07-01 | Code Repository | README | Basic |
> 
> ## Validation Process
> 
> - All AI-generated code reviewed by [Engineer Name]
> - Statistical analysis validated against [Reference]
> - Domain expert review by [Expert Name]
> 
> ## Lessons Learned
> 
> - AI excellent for boilerplate, less reliable for domain-specific logic
> - Disclosure in README worked well; stakeholders appreciated transparency
> - Need clearer guidance on inline code comment format for AI sections
> ```
>
> ### 5.3 Transparency Audit Trail
>
> Requirement: Maintain records for regulatory compliance and internal audit.
>
> Records to Keep:
>
> - All AI disclosures (copies or links)
> - Waiver requests and approvals
> - Retroactive disclosure incidents and responses
> - Stakeholder questions/concerns about AI use and responses
> - Policy compliance reviews
>
> Retention: 5 years minimum (or per regulatory requirements)
>
> ---
>
> Why public inventory matters: Stakeholders shouldn't have to hunt through individual disclosures to understand your AI landscape. Centralized inventory provides reference point - "What tools does RadioAstronomy.io use?" One URL answers that. Update quarterly or when tools change.
>
> Why project-level documentation: Individual disclosures are scattered (paper here, code there, blog post somewhere). Project documentation aggregates "here's everything AI did on Project X" in one place. Critical for audit, knowledge transfer, and lessons learned.

---

## 6. Stakeholder Communication

### 6.1 Proactive Communication

[GUIDANCE: Don't wait for stakeholders to ask. Provide clear, accessible information about AI use upfront.]

Best Practices:

- [Practice 1]
- [Practice 2]

Example Public Statement:

```markdown
[Example of proactive communication]
```

### 6.2 Stakeholder-Specific Messaging

[GUIDANCE: Tailor transparency communication to different audiences. Academic, funding agencies, open-source, general public have different needs and concerns.]

[Stakeholder Type 1]:

- [Messaging approach]

[Repeat for key stakeholder types]

### 6.3 Responding to Transparency Questions

[GUIDANCE: When stakeholders ask about AI use, how to respond effectively.]

Guidelines:

- [Guideline 1]
- [Guideline 2]

Never:

- [What to avoid]

Example Response:

```markdown
[Response template]
```

---

> RadioAstronomy.io Stakeholder Communication:
>
> ### 6.1 Proactive Communication
>
> Best Practices:
>
> - Communicate AI policies before stakeholders ask
> - Provide clear, accessible AI documentation
> - Offer opportunities for stakeholder questions
> - Update stakeholders when AI practices change
>
> Example Public Statement:
>
> ```markdown
> ## AI Tools We Use
> 
> RadioAstronomy.io uses AI tools to assist with data analysis, literature review, and documentation. All AI-assisted research is validated by human domain experts, and we disclose AI involvement in our publications.
> 
> ## How We Use AI
> 
> - Research: Literature review, data analysis assistance, pattern recognition
> - Development: Code generation, testing, documentation
> - Operations: System monitoring, log analysis
> 
> ## Our Commitments
> 
> - Transparency: We disclose AI use in all public outputs
> - Validation: Human experts review all AI-generated content
> - Responsibility: We take accountability for AI-assisted work
> - Ethics: We follow NIST AI RMF principles and responsible AI practices
> 
> Questions? Contact us at transparency@[organization].io
> ```
>
> ### 6.2 Stakeholder-Specific Messaging
>
> Tailor communications to audience:
>
> Academic Community:
>
> - Emphasize validation methodology
> - Provide detailed AI tool specifications
> - Explain how AI fits in research workflow
> - Offer to answer methodological questions
>
> Funding Agencies:
>
> - Align with agency AI policies
> - Demonstrate responsible AI governance
> - Show human oversight and expertise
> - Document compliance with guidelines
>
> Open-Source Community:
>
> - Be explicit about AI-generated code
> - Explain quality control process
> - Welcome community review
> - Respect contributors' preferences on AI use
>
> General Public:
>
> - Use accessible language (avoid jargon)
> - Focus on benefits and safeguards
> - Explain human role clearly
> - Provide examples
>
> ### 6.3 Responding to Transparency Questions
>
> When stakeholders ask about AI use:
>
> Guidelines:
>
> - Respond promptly and completely
> - Provide specific details (tool, purpose, validation)
> - Acknowledge concerns respectfully
> - Offer additional information if needed
> - Document question and response
>
> Never:
>
> - Dismiss concerns as unimportant
> - Provide vague or evasive answers
> - Blame stakeholders for asking
> - Promise things not in organizational policy
>
> Example Response:
>
> ```markdown
> Thank you for asking about our AI use in [specific content].
> 
> We used [Tool Name] for [specific purpose]. The AI contribution was approximately [X%] of the [content type]. All AI outputs were reviewed by [role with qualification]. [Additional validation details].
> 
> Training behavior: [Tool trains/doesn't train on data].
> 
> Does this address your question? I'm happy to provide additional details about our methodology.
> ```
>
> ---
>
> Why audience-specific messaging: Academic reviewer needs methodological details and validation rigor. Funding agency needs compliance documentation and governance maturity. Open-source contributor needs to know if their PR review helps train AI models. General public needs simple "AI helped, humans checked" without jargon. One-size-fits-all disclosure fails everyone.
>
> Why prompt response matters: Unanswered transparency question breeds suspicion. "What are they hiding?" 48-hour response target shows you take stakeholder concerns seriously. Document all transparency inquiries - patterns reveal where your disclosure is unclear and needs improvement.

---

## 7. Limitations and Risks

### 7.1 Known AI Limitations

[GUIDANCE: Common AI limitations to disclose when material: hallucination, bias, context window limits, domain expertise gaps, inconsistency. For each limitation: describe it, explain mitigation.]

[Limitation Type]:

- [Description]
- Mitigation: [How you address it]

[Repeat for key limitations]

### 7.2 Risk Disclosure

[GUIDANCE: When to disclose risks to stakeholders. Common risks: data privacy, intellectual property, reliability. Provide disclosure language examples.]

[Risk Type]:

```markdown
[Risk disclosure template]
```

---

> RadioAstronomy.io Limitations and Risks:
>
> ### 7.1 Known AI Limitations
>
> Common limitations to disclose when material:
>
> Hallucination:
>
> - AI may generate plausible but incorrect information
> - Particularly problematic for citations, facts, and technical details
> - Mitigation: Human verification of all factual claims
>
> Bias:
>
> - AI trained on internet data may reflect societal biases
> - Can manifest in language, examples, or recommendations
> - Mitigation: Review for bias; diverse human review team
>
> Context Window:
>
> - AI has limited memory/context (conversation length limits)
> - May lose track of earlier instructions or constraints
> - Mitigation: Provide complete context; validate outputs independently
>
> Domain Expertise:
>
> - AI lacks true understanding; pattern-matches from training data
> - May miss domain-specific nuances or constraints
> - Mitigation: Domain expert review required
>
> Inconsistency:
>
> - Same prompt may generate different outputs
> - Randomness in generation process
> - Mitigation: Generate multiple outputs; select best; validate
>
> ### 7.2 Risk Disclosure
>
> Disclose risks when material to stakeholder decision-making:
>
> Data Privacy Risk:
>
> ```markdown
> Risk: While we use tools with training opt-out enabled, data transmitted to cloud services carries inherent privacy considerations. We process only Public and Protected data (not Secrets or PII) through AI services per our data classification policy.
> ```
>
> Intellectual Property Risk:
>
> ```markdown
> Risk: AI-generated content may inadvertently resemble training data. We review all AI outputs for originality and provide appropriate attribution when sources are identified.
> ```
>
> Reliability Risk:
>
> ```markdown
> Risk: AI outputs may be incorrect or incomplete. All AI-assisted analysis undergoes validation by qualified domain experts before use in decision-making or publication.
> ```
>
> ---
>
> Why limitation disclosure matters: Stakeholders evaluating your work need to know where AI might have failed. "AI suggested these statistical methods" without "AI may not account for domain constraints, validated against textbook references" leaves reviewer wondering if you caught potential errors. Limitation disclosure demonstrates you understand the technology's bounds.

---

## 8. Monitoring and Compliance

### 8.1 Transparency Compliance Reviews

[GUIDANCE: How often to review transparency compliance, what to check, metrics to track.]

Frequency: [How often]

Process:

1. [Review step 1]
2. [Review step 2]

Metrics:

- [Metric 1]
- [Metric 2]

### 8.2 AI Usage Monitoring

[GUIDANCE: Track AI usage to ensure appropriate disclosure.]

Monitoring Points:

- [What to monitor]

Tools:

- [Monitoring tool 1]
- [Monitoring tool 2]

### 8.3 Training and Awareness

[GUIDANCE: Who needs training on disclosure requirements and what they should learn.]

Required Training:

- [Audience 1]: [Training content]
- [Audience 2]: [Training content]

---

> RadioAstronomy.io Monitoring and Compliance:
>
> ### 8.1 Transparency Compliance Reviews
>
> Frequency: Quarterly
>
> Process:
>
> 1. Review sample of published content for appropriate AI disclosure
> 2. Verify AI system inventory is current
> 3. Check stakeholder communications for transparency adequacy
> 4. Identify gaps or improvement opportunities
> 5. Document findings and corrective actions
>
> Metrics:
>
> - Percentage of AI-assisted content with required disclosures
> - Number of stakeholder questions about AI use (trend)
> - Number of retroactive disclosures required (lower is better)
> - Time to respond to transparency inquiries (target: <48 hours)
>
> ### 8.2 AI Usage Monitoring
>
> Track AI usage to ensure appropriate disclosure:
>
> Monitoring Points:
>
> - AI service usage logs (Gemini, Claude Max, Z.ai, local models)
> - Data classification of AI-processed content
> - Publications and releases involving AI
> - Stakeholder communications about AI
>
> Tools:
>
> - Google Workspace audit logs (Gemini usage)
> - Anthropic usage dashboard (Claude Max)
> - Z.ai usage logs (if available)
> - SIEM (local model access)
> - Git commits with AI-generated code tags
>
> ### 8.3 Training and Awareness
>
> Required Training:
>
> - All Personnel: AI disclosure requirements (annual)
> - Content Creators: Detailed disclosure formatting (onboarding + annual)
> - Researchers: Academic disclosure standards (onboarding)
> - Engineers: Code disclosure best practices (onboarding)
>
> Training Content:
>
> - When disclosure is required (thresholds)
> - How to disclose (formats and examples)
> - Training behavior disclosure (tool-specific requirements)
> - Where to get help (Security Lead contact)
> - Consequences of non-disclosure (policy violation)
>
> ---
>
> Why quarterly compliance reviews: Transparency violations happen slowly - one undisclosed AI use, then another, then it's culture. Quarterly spot-checks catch drift early. Sample recent publications, check for disclosure, document gaps, correct issues, update training. 2-3 hours quarterly prevents major compliance failures.

---

## 9. Regulatory Compliance

### 9.1 Framework Alignment

[GUIDANCE: Map this standard to regulatory frameworks you follow. Common frameworks: NIST AI RMF, Colorado SB-24-205, EU AI Act, academic publishing standards.]

[Framework Name]:

| Framework Requirement | Implementation in This Standard |
|----------------------|-------------------------------|
| [Requirement 1] | [Section where implemented] |
| [Requirement 2] | [Section where implemented] |

[Repeat for each framework]

---

> RadioAstronomy.io Regulatory Compliance:
>
> ### 9.1 NIST AI RMF Alignment
>
> This standard implements NIST AI RMF transparency and accountability principles:
>
> | NIST Principle | Implementation in This Standard |
> |----------------|-------------------------------|
> | Explainable and Interpretable | Section 4.2: Required disclosure elements explain AI's role |
> | Accountable and Transparent | Section 4.3: Format examples enable stakeholder understanding |
> | Valid and Reliable | Section 4.2.3: Human validation requirements |
> | Privacy-Enhanced | Section 7.2: Data privacy risk disclosure |
>
> ### 9.2 Colorado SB24-205 Compliance
>
> Colorado AI Act (SB24-205) requires transparency for high-risk AI systems:
>
> Requirements:
>
> - Disclosure of AI use in consequential decisions
> - Notice to affected parties
> - Explanation of AI's role in decision process
>
> Implementation:
>
> - High-risk AI systems (per STD-001 assessment) receive enhanced disclosure (Section 4.1: increase disclosure level)
> - Stakeholders affected by AI decisions receive notification (Section 6)
> - Disclosure includes AI purpose, scope, validation, and limitations (Section 4.2)
>
> ### 9.3 Academic Publishing Standards
>
> Many journals and conferences require AI disclosure:
>
> Common Requirements:
>
> - Disclose AI use in methods section
> - Identify specific tools used
> - Explain validation process
> - Declare no conflicts of interest related to AI vendors
>
> RadioAstronomy.io Approach:
>
> - Exceeds minimum disclosure requirements
> - Proactively discloses even when not required
> - Maintains consistency across publications
> - Documents compliance for each publication

---

## 10. Roles and Responsibilities

[GUIDANCE: Define who owns transparency compliance, who creates disclosures, who reviews, who responds to stakeholder questions.]

### 10.1 [Role 1 - e.g., Document Owner]

Responsibilities:

- [Responsibility 1]
- [Responsibility 2]

[Repeat for key roles]

---

> RadioAstronomy.io Roles:
>
> ### 10.1 CTO (Document Owner)
>
> Responsibilities:
>
> - Maintain this standard and approve updates
> - Review disclosure waivers and exceptions
> - Oversee transparency compliance program
> - Respond to policy-level stakeholder concerns
> - Represent organizational transparency posture externally
>
> ### 10.2 Security Lead
>
> Responsibilities:
>
> - Conduct quarterly transparency compliance reviews
> - Advise personnel on disclosure requirements
> - Monitor AI usage for disclosure compliance
> - Track stakeholder questions and concerns
> - Report compliance metrics to CTO
>
> ### 10.3 Content Creators (All Personnel)
>
> Responsibilities:
>
> - Disclose AI use per this standard's requirements
> - Maintain project-level AI usage documentation
> - Validate AI outputs before publication/release
> - Respond to stakeholder questions about own work
> - Escalate disclosure questions to Security Lead
>
> ### 10.4 System Owners
>
> Responsibilities:
>
> - Ensure AI systems have appropriate transparency documentation
> - Update AI system inventory when systems change
> - Coordinate disclosure for multi-stakeholder systems
> - Document transparency considerations in system design

---

## 11. References

[GUIDANCE: Link to internal and external documents that inform this standard.]

### Internal Documents

- [Internal doc 1]
- [Internal doc 2]

### External Standards

- [External framework 1]
- [External framework 2]

### Academic Guidance

- [Guidance source 1]
- [Guidance source 2]

---

> RadioAstronomy.io References:
>
> ### Internal Documents
>
> - POL-001: AI Governance Policy
> - STD-001: AI Risk Assessment & Management Standard
> - STD-003: Secure AI Systems Standard
> - AUP-001: AI Acceptable Use Policy
>
> ### External Standards
>
> - NIST AI Risk Management Framework (AI RMF 1.0)
> - Colorado SB24-205 (Artificial Intelligence Act)
> - Montreal Declaration for Responsible AI
> - IEEE 7010-2020: Transparency of Autonomous Systems
>
> ### Academic Guidance
>
> - ACM Conference on Fairness, Accountability, and Transparency (ACM FAccT)
> - Partnership on AI: Guidelines for Responsible AI
> - Academic journal AI disclosure policies (varies by journal)

---

## 12. Appendices

### Appendix A: Disclosure Templates

[GUIDANCE: Provide copy-paste templates for common disclosure scenarios. Templates reduce friction - people more likely to disclose properly if template exists.]

#### Template A1: [Content Type 1]

```markdown
[Template content]
```

[Repeat for common content types]

### Appendix B: Disclosure Decision Flowchart

[GUIDANCE: Visual decision tree helping people determine disclosure requirements.]

```markdown
[Flowchart showing decision process]
```

### Appendix C: Common Disclosure Mistakes and Corrections

[GUIDANCE: Table of common errors with corrections. Learn from others' mistakes.]

| Mistake | Why It's a Problem | Correction |
|---------|-------------------|------------|
| [Mistake 1] | [Problem] | [Fix] |
| [Mistake 2] | [Problem] | [Fix] |

---

> RadioAstronomy.io Appendices:
>
> ### Appendix A: Disclosure Templates
>
> #### Template A1: Research Paper Methods Section
>
> ```markdown
> ## AI-Assisted Methodology
> 
> This research employed [AI Tool Name] for [specific purpose]. 
> 
> AI Contribution:
> - [Specific task 1]: [Brief description and percentage if known]
> - [Specific task 2]: [Brief description and percentage if known]
> 
> Human Oversight:
> - [Validation method 1]: [Who validated and how]
> - [Validation method 2]: [Who validated and how]
> 
> Limitations:
> - [Known limitation 1]: [Mitigation approach]
> - [Known limitation 2]: [Mitigation approach]
> 
> Training Behavior: [Tool trains/doesn't train on data]
> 
> All final conclusions and interpretations are the work of the human research team.
> ```
>
> #### Template A2: Code Repository README
>
> ```markdown
> # [Project Name]
> 
> ## AI Disclosure
> 
> This project includes AI-assisted development:
> 
> - Tool: [AI tool name and version]
> - AI Contribution: [~X% or description of AI-generated portions]
> - Human Contribution: [What humans authored]
> - Review Process: [How AI outputs were validated]
> - Training Behavior: [Tool training disclosure]
> 
> AI-generated code sections are marked with inline comments:
> \`\`\`
> # AI-GENERATED: [Tool] (reviewed by [name])
> \`\`\`
> ```
>
> #### Template A3: Blog Post Footer
>
> ```markdown
> ---
> 
> *AI Disclosure: This post was written with assistance from [AI Tool]. The author provided the outline and key ideas; AI helped expand and refine the text. All content reviewed and approved by the author.*
> ```
>
> ### Appendix B: Disclosure Decision Flowchart
>
> ```markdown
> START: Did you use AI?
> 
> ├─ NO → No disclosure required
> │
> └─ YES → Continue
> 
> ├─ What was the AI contribution level?
> │  ├─ Minimal (<10%: spell-check, grammar) → No disclosure required (optional to mention)
> │  ├─ Moderate (10-40%: suggestions, assistance) → BASIC DISCLOSURE
> │  ├─ Substantial (40-80%: significant generation) → DETAILED DISCLOSURE
> │  └─ AI-Primary (>80%: mostly AI-generated) → COMPREHENSIVE DISCLOSURE
> │
> ├─ Could limitations materially affect conclusions?
> │  └─ YES → Increase disclosure level by one tier
> │
> ├─ Is this high-stakes content (publication, funding, public-facing)?
> │  └─ YES → Increase disclosure level by one tier
> │
> ├─ Would stakeholders reasonably expect to know?
> │  └─ YES → Ensure appropriate disclosure
> │
> └─ RESULT: Apply disclosure requirements per Section 4.1-4.3
> ```
>
> ### Appendix C: Common Disclosure Mistakes and Corrections
>
> | Mistake | Why It's a Problem | Correction |
> |---------|-------------------|------------|
> | "AI helped with this" (vague) | Doesn't identify tool or scope | "Gemini 2.5 Pro generated initial draft; human author restructured and validated" |
> | Disclosing after stakeholder inquiry | Reactive rather than proactive | Disclose at time of publication |
> | Over-disclosure (AI spell-checked doc) | Creates disclosure fatigue | Reserve disclosure for material AI contributions (>10%) |
> | Under-disclosure (AI wrote 50% of code, not disclosed) | Transparency violation | Disclose substantial AI contributions in README |
> | "AI was used but outputs are validated" (defensive tone) | Sounds like justification | "AI assisted; validated by [expert]" (neutral, factual) |
> | Tool name wrong (e.g., "ChatGPT" when used Gemini) | Factual error | Verify and correct tool identification |
> | No mention of training behavior for tools that train | Missing critical transparency element | Add training disclosure per tool requirements |
> | Disclosure in obscure location | Hard for stakeholders to find | Place in standard location (methods, README, header) |
>
> ---
>
> Why templates matter: "How do I disclose this?" shouldn't require research. Copy template, fill blanks, done. Reduces friction, increases compliance, ensures consistency. We maintain templates for all common scenarios - research papers, code, docs, blog posts, presentations.
>
> Why mistake catalog matters: Learn from our errors and others'. Each mistake documented here represents real incident or near-miss. "We don't disclose spell-check" isn't obvious until someone wastes time disclosing it. "Tool name must be specific" learned after vague "AI" disclosures confused reviewers.

---

## Document Approval

Document Owner: [Role]  
Effective Date: [YYYY-MM-DD]

Acknowledgment Required: All personnel must acknowledge this standard within [N] days of effective date.

Acknowledgment Statement:
"I have read and understood the AI Transparency & Disclosure Standard. I agree to disclose AI involvement in my work per the requirements of this standard and will seek clarification from [designated role] if I have questions about disclosure requirements."

---

> RadioAstronomy.io Document Approval:
>
> Document Owner: CTO  
> Effective Date: 2025-10-26
>
> Acknowledgment Required: All personnel must acknowledge this standard within 30 days of effective date.
>
> Acknowledgment Statement:
> "I have read and understood the AI Transparency & Disclosure Standard v1.1. I agree to disclose AI involvement in my work per the requirements of this standard and will seek clarification from the Security Lead if I have questions about disclosure requirements."

---

End of Document
