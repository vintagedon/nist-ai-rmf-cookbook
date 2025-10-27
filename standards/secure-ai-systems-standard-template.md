# Secure AI Systems Standard Template

Document ID: [STD-XXX]  
Version: [x.x]  
Effective Date: [YYYY-MM-DD]  
Last Updated: [YYYY-MM-DD]  
Document Owner: [Role]  
Review Cycle: [Annual/Quarterly]  
Status: [Active/Draft]

[GUIDANCE: This standard defines technical security controls for AI systems - how to protect data in AI workflows, secure AI infrastructure, prevent unauthorized access, detect incidents. Unlike policies (which set rules) or transparency standards (which define disclosure), this is the "how to secure AI" playbook. Map your data classification tiers to AI tools, define access controls, establish monitoring, document incident response.]

---

> RadioAstronomy.io Implementation:
>
> Document ID: STD-003  
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
> | 1.0 | 2025-01-15 | CTO | Initial standard based on NIST AI RMF |
> | 1.1 | 2025-10-26 | CTO | SECURITY CORRECTION: Fixed Protected data controls (removed Gemini from Protected tier), removed all unapproved OpenAI references, updated to 4-tier data classification, added Z.ai with training constraint, added two new risk scenarios. Re-acknowledgment required. |
>
> ---
>
> Why this is a security document: IT professionals and citizen scientists managing on-prem clusters need operational security, not theoretical frameworks. This standard maps our 4-tier data classification to actual AI tools (Gemini, Claude Max, Z.ai, local Llama), defines which tools can touch which data, establishes technical controls preventing Protected data from reaching cloud AI that trains on it, and documents incident response for when controls fail. Version 1.1 corrected critical error - Gemini was incorrectly listed for Protected data in v1.0; v1.1 restricts Protected to Claude Max (Kasm-isolated) and local models only.

---

## Table of Contents

1. Purpose
2. Scope
3. Data Classification & AI Tool Mapping
4. Access Control
5. Data Handling
6. Model Security
7. Logging and Monitoring
8. Incident Response
9. Third-Party AI Services
10. Risk Scenarios and Controls
11. Compliance Mapping
12. References
13. Appendices

---

## 1. Purpose

This standard establishes security requirements for AI systems deployed or used within [Organization] operations. It ensures:

- Confidentiality of organizational data processed by AI systems
- Integrity of AI models and their outputs
- Availability of AI services for authorized personnel
- Compliance with [frameworks - e.g., NIST AI RMF, CIS Controls, ISO standards]

This standard applies to:

- Commercial AI services (cloud-based APIs and platforms)
- Self-hosted AI models (on-premises or private cloud)
- AI development and deployment infrastructure
- Data used to train, fine-tune, or prompt AI systems

---

> RadioAstronomy.io Purpose:
>
> This standard establishes security requirements for AI systems deployed or used within RadioAstronomy.io operations. It ensures:
>
> - Confidentiality of organizational data processed by AI systems
> - Integrity of AI models and their outputs
> - Availability of AI services for authorized personnel
> - Compliance with NIST AI RMF, CIS Controls v8, ISO 31000:2018, and Colorado SB24-205
>
> This standard applies to:
>
> - Commercial AI services (cloud-based APIs and platforms)
> - Self-hosted AI models (on-premises or private cloud)
> - AI development and deployment infrastructure
> - Data used to train, fine-tune, or prompt AI systems

---

## 2. Scope

### 2.1 In Scope

AI Systems:
[List your AI systems - LLMs, computer vision, ML models, development tools]

Infrastructure:
[AI model serving infrastructure, API gateways, data storage, network paths]

Personnel:
[Who this applies to - employees, contractors, third-party developers]

### 2.2 Out of Scope

[What's covered elsewhere - general IT security, non-AI systems, HR policies]

### 2.3 Related Policies

[Map to other governance documents]

---

> RadioAstronomy.io Scope:
>
> ### 2.1 In Scope
>
> AI Systems:
>
> - Large Language Models (LLMs) used for code generation, documentation, analysis
> - Computer vision models for astronomical image processing
> - Natural language processing tools
> - Machine learning models for data analysis and prediction
> - AI-powered development tools and assistants
>
> Infrastructure:
>
> - AI model serving infrastructure (proj-gpu01, agents01)
> - API gateways and authentication systems
> - Data storage systems used by AI workflows
> - Network paths between users and AI services
>
> Personnel:
>
> - All employees, contractors, and authorized users of RadioAstronomy.io AI systems
> - Third-party developers with API access
> - AI system administrators and operators
>
> ### 2.2 Out of Scope
>
> - General IT security policies (covered in separate IT Security Policy)
> - Non-AI data processing systems
> - Personnel hiring and background checks (covered in HR policies)
> - Physical security of facilities (covered in Physical Security Policy)
>
> ### 2.3 Related Policies
>
> - POL-001: AI Governance Policy (overarching framework)
> - STD-001: AI System Assessment Standard (risk assessment methodology)
> - STD-004: AI Transparency & Disclosure Standard (transparency requirements)
> - AUP-001: AI Acceptable Use Policy (user behavior and data classification)

---

## 3. Data Classification & AI Tool Mapping

[GUIDANCE: This is the core security control. Map your data classification tiers to approved AI tools. Define which tools can process which data types. Be explicit about training behavior - does the tool train on submitted data? Critical for preventing intellectual property leakage or compliance violations.]

### 3.1 Data Classification Tiers

[Tier 1 Name - e.g., Public]:

- Definition: [What data belongs here]
- Examples: [Concrete examples]
- Approved AI Tools: [Which tools can process this data]
- Prohibited AI Tools: [Which tools cannot, and why]

[Repeat for each tier]

### 3.2 AI Tool Security Matrix

[GUIDANCE: Create table mapping tools to permitted data classifications, training behavior, access controls, and key constraints]

| AI Tool | Permitted Data Classifications | Training Behavior | Access Control | Key Constraints |
|---------|-------------------------------|-------------------|----------------|-----------------|
| [Tool 1] | [Classifications] | [Trains/Opt-out/Air-gapped] | [Who has access] | [Important limits] |
| [Tool 2] | [Classifications] | [Trains/Opt-out/Air-gapped] | [Who has access] | [Important limits] |

### 3.3 Classification Decision Framework

[GUIDANCE: Provide simple rules for when people are uncertain which classification applies]

---

> RadioAstronomy.io Data Classification & Tool Mapping:
>
> ### 3.1 Data Classification Tiers
>
> Tier 1: Public-Internal
>
> - Definition: Information created by RadioAstronomy.io, intended for public disclosure, under our control
> - Examples: Published papers, public repos we own, released documentation, blog posts
> - Approved AI Tools: Gemini, Claude Max, local Llama models (training opt-out tools)
> - Prohibited AI Tools: Z.ai (we prefer training opt-out for our intellectual output before publication)
> - Rationale: Our work product before release - training opt-out preserves IP until we choose to publish
>
> Tier 2: Public-External
>
> - Definition: Astronomy and data science research code, scientific analysis workflows, external community repositories where training on data is acceptable
> - Examples: Astronomy analysis pipelines, data processing scripts, scientific computation code, external GitHub repos, community open-source projects
> - Approved AI Tools: Z.ai (trains on data but acceptable for research code), Gemini, Claude Max, local Llama models
> - Prohibited AI Tools: None - this tier explicitly permits tools that train on data
> - Rationale: Research code will be published; training on it is acceptable. Enables Z.ai's value for astronomy code review without IP concerns
>
> Tier 3: Protected
>
> - Definition: Internal information requiring confidentiality, not approved for public disclosure
> - Examples: Research drafts, internal documentation, proprietary code, infrastructure configurations, collaboration agreements, strategic plans
> - Approved AI Tools: Claude Max via Kasm isolation (CTO only), local Llama models (all personnel)
> - Prohibited AI Tools: Gemini (no DLP on standard access), Z.ai (trains on data)
> - Rationale: Protected data requires inside-perimeter controls with technical enforcement. Kasm workspace provides DLP (clipboard restrictions, download blocking). Local models are air-gapped
>
> Tier 4: Secrets
>
> - Definition: Credentials, keys, tokens, personally identifiable information, legally protected data
> - Examples: API keys, passwords, OAuth tokens, SSH keys, database credentials, personal information, financial data
> - Approved AI Tools: NONE - never input into any AI system including local models
> - Prohibited AI Tools: ALL AI tools
> - Handling: Use secrets management systems (Google Secrets Manager, Vault, environment variables, encrypted configuration)
> - Rationale: Even air-gapped local models log prompts; secrets in logs create exposure risk. Use proper secrets management, never AI tools
>
> ### 3.2 AI Tool Security Matrix
>
> | AI Tool | Permitted Data Classifications | Training Behavior | Access Control | Key Constraints |
> |---------|-------------------------------|-------------------|----------------|-----------------|
> | Google Gemini 2.5 Pro | Public-Internal, Public-External | Training opt-out enabled | All personnel via Google Workspace (SSO + YubiKey MFA) | NOT for Protected data (no DLP on standard access). NOT for Secrets (never). |
> | Anthropic Claude Sonnet 4.5 | Public-Internal, Public-External, Protected | Training opt-out enabled | CTO only | Protected data ONLY via Kasm workspace isolation (DLP enforced). NOT for Secrets (never). |
> | Z.ai GLM-4.6 | Public-External ONLY | Trains on all submitted data | Engineer role only (RBAC + domain restriction) | ONLY for astronomy/data science research code. NOT for Public-Internal (our IP). NOT for Protected (confidential). NOT for Secrets (never). |
> | Meta Llama 3.1 8B (local) | Public-Internal, Public-External, Protected | Air-gapped (no external transmission) | All personnel (AD auth + NetBird ZTNA) | NOT for Secrets (logs still capture prompts). |
>
> ### 3.3 Classification Decision Framework
>
> When uncertain:
>
> - Unsure between Public-Internal and Protected? → Treat as Protected
> - Unsure between Public-Internal and Public-External? → If we created/control it AND haven't published → Public-Internal
> - Unsure if something is a Secret? → Treat as Secret
> - Before downgrading Protected to Public? → Get explicit approval from data owner
>
> For Z.ai usage:
>
> - Is this our infrastructure code? → Public-Internal → DON'T use Z.ai
> - Is this astronomy/data science research code? → Public-External → Z.ai acceptable
> - Is this from external repo/community? → Public-External → Z.ai acceptable
> - Still unsure? → DON'T use Z.ai, use Gemini or Claude Max instead
>
> For Protected data:
>
> - Need AI assistance with Protected data? → Claude Max via Kasm (CTO only) OR local Llama models
> - Never Gemini (no DLP), never Z.ai (trains on data)
>
> ---
>
> Why 4-tier vs. 3-tier: Most orgs use Public/Internal/Secret. We need Public-Internal (our stuff, training opt-out) vs. Public-External (research code, training OK) because Z.ai trains on everything. This nuance prevents accidentally training Z.ai on infrastructure code while enabling its value for astronomy code review. Tier 2 (Public-External) is the Z.ai safe zone.
>
> Why Gemini not approved for Protected: Standard Google Workspace access lacks DLP technical enforcement. Protected data requires Kasm workspace isolation (clipboard restrictions, download blocking, watermarking). Claude Max via Kasm provides this; Gemini standard access doesn't. This was v1.0 error - corrected in v1.1.
>
> Why Secrets tier prohibits even local models: Local models are air-gapped but they log prompts. "How do I connect to prod database?" with password in prompt = password in logs. Use secrets management, never AI (including local). This is zero-tolerance.

---

## 4. Access Control

[GUIDANCE: Define who can use which AI tools, how access is provisioned, authentication requirements, role-based access controls. Map access permissions to data classification - more sensitive data = more restrictive access.]

### 4.1 Authentication Requirements

[Tool/System 1]:

- Authentication Method: [SSO, API keys, etc.]
- MFA Requirement: [Yes/No and method]
- Session Management: [Timeout, re-authentication]

[Repeat for each tool/system]

### 4.2 Role-Based Access Control (RBAC)

[GUIDANCE: Define roles and their AI tool access permissions]

| Role | Approved AI Tools | Data Classification Access | Justification |
|------|------------------|---------------------------|---------------|
| [Role 1] | [Tools] | [Classifications] | [Why this access] |
| [Role 2] | [Tools] | [Classifications] | [Why this access] |

### 4.3 Access Provisioning and Revocation

[GUIDANCE: How people get access, how access is removed, review cycle]

---

> RadioAstronomy.io Access Control:
>
> ### 4.1 Authentication Requirements
>
> Google Gemini (via Google Workspace):
>
> - Authentication Method: Google SSO via Workspace
> - MFA Requirement: YubiKey hardware token (FIDO2) - mandatory for all Workspace accounts
> - Session Management: Google Workspace session policies (8-hour timeout, re-authentication for sensitive operations)
> - Network Access: Available from any network (Gemini runs in Google cloud)
>
> Anthropic Claude Max:
>
> - Authentication Method: Anthropic account with email verification
> - MFA Requirement: Not enforced by Anthropic, but account access controlled by CTO's Google Workspace SSO (which has YubiKey MFA)
> - Session Management: Anthropic default session handling
> - Network Access:
>   - Standard usage: Available from any network
>   - Protected data usage: ONLY via Kasm workspace (NetBird ZTNA tunnel required)
>
> Z.ai GLM-4.6:
>
> - Authentication Method: OAuth restricted to @radioastronomy.io domain
> - MFA Requirement: Inherited from Google Workspace SSO (YubiKey required)
> - Session Management: Z.ai default with 24-hour OAuth token expiration
> - Network Access: Available from any network (Z.ai runs in cloud)
> - RBAC: Engineer role assignment via Google Workspace groups
>
> Local Llama 3.1 8B (proj-gpu01):
>
> - Authentication Method: Active Directory credentials
> - MFA Requirement: Not currently enforced for local network access (NetBird ZTNA provides device auth)
> - Session Management: SSH session timeout after 1 hour idle
> - Network Access: ONLY via NetBird ZTNA mesh network (cannot access from public internet)
>
> ### 4.2 Role-Based Access Control (RBAC)
>
> | Role | Approved AI Tools | Data Classification Access | Justification |
> |------|------------------|---------------------------|---------------|
> | All Personnel | Gemini, Local Llama | Public-Internal, Public-External, Protected (Llama only) | Gemini as universal base tool; local Llama for Protected work |
> | CTO | Gemini, Claude Max, Local Llama | All except Secrets | CTO requires access to Protected data (via Claude Max in Kasm); quality work justifies Claude Max cost |
> | Engineer Role | All tools including Z.ai | Z.ai: Public-External only; Others per All Personnel | Engineer role distinguished for astronomy/data science work where Z.ai training acceptable |
>
> Role Assignment:
>
> - All Personnel: Automatic upon Google Workspace account creation
> - CTO: Explicit assignment (single person)
> - Engineer Role: Google Workspace group membership assigned by CTO based on job function
>
> ### 4.3 Access Provisioning and Revocation
>
> Provisioning Process:
>
> 1. New personnel onboarded to Google Workspace with YubiKey
> 2. Gemini access automatic via Workspace
> 3. Local Llama access provisioned via Active Directory (linked to Workspace)
> 4. Z.ai access requires CTO approval + Engineer role assignment
> 5. Claude Max access CTO only (no provisioning process for others)
>
> Access Review:
>
> - Quarterly review of Google Workspace accounts and group memberships
> - CTO reviews Engineer role assignments for continued appropriateness
> - Orphaned accounts identified and removed
>
> Revocation Process:
>
> 1. Departure triggers Google Workspace account suspension
> 2. Gemini access revoked immediately (Workspace tied)
> 3. Z.ai OAuth tokens revoked (domain restriction)
> 4. Active Directory account disabled (local Llama access removed)
> 5. NetBird device authorization removed (network access revoked)
> 6. 30-day grace period for data export requests, then full deletion
>
> Emergency Revocation:
>
> - Security incident or policy violation → immediate account suspension
> - CTO can suspend Workspace account instantly (cascades to Gemini, Z.ai)
> - Local system access disabled via AD/NetBird within 15 minutes
>
> ---
>
> Why YubiKey mandatory: Password-only auth insufficient for enterprise AI tools with access to Public-Internal data. Hardware MFA (FIDO2) prevents phishing, credential stuffing. All personnel get YubiKey during onboarding - non-negotiable.
>
> Why CTO-only Claude Max: Cost ($100/mo vs. $0 marginal for Gemini) and capability justify restriction. Claude Max quality needed for high-stakes documentation and Protected data work (via Kasm). Not worth $500/mo to give all 5 people access.
>
> Why Engineer role gets Z.ai: Not everyone does astronomy/data science research code. Infrastructure engineers work on Public-Internal code (no Z.ai). Research engineers work on Public-External astronomy code (Z.ai acceptable). RBAC distinction prevents accidental Z.ai use on wrong code type.

---

## 5. Data Handling

[GUIDANCE: How to handle data throughout AI workflows - input validation, data minimization, output sanitization, retention, destruction. Prevent data leakage at every stage.]

### 5.1 Input Data Validation

[GUIDANCE: Check data classification before AI processing]

Requirements:

- [Validation step 1]
- [Validation step 2]

Prohibited Inputs:

- [What cannot be processed]

### 5.2 Data Minimization

[GUIDANCE: Only process necessary data, redact sensitive information]

Principles:

- [Minimization principle 1]
- [Minimization principle 2]

### 5.3 Output Handling

[GUIDANCE: Sanitize AI outputs before use, validate accuracy]

Requirements:

- [Output handling step 1]
- [Output handling step 2]

### 5.4 Data Retention and Destruction

[GUIDANCE: How long to keep AI inputs/outputs, secure deletion]

---

> RadioAstronomy.io Data Handling:
>
> ### 5.1 Input Data Validation
>
> Pre-Processing Checks (User Responsibility):
>
> - Verify data classification before submitting to any AI tool
> - Scan for Secrets (API keys, passwords, tokens, PII) → If found, STOP, use secrets management instead
> - For Z.ai: Confirm data is Public-External (not Public-Internal infrastructure code)
> - For Gemini: Confirm data is NOT Protected (no DLP on standard access)
>
> Prohibited Inputs (All AI Tools Including Local):
>
> - Credentials, API keys, passwords, SSH keys, OAuth tokens
> - Personally identifiable information (PII): names, emails, SSNs, addresses
> - Financial data: credit card numbers, bank accounts
> - Health information: medical records, diagnoses
> - Legally protected data: attorney-client communications, personnel records
>
> Validation Tools:
>
> - Pre-commit hooks scan repositories for leaked secrets (gitleaks)
> - Manual review required for high-consequence AI processing (policy drafts, security configs)
>
> ### 5.2 Data Minimization
>
> Principles:
>
> - Include only data necessary for AI task
> - Redact or anonymize unnecessary identifiers
> - Use examples and templates rather than real production data when possible
> - Prefer summary/aggregate data over raw detailed data
>
> Examples:
>
```markdown
> ❌ Bad: "Here's our entire prod database schema with table names, column types, and sample data including usernames"
> ✅ Good: "Here's an anonymized schema with generic table names and redacted sensitive columns"
>
> ❌ Bad: "Review this config file [containing API keys and database passwords]"
> ✅ Good: "Review this config file [with secrets replaced by placeholders: API_KEY=<redacted>]"
> ```
>
> ### 5.3 Output Handling
>
> Validation Requirements:
>
> - All AI outputs must be reviewed by qualified human before use in production or publication
> - Factual claims validated against authoritative sources (not trust AI memory)
> - Code outputs tested, linted, security-scanned before deployment
> - Statistical analysis independently verified
>
> Output Sanitization:
>
> - Review AI outputs for inadvertent data leakage (did AI memorize and regurgitate sensitive info?)
> - Check for hallucinated citations, facts, or code patterns
> - Validate compliance with organizational standards (coding style, documentation format)
>
> Prohibited Actions:
>
> - Never use AI output in production without human review
> - Never trust AI-generated citations without verification
> - Never deploy AI-generated security-critical code without security review
>
> ### 5.4 Data Retention and Destruction
>
> Cloud AI Service Logs (Gemini, Claude Max, Z.ai):
>
> - Vendor retains interaction logs per their policies (Google: ephemeral for Gemini with training opt-out; Anthropic: training opt-out; Z.ai: trains on data)
> - We do NOT have deletion control for cloud service logs
> - Mitigation: Data classification enforcement prevents Protected/Secret data from reaching cloud services
>
> Local AI Service Logs (Llama 3.1 8B):
>
> - Prompt/response logs retained on proj-gpu01 for 90 days
> - Logs reviewed quarterly for Secrets that shouldn't be present
> - Secure deletion after retention period (shred/overwrite, not just rm)
>
> AI-Generated Artifacts:
>
> - Retained per organizational data retention policy (typically 5 years for compliance)
> - Version control (git) provides audit trail
> - Secure deletion when project archived (not just deletion from active systems)
>
> ---
>
> Why input validation user responsibility: We're 5 people, can't build automated DLP for every workflow. Users trained on data classification, responsible for checking before AI submission. Technical enforcement at perimeter (Kasm DLP for Claude Max Protected access, AD/NetBird auth for local models) but input validation is human responsibility.
>
> Why output validation mandatory: AI hallucinates. AI generates plausible but wrong code. AI creates insecure patterns. "AI said so" is not validation. Human domain expert review required before AI output used for anything consequential - no exceptions.
>
> Why 90-day log retention: Balances incident investigation needs (need logs to understand what happened) against exposure risk (logs might capture Secrets despite policy violation). 90 days sufficient for incident response, quarterly review catches policy violations before logs age out.

---

## 6. Model Security

[GUIDANCE: Securing the AI models themselves - access control, versioning, model poisoning prevention, supply chain security for models/weights]

### 6.1 Model Access Control

[GUIDANCE: Who can modify models, deploy models, access model weights]

### 6.2 Model Versioning and Integrity

[GUIDANCE: Track model versions, verify model integrity, prevent tampering]

### 6.3 Model Supply Chain Security

[GUIDANCE: Verify model provenance, scan for backdoors, validate model sources]

---

> RadioAstronomy.io Model Security:
>
> ### 6.1 Model Access Control
>
> Commercial AI Services (Gemini, Claude Max, Z.ai):
>
> - No direct model access (vendor-managed SaaS)
> - Control via API authentication and authorization
> - No fine-tuning or model modification capabilities
> - Risk: Vendor compromise or model poisoning (mitigated by vendor trust + training opt-out for Gemini/Claude)
>
> Local Models (Llama 3.1 8B on proj-gpu01):
>
> - Model weights stored on proj-gpu01: `/opt/models/llama-3.1-8b/`
> - File permissions: root:ai-admins, 640 (read-only for ai-admins group, no world access)
> - Model modification requires root access (CTO + Operations Lead only)
> - Model deployment requires documented change control (ADR + approval)
> - NetBird ZTNA restricts network access to authorized devices
>
> ### 6.2 Model Versioning and Integrity
>
> Local Model Versioning:
>
> - Models tracked in git-lfs (version control for large files)
> - SHA256 checksums verified on model download and deployment
> - Model metadata recorded: source, download date, verification hash, deployment date
>
> Integrity Verification:
>
> ```bash
> # Model integrity check (performed on deployment and monthly)
> sha256sum /opt/models/llama-3.1-8b/model.safetensors
> # Compare against known-good hash from Meta's official release
> ```
>
> Version Change Process:
>
> 1. New model version released by Meta
> 2. Operations Lead downloads to staging environment
> 3. SHA256 hash verification against Meta's published hash
> 4. Sandbox testing (functionality, performance, output quality)
> 5. ADR documenting change rationale and validation results
> 6. CTO approval
> 7. Production deployment via Ansible playbook
> 8. 48-hour monitoring for anomalies
> 9. Rollback available (previous version retained for 30 days)
>
> ### 6.3 Model Supply Chain Security
>
> Model Sourcing Policy:
>
> - ONLY use models from verified sources:
>   - Meta AI official releases (Llama models)
>   - Hugging Face verified publishers
>   - Other reputable model hubs with verification
> - Prohibit: Random GitHub repos, unverified Discord links, torrent downloads
>
> Model Validation:
>
> - Verify publisher identity (official Meta AI account, Hugging Face verified badge)
> - Check model card for licensing, intended use, known limitations
> - Review community security issues and CVE reports
> - Validate cryptographic signatures when provided
>
> Supply Chain Attack Mitigation:
>
> - SHA256 hash verification prevents tampering in transit
> - Sandbox testing detects obviously malicious behavior
> - Air-gapped deployment prevents exfiltration (local model never touches internet)
> - Model immutability (read-only permissions) prevents post-deployment tampering
>
> Third-Party Dependencies:
>
> - PyTorch, Transformers library, other ML dependencies tracked in requirements.txt
> - Dependency vulnerability scanning via pip-audit
> - Pin versions to prevent supply chain attacks via dependency updates
>
> ---
>
> Why model integrity verification matters: Downloaded 50GB model file - how do you know it's legitimate Meta Llama 3.1 8B and not backdoored version with exfiltration logic? SHA256 hash verification against Meta's official hash proves integrity. Without this, local "air-gapped" model could be compromised before deployment.
>
> Why change control for model updates: New Llama version released - should we upgrade? Model updates can introduce: behavior changes (what was safe output may now be problematic), performance regressions, new vulnerabilities. Sandbox test, document rationale, get approval, rollback plan. Not "latest model always better."
>
> Why supply chain sourcing restrictions: Model supply chain attacks are real. Compromised model can exfiltrate data, inject backdoors into generated code, or provide subtly manipulated outputs. Verified sources only (official Meta, Hugging Face verified publishers). Random GitHub repo with "totally legit Llama weights trust me" = NO.

---

## 7. Logging and Monitoring

[GUIDANCE: What to log, how to monitor AI usage, detect anomalies, investigate incidents]

### 7.1 Logging Requirements

[GUIDANCE: What events must be logged]

Required Logs:

- [Log type 1]
- [Log type 2]

Log Contents:

- [What information to capture]

Log Retention:

- [Duration]

### 7.2 Monitoring and Alerting

[GUIDANCE: What to monitor, alert thresholds, escalation]

Monitoring Points:

- [Metric 1]
- [Metric 2]

Alert Conditions:

- [Condition triggering alert]

### 7.3 Audit and Review

[GUIDANCE: Periodic review of logs, access patterns, usage trends]

---

> RadioAstronomy.io Logging and Monitoring:
>
> ### 7.1 Logging Requirements
>
> Google Workspace Audit Logs (Gemini):
>
> - Events Logged:
>   - Gemini usage (per-user activity)
>   - Google Drive access (data accessed via Workspace)
>   - Login events, MFA challenges, failed auth
> - Log Contents: Timestamp, user, device, IP address, activity type
> - Retention: Google Workspace default (6 months)
> - Access: CTO, Security Lead via Google Admin Console
>
> Anthropic Usage Dashboard (Claude Max):
>
> - Events Logged:
>   - API usage (CTO account only)
>   - Model calls, token usage
> - Log Contents: Timestamp, model, tokens, cost
> - Retention: Anthropic dashboard (rolling 90 days visible)
> - Access: CTO (account owner)
> - Limitation: No detailed prompt/response logs visible to us (privacy-preserving)
>
> Z.ai Usage Logs:
>
> - Events Logged: API calls, model usage
> - Log Contents: Timestamp, user (OAuth tied to Google Workspace), tokens
> - Retention: Z.ai backend (unknown, not exposed to customers)
> - Access: Limited visibility via Z.ai dashboard
>
> Local Llama 3.1 8B (proj-gpu01):
>
> - Events Logged:
>   - SSH authentication (via syslog)
>   - Model inference requests (timestamp, user, prompt hash, response length)
>   - System resource usage (GPU, memory)
> - Log Contents: User, timestamp, prompt (first 100 chars + hash), response length, processing time
> - Retention: 90 days on proj-gpu01, then archived to cold storage for 1 year
> - Access: CTO, Operations Lead, Security Lead
>
> Network Access Logs (NetBird ZTNA):
>
> - Events Logged:
>   - Device authentication to ZTNA mesh
>   - Connection attempts to proj-gpu01, agents01
>   - Access denials
> - Log Contents: Device ID, user, timestamp, source IP, destination, allowed/denied
> - Retention: 90 days in Graylog SIEM
> - Access: CTO, Operations Lead, Security Lead
>
> Critical: Secrets Logging Prevention
>
> - Local Llama logs only hash prompts (not full text) to prevent Secrets capture
> - Log review looks for API keys, passwords leaked to AI despite policy
> - Any detected Secrets in logs trigger immediate credential rotation + incident response
>
> ### 7.2 Monitoring and Alerting
>
> Monitoring Points:
>
> - Google Workspace: Unusual Gemini usage patterns (10x normal activity)
> - Google Workspace: Failed MFA challenges (3+ in 1 hour)
> - NetBird: Unauthorized device connection attempts
> - Local Llama: Excessive inference requests (>100/hour from single user)
> - Local Llama: GPU errors or model crashes
>
> Alert Conditions:
>
> - Failed MFA 3+ times in 1 hour → Email to Security Lead
> - Unauthorized device connection attempt → Email to CTO + Security Lead
> - Local model crash/error → Email to Operations Lead
> - Unusual AI usage (>10x baseline) → Email to Security Lead for investigation
>
> Alert Response:
>
> - Security Lead investigates within 24 hours (business hours) or 4 hours (critical severity)
> - Access suspension if policy violation suspected
> - Incident response process if compromise suspected
>
> ### 7.3 Audit and Review
>
> Quarterly Access Review:
>
> - Review Google Workspace accounts and AI tool access
> - Verify role assignments (Engineer role for Z.ai)
> - Check for orphaned accounts or inappropriate access
> - Document findings and remediation
>
> Monthly Log Review:
>
> - Sample Google Workspace audit logs for anomalies
> - Review local Llama logs for Secrets that shouldn't be present
> - Check NetBird access patterns for unauthorized attempts
> - Verify alerting rules are triggering appropriately
>
> Annual Security Assessment:
>
> - Comprehensive review of all AI security controls
> - Penetration testing of AI infrastructure (external firm)
> - Tabletop exercise for AI security incident
> - Policy/standard updates based on findings
>
> ---
>
> Why limited logging detail: Full prompt/response logging creates enormous exposure risk (what if Secrets leaked to AI? Now in logs.). Hash prompts, log metadata (user, timestamp, response length), enough for investigation without full text. Trade-off: incident forensics harder, but exposure risk lower.
>
> Why 90-day retention: Longer than typical incident detection window (days to weeks), short enough to limit exposure. Extended retention on cold storage for compliance, but 90 days hot for active monitoring. Quarterly review catches policy violations before logs rotate.
>
> Why monitoring thresholds: 10x normal usage = either legitimate burst (urgent project) or compromise. 3 failed MFA = targeted attack or user forgot token. Thresholds tuned to reduce alert fatigue while catching real incidents. Adjust based on false positive rate.

---

## 8. Incident Response

[GUIDANCE: What constitutes an AI security incident, how to detect, contain, remediate, learn from incidents]

### 8.1 Incident Classification

[GUIDANCE: Define incident severity levels]

Severity Levels:

- [Critical]: [Definition and examples]
- [High]: [Definition and examples]
- [Medium]: [Definition and examples]
- [Low]: [Definition and examples]

### 8.2 Incident Response Process

[GUIDANCE: Step-by-step response process]

Detection:
[How incidents are detected]

Containment:
[Immediate actions to limit damage]

Investigation:
[How to investigate root cause]

Remediation:
[How to fix the issue]

Post-Incident:
[Lessons learned, policy updates]

### 8.3 AI-Specific Incident Scenarios

[GUIDANCE: Common AI security incidents and responses]

---

> RadioAstronomy.io Incident Response:
>
> ### 8.1 Incident Classification
>
> Critical Severity:
>
> - Secrets (credentials, API keys, PII) submitted to any AI system
> - Protected data submitted to Gemini or Z.ai (no DLP enforcement)
> - Unauthorized access to local AI models or infrastructure
> - AI system compromise or malicious model deployment
> - Data exfiltration via AI systems
>
> High Severity:
>
> - Public-Internal data submitted to Z.ai (trains on our IP)
> - Unauthorized AI tool access (wrong role, unapproved tool)
> - Data classification violation (uncertain classification, processed anyway)
> - AI-generated output deployed to production without review
>
> Medium Severity:
>
> - AI tool misconfiguration (e.g., training opt-out not enabled)
> - Unauthorized device accessing AI infrastructure
> - Policy violation (user knowingly circumvented controls)
> - AI output quality issue (hallucination caused operational problem)
>
> Low Severity:
>
> - Policy clarification needed (user uncertain about classification)
> - Training gap identified (user didn't know rule)
> - Minor configuration drift (monitoring alert false positive)
>
> ### 8.2 Incident Response Process
>
> Detection:
>
> - Monitoring alerts (failed auth, unusual usage, access violations)
> - User self-report (realized mistake after processing)
> - Quarterly log review (discovered during audit)
> - Third-party notification (vendor alerts us)
>
> Containment (Critical/High Severity):
>
> 1. Immediate Actions (within 15 minutes):
>    - Suspend user account (Google Workspace, Active Directory)
>    - Revoke API tokens (Z.ai OAuth, any personal tokens)
>    - Block network access (NetBird device deauthorization)
>    - Notify CTO and Security Lead
>
> 2. Credential Rotation (if Secrets exposed):
>    - Rotate exposed credentials immediately (API keys, passwords, tokens)
>    - Update secrets management systems
>    - Verify rotation via connection testing
>    - Document rotated credentials and exposure window
>
> 3. Data Exposure Assessment:
>    - Identify what data was submitted to which AI tool
>    - Determine if data classification was violated
>    - Assess training risk (did Z.ai train on our IP? did cloud AI log it?)
>    - Document exposure scope and potential impact
>
> Investigation:
>
> 1. Root Cause Analysis:
>    - Interview user (or review logs if user unavailable)
>    - Determine: intentional violation, training gap, policy ambiguity, technical failure?
>    - Review related logs (auth, network, AI usage)
>    - Document timeline and decision points
>
> 2. Impact Assessment:
>    - Confidentiality: What data exposed? To whom? For how long?
>    - Integrity: Was data or model tampered with?
>    - Availability: Was service disrupted?
>    - Regulatory: Any compliance violations (SB-24-205, etc.)?
>
> Remediation:
>
> 1. Technical Remediation:
>    - Credential rotation completed
>    - Access controls strengthened (if weakness identified)
>    - Monitoring enhanced (add alerting for similar patterns)
>    - Configuration corrected (if misconfiguration contributed)
>
> 2. Policy Remediation:
>    - Policy clarification if ambiguity caused incident
>    - Training update if knowledge gap identified
>    - Process improvement if workflow contributed
>
> 3. Communication:
>    - Notify affected stakeholders if data exposure impacts external parties
>    - Regulatory notification if required (SB-24-205 breach disclosure)
>    - Internal communication (lessons learned to team)
>
> Post-Incident:
>
> 1. Incident Report:
>    - Document: what happened, why, who, when, impact, response, remediation
>    - Include timeline, root cause, lessons learned
>    - Store in secure incident response repository
>
> 2. Lessons Learned Review:
>    - What worked well in response?
>    - What could be improved?
>    - Policy/standard updates needed?
>    - Training updates needed?
>
> 3. Account Reinstatement (if applicable):
>    - Training completion required before reinstatement
>    - Enhanced monitoring for 90 days post-incident
>    - Escalation to CTO for repeated violations
>
> ### 8.3 AI-Specific Incident Scenarios
>
> Scenario 1: Secrets Leaked to AI
>
> - Example: User pastes API key into Gemini prompt asking "why won't this curl command work?"
> - Detection: Quarterly log review or user self-report
> - Containment: Rotate exposed credential immediately, suspend account, revoke AI tool access
> - Investigation: Was key used maliciously? How long exposed? What services affected?
> - Remediation: Rotate key, verify no unauthorized usage, retrain user on secrets management
> - Prevention: Enhanced pre-commit hooks, training emphasis on secrets handling
>
> Scenario 2: Protected Data to Gemini
>
> - Example: User submits internal infrastructure config to Gemini (no DLP enforcement on standard access)
> - Detection: User self-report or quarterly compliance review
> - Containment: Document exposure scope, assess what data reached Google
> - Investigation: Why wasn't Claude Max via Kasm used? Policy confusion? Convenience shortcut?
> - Remediation: Retrain on data classification, emphasize Protected → Claude Max (Kasm) or local Llama only
> - Prevention: Repeated emphasis in training, consider technical enforcement (harder for Gemini standard access)
>
> Scenario 3: Public-Internal Code to Z.ai
>
> - Example: Engineer uses Z.ai to review infrastructure deployment scripts (Public-Internal, not Public-External)
> - Detection: Code review finds AI disclosure indicating Z.ai used
> - Containment: Document what code exposed to Z.ai training
> - Investigation: Why wasn't Public-Internal vs Public-External distinction clear? Role confusion?
> - Remediation: Clarify classification for infrastructure code, retrain Engineer role on Z.ai constraints
> - Prevention: Repo tagging (Public-Internal vs Public-External), enhanced training on 4-tier system
>
> Scenario 4: AI Output Deployed Without Review
>
> - Example: AI-generated code deployed to production, contains security vulnerability
> - Detection: Security scan finds vulnerability, traced to AI-generated function
> - Containment: Rollback deployment, assess exposure window
> - Investigation: Why wasn't code reviewed? Time pressure? Overconfidence in AI?
> - Remediation: Mandatory code review enforcement, emphasize AI hallucination risk
> - Prevention: CI/CD gates require human review approval, security scanning
>
> ---
>
> Why credential rotation is immediate: Exposed secret = assume compromised until proven otherwise. Rotate within 15 minutes, not "let's investigate first then rotate." Investigation happens in parallel, not sequentially. Every minute of delay = minute attacker could exploit.
>
> Why account suspension automatic: Containment first, investigation second. Wrong account suspended? Reinstate quickly with apology. Right account suspended? Prevented further damage. Bias toward containment when Critical/High severity.
>
> Why post-incident training required: Incident response isn't punishment, it's learning. User made mistake = training gap exists. Fix gap before reinstatement. Enhanced monitoring for 90 days verifies correction.

---

## 9. Third-Party AI Services

[GUIDANCE: Security requirements for using external AI services - vendor assessment, contractual protections, data handling agreements]

### 9.1 Vendor Assessment

[GUIDANCE: How to evaluate AI service vendors before adoption]

Assessment Criteria:

- [Criterion 1]
- [Criterion 2]

### 9.2 Contractual Requirements

[GUIDANCE: What must be in vendor contracts]

Required Contract Terms:

- [Term 1]
- [Term 2]

### 9.3 Ongoing Vendor Management

[GUIDANCE: How to monitor vendors post-adoption]

---

> RadioAstronomy.io Third-Party AI Services:
>
> ### 9.1 Vendor Assessment
>
> Assessment Criteria (Pre-Adoption):
>
> Security Posture:
>
> - SOC 2 Type II or equivalent certification
> - Penetration testing and vulnerability disclosure program
> - Encryption in transit (TLS 1.2+) and at rest
> - Incident response capability and notification SLA
>
> Data Handling:
>
> - Training opt-out available and enforceable
> - Data residency options (prefer US/EU)
> - Data retention and deletion policies
> - Subprocessor transparency (who has access to our data)
>
> Access Control:
>
> - SSO support (SAML or OAuth via Google Workspace)
> - MFA support (FIDO2/U2F preferred, TOTP acceptable)
> - Role-based access control for enterprise accounts
> - Audit logging of API usage
>
> Compliance:
>
> - GDPR compliance (even though we're US-based, good indicator)
> - Privacy policy and terms of service reviewed
> - No prohibited terms (e.g., "owns all user data")
>
> Current Approved Vendors:
>
> Google (Gemini via Workspace):
>
> - ✅ SOC 2, ISO 27001 certified
> - ✅ Training opt-out at Workspace level
> - ✅ Google Workspace SSO + YubiKey MFA
> - ✅ Audit logs via Admin Console
> - ✅ Google's strong security reputation
> - ⚠️ Limitation: No granular DLP on Gemini standard access
>
> Anthropic (Claude Max):
>
> - ✅ SOC 2 Type II
> - ✅ Training opt-out enabled by default for Claude Max
> - ✅ Usage dashboard with API logs
> - ✅ Privacy-preserving (prompts/responses not retained)
> - ⚠️ No enterprise SSO (CTO personal account with Google email)
> - ⚠️ No granular access controls (single account)
>
> Z.ai (GLM-4.6):
>
> - ✅ OAuth via Google Workspace
> - ✅ Domain restriction (@radioastronomy.io only)
> - ⚠️ TRAINS ON DATA (disclosed, acceptable for Public-External tier only)
> - ⚠️ Limited security certifications (smaller vendor)
> - ⚠️ Less mature than Google/Anthropic
> - ✓ Acceptable because: constrained use case (Public-External only), RBAC (Engineer role only), explicit training disclosure
>
> ### 9.2 Contractual Requirements
>
> Required Contract Terms:
>
> Data Rights:
>
> - Customer retains all rights to submitted data
> - No vendor claim of ownership or license beyond service provision
> - Training opt-out explicitly confirmed (where applicable)
> - Right to deletion upon request
>
> Security Obligations:
>
> - Vendor maintains security certifications (SOC 2, ISO 27001)
> - Breach notification within 72 hours
> - Vendor provides security incident reports
> - Regular security assessments
>
> Data Handling:
>
> - Purpose limitation (data used only for service provision)
> - Subprocessor disclosure (who has access)
> - Data residency commitments (US/EU preferred)
> - Data retention and deletion schedules
>
> Audit Rights:
>
> - Customer can audit vendor security practices (or review third-party audits)
> - Vendor provides usage logs and access patterns
> - Compliance reports available on request
>
> Service Level:
>
> - Uptime guarantee (99% acceptable for non-critical services)
> - Support response SLA
> - Service degradation notification
>
> Current Vendor Contracts:
>
> - Google Workspace: Enterprise agreement includes Gemini, training opt-out, audit logs, SOC 2
> - Anthropic Claude Max: Standard subscription terms, training opt-out by default, no custom contract (individual subscription)
> - Z.ai: Standard subscription terms, OAuth domain restriction, explicit acknowledgment that tool trains on data
>
> ### 9.3 Ongoing Vendor Management
>
> Quarterly Vendor Review:
>
> - Verify SOC 2 reports still current
> - Check for security incidents or breaches (vendor notifications, security news)
> - Review usage and costs against budget
> - Assess whether vendor still meets needs vs. alternatives
>
> Annual Vendor Assessment:
>
> - Comprehensive security review (updated certifications, audit reports)
> - Contract renewal evaluation (better alternatives? cost changes? feature updates?)
> - Vendor roadmap alignment (upcoming features, deprecations)
> - Risk reassessment (has threat landscape changed? vendor stability?)
>
> Vendor Incident Response:
>
> - If vendor reports breach: assess our exposure, containment actions, credential rotation if needed
> - If vendor changes policy (e.g., removes training opt-out): evaluate alternatives, migrate if necessary
> - If vendor instability: contingency plan for service loss, backup vendor identification
>
> Vendor Offboarding:
>
> - Data export before termination
> - Verify data deletion per contract terms
> - Revoke access credentials and API keys
> - Update documentation (remove vendor from approved list)
> - Communicate changes to personnel
>
> ---
>
> Why Z.ai despite "trains on data": Usually training on customer data is disqualifying. Z.ai gets exception because: (1) explicit use case constraint (Public-External only, research code going public anyway), (2) RBAC enforcement (Engineer role only), (3) cost/capability justification ($30/mo, Claude Code-tier capability), (4) transparent disclosure (users know data trains). This is calculated risk acceptance, not oversight.
>
> Why vendor assessment before adoption: Tool gets added mid-year, no vetting, turns out vendor has poor security = incident waiting to happen. Pre-adoption assessment prevents this. Security Lead evaluates, CTO assesses risk and approves. Then adoption. Not other way around.
>
> Why ongoing vendor management: Vendor's great today doesn't mean great forever. Breaches happen. Policies change. Financial problems emerge. Quarterly review catches issues early. Annual deep assessment ensures continued suitability. Vendor monitoring is not "set and forget."

---

## 10. Risk Scenarios and Controls

[GUIDANCE: Document specific AI security risks and their mitigations. Each risk: description, impact, likelihood, controls, residual risk. This creates risk catalog for ongoing risk management.]

### Risk Catalog

R[N]: [Risk Name]

- Description: [What's the risk]
- Impact: [If it occurs]
- Likelihood: [How probable]
- Controls: [What prevents/detects/responds]
- Residual Risk: [Remaining risk after controls]

[Repeat for each identified risk]

---

> RadioAstronomy.io Risk Scenarios and Controls:
>
> ### Risk Catalog
>
> R01: Protected Data Exposure via Cloud AI
>
> - Description: Personnel inadvertently process Protected data through Gemini or Z.ai, exposing confidential information to cloud services without adequate DLP
> - Impact:
>   - Confidential data leaves secure enclave
>   - Potential training of vendor models on our confidential data (if training occurs)
>   - Compliance violation if Protected data includes regulated information
>   - Reputational damage if exposure discovered
> - Likelihood: Medium (data classification requires user judgment, mistakes happen)
> - Controls:
>   - 4-tier data classification system with explicit tool mapping
>   - Training on data classification (onboarding + annual)
>   - Claude Max via Kasm isolation with DLP for Protected data (CTO only)
>   - Local Llama models air-gapped for Protected data (all personnel)
>   - Quarterly compliance review sampling AI usage
>   - Quarterly log review for classification violations
> - Residual Risk: Low (acceptable with ongoing monitoring)
>
> R02: Z.ai Training on Public-Internal Code
>
> - Description: Engineer uses Z.ai on RadioAstronomy.io infrastructure code (Public-Internal tier), causing our proprietary code to become part of Z.ai training dataset before publication
> - Impact:
>   - Intellectual property leakage
>   - Competitive disadvantage (infrastructure patterns exposed)
>   - Potential security exposure (if code reveals architecture)
> - Likelihood: Medium (requires distinguishing Public-Internal from Public-External, subtle difference)
> - Controls:
>   - 4-tier classification explicitly distinguishes Public-Internal (ours, training opt-out) from Public-External (research, training OK)
>   - Engineer role training emphasizes Z.ai constraints (Public-External only)
>   - Repository tagging (infra repos = Public-Internal, astronomy repos = Public-External)
>   - Code review catches Z.ai disclosure in wrong context
>   - Quarterly compliance review samples Z.ai usage
> - Residual Risk: Moderate (acceptable with enhanced training and monitoring)
>
> R03: Secrets in AI Prompts
>
> - Description: Personnel accidentally include credentials, API keys, passwords, or tokens in AI prompts
> - Impact:
>   - Credential exposure to cloud vendors (Gemini, Claude, Z.ai)
>   - Credential exposure in logs (including local Llama)
>   - Unauthorized access if credentials used maliciously
>   - Credential rotation overhead
> - Likelihood: Medium (happens despite training, especially under time pressure)
> - Controls:
>   - Never-input-secrets policy emphasis (onboarding + annual training + posters)
>   - Secrets management training (use Secrets Manager, env vars, not AI)
>   - Pre-commit hooks scan repos for leaked secrets (gitleaks)
>   - Local Llama logs hashed prompts (not full text) to reduce exposure
>   - Quarterly log review for secrets that shouldn't be present
>   - Immediate credential rotation upon detection
> - Residual Risk: Low (incidents occur but rapidly contained)
>
> R04: Unverified AI Output in Production
>
> - Description: AI-generated code, configurations, or analysis deployed to production without adequate human review
> - Impact:
>   - Security vulnerabilities in production
>   - Functional bugs causing service disruption
>   - Incorrect analysis leading to bad decisions
>   - Reputational damage from AI-caused incidents
> - Likelihood: Medium (time pressure or overconfidence in AI can bypass review)
> - Controls:
>   - Mandatory human review policy (AUP-001)
>   - CI/CD requires human approval before deployment
>   - Security scanning in pipeline (SAST, DAST, dependency scanning)
>   - Code review emphasizes AI-generated sections
>   - Post-incident analysis if AI output causes problem
> - Residual Risk: Moderate (acceptable with quality culture enforcement)
>
> R05: Agent Authority Boundary Violations
>
> - Description: AI agent exceeds bounded context, makes unauthorized decisions, or operates outside design constraints
> - Impact:
>   - Unauthorized system changes
>   - Data processed by wrong systems or tools
>   - Cross-domain actions violating separation of duties
>   - Difficult-to-trace accountability
> - Likelihood: Low to Medium (agents are bounded but complex)
> - Controls:
>   - Bounded context architecture (vault orchestrator, project managers have clear scope)
>   - Agent special instructions define authority limits
>   - Escalation procedures for uncertain authority
>   - Comprehensive logging of agent actions
>   - Quarterly agent authority review
>   - Staging notifications provide cross-agent visibility
> - Residual Risk: Moderate (acceptable with monitoring and architecture discipline)
>
> R06: Data Classification Confusion
>
> - Description: User uncertain which classification tier applies, makes incorrect classification decision, processes data with wrong AI tool
> - Impact:
>   - Similar to R01 or R02 (exposure to wrong tool/training)
>   - Policy violation despite good-faith attempt to comply
>   - Undermines classification system if errors frequent
> - Likelihood: Medium (4-tier system requires judgment, edge cases exist)
> - Controls:
>   - Classification decision framework in policy (if unsure, treat as more sensitive)
>   - Security Lead available for clarification questions
>   - Training includes classification examples and edge cases
>   - "When in doubt" guidance prominently displayed
>   - Quarterly review identifies common confusion points, updates training
> - Residual Risk: Low to Moderate (acceptable with support infrastructure)
>
> R07: Vendor AI Service Compromise
>
> - Description: Cloud AI vendor (Google, Anthropic, Z.ai) suffers security breach exposing customer data
> - Impact:
>   - Exposure of Public-Internal data processed via vendor
>   - Potential exposure of Protected data if control failure (e.g., Gemini used for Protected despite policy)
>   - Loss of trust in vendor, need to migrate
> - Likelihood: Low (vendors have strong security) but impact High
> - Controls:
>   - Vendor assessment before adoption (SOC 2, security reputation)
>   - Training opt-out reduces exposure (data not in training sets)
>   - Data classification enforcement (Protected/Secrets never to cloud)
>   - Quarterly vendor monitoring (breach notifications, security news)
>   - Incident response plan if vendor breach occurs
> - Residual Risk: Low (acceptable for Public data, mitigated by classification enforcement)
>
> R08: Local Model Compromise
>
> - Description: Local Llama 3.1 8B model on proj-gpu01 compromised via supply chain attack, backdoor, or post-deployment tampering
> - Impact:
>   - Protected data exposure (local model processes Protected data)
>   - Code injection into generated outputs
>   - Exfiltration channel if "air-gapped" model compromised
> - Likelihood: Low (supply chain and integrity controls) but impact High
> - Controls:
>   - Model integrity verification (SHA256 hash against Meta official release)
>   - Verified source only (official Meta, Hugging Face verified)
>   - Model immutability (read-only permissions)
>   - Network isolation (NetBird ZTNA, no internet access for model)
>   - Sandbox testing before production deployment
>   - Quarterly model integrity check
> - Residual Risk: Low (acceptable with defense-in-depth)
>
> R09: Insider Threat - Malicious AI Use
>
> - Description: Malicious insider intentionally uses AI tools to exfiltrate data, generate malware, or sabotage systems
> - Impact:
>   - Data theft via AI-assisted exfiltration
>   - Malware generation and deployment
>   - System sabotage hidden in AI-generated code
>   - Difficult attribution (AI obscures malicious intent)
> - Likelihood: Low (small trusted team) but impact High
> - Controls:
>   - Access control and authentication (SSO, MFA, RBAC)
>   - Logging and monitoring (unusual activity detection)
>   - Code review and security scanning (catches malicious patterns)
>   - Separation of duties (no single person has all access)
>   - Background checks and culture of trust (HR controls)
>   - Incident response for suspected insider threat
> - Residual Risk: Low (acceptable with monitoring and culture)
>
> R10: AI Hallucination Causing Operational Impact
>
> - Description: AI generates plausible but incorrect information used for operational decisions, causing production incidents or business harm
> - Impact:
>   - Service outages from incorrect configurations
>   - Data loss from flawed analysis
>   - Security vulnerabilities from hallucinated security controls
>   - Financial loss from bad business decisions
> - Likelihood: Medium (AI hallucination is inherent limitation)
> - Controls:
>   - Mandatory human review before production use
>   - Domain expert validation for critical decisions
>   - Multi-source verification for important facts
>   - Sandbox testing of AI-generated code/configs
>   - Post-incident analysis traces problems to AI source
>   - Training emphasizes AI limitations and hallucination risk
> - Residual Risk: Moderate (acceptable with validation discipline)
>
> ---
>
> Why 10 risk scenarios: Captures major threat vectors across data exposure (R01-R03, R06), output quality (R04, R10), architectural boundaries (R05), supply chain (R07-R08), insider threat (R09). Not exhaustive but covers 80% of real risks we face. Each scenario has measurable controls and residual risk assessment.
>
> Why residual risk "acceptable": Zero risk impossible. Controls reduce risk to tolerable level - "acceptable with monitoring," "acceptable with enhanced training." Residual risk drives ongoing investment - High residual = more controls needed, Low residual = current controls sufficient.
>
> Why new scenarios in v1.1: R02 (Z.ai training on Public-Internal) and R06 (classification confusion) added after v1.0 operational experience. Real risks discovered through usage. Risk catalog is living document, updated when new patterns emerge.

---

## 11. Compliance Mapping

[GUIDANCE: Map this standard to regulatory/framework requirements. Show how your controls satisfy external obligations.]

### [Framework/Regulation Name]

| Requirement | Implementation Section | Notes |
|-------------|----------------------|-------|
| [Requirement 1] | [Section X.Y] | [Additional context] |
| [Requirement 2] | [Section X.Y] | [Additional context] |

[Repeat for each framework]

---

> RadioAstronomy.io Compliance Mapping:
>
> ### NIST AI RMF 1.0
>
> | NIST AI RMF Function | Implementation Section | Notes |
> |---------------------|----------------------|-------|
> | Map: Context & Categorization | Section 3 (Data Classification) | 4-tier classification maps data sensitivity to AI tool capabilities |
> | Measure: Risk Assessment | Section 10 (Risk Scenarios) | 10 documented risks with controls and residual risk |
> | Manage: Risk Treatment | Sections 4-9 (Access, Data, Model, Logging, Incident, Vendor) | Technical controls implement risk treatment |
> | Govern: Accountability | Section 8 (Incident Response), Section 9 (Vendor Management) | Clear accountability for incidents and vendors |
>
> ### CIS Controls v8.1 (Implementation Group 1)
>
> | CIS Control | Implementation Section | Notes |
> |------------|----------------------|-------|
> | 5.1: Establish/Maintain Asset Inventory | Section 3.2 (AI Tool Security Matrix) | Approved tools documented with security properties |
> | 5.2: Maintain Software Inventory | Section 6.2 (Model Versioning) | Local models tracked with versions and checksums |
> | 6.1: Establish Access Granting Process | Section 4.3 (Access Provisioning) | Documented provisioning and revocation process |
> | 6.2: Establish Access Revoking Process | Section 4.3 (Access Revocation) | Revocation within 24 hours of departure |
> | 8.1: Establish Audit Log Configuration | Section 7.1 (Logging Requirements) | Comprehensive logging of authentication and usage |
> | 8.2: Collect Audit Logs | Section 7.1 (Log Retention) | 90-day retention on hot storage, 1-year cold storage |
> | 8.11: Conduct Audit Log Reviews | Section 7.3 (Audit and Review) | Monthly log review, quarterly access review |
> | 17.1: Establish Incident Response Process | Section 8.2 (Incident Response Process) | Documented detection, containment, investigation, remediation |
>
> ### ISO 31000:2018 (Risk Management)
>
> | ISO 31000 Principle | Implementation Section | Notes |
> |--------------------|----------------------|-------|
> | Structured and Comprehensive | Section 10 (Risk Scenarios) | Systematic risk identification and documentation |
> | Customized | Section 3 (Data Classification) | Risk treatment customized to organizational context (4-tier system, tool constraints) |
> | Inclusive | Section 8 (Incident Response) | Stakeholder involvement in incident response and lessons learned |
> | Dynamic | Section 10 (Risk Catalog) | Living risk catalog updated with operational experience (v1.1 adds R02, R06) |
> | Based on Best Available Information | Section 9 (Vendor Management) | Risk decisions based on vendor assessments, certifications, operational data |
>
> ### Colorado SB-24-205 (Artificial Intelligence Act)
>
> | SB-24-205 Requirement | Implementation Section | Notes |
> |----------------------|----------------------|-------|
> | Risk Assessment (deployers) | Section 10 (Risk Scenarios) | Documented risks for AI systems, controls, residual risk |
> | Reasonable Care to Avoid Algorithmic Discrimination | Section 3 (Data Classification), Section 5 (Data Handling) | Data classification prevents bias-inducing data in training; output validation required |
> | Disclosure to Consumers | STD-004 (Transparency Standard) | Transparency standard addresses disclosure (separate document) |
> | Data Protection | Section 5 (Data Handling) | Data minimization, input validation, output sanitization |
> | Governance Program | POL-001 (AI Governance Policy) | Overall governance framework (separate document) |
>
> Notes on SB-24-205 Applicability:
>
> - RadioAstronomy.io is not Colorado-based and does not make consequential decisions affecting individuals
> - We are NOT subject to SB-24-205 enforcement
> - We follow SB-24-205 voluntarily as Responsible AI practice
> - Compliance mapping demonstrates governance maturity to collaborators and funders
>
> ---
>
> Why compliance mapping matters: Shows due diligence. When funder asks "are you NIST AI RMF compliant?" answer is "yes, see compliance mapping." When collaborator asks "how do you manage AI risk?" answer is "ISO 31000 framework, see risk catalog." Compliance mapping connects abstract frameworks to concrete controls.
>
> Why we map despite not being required: SB-24-205 doesn't legally apply to us (wrong state, wrong use case). We follow it anyway because: (1) demonstrates governance maturity, (2) provides concrete legal framework reference, (3) positions us for future regulation, (4) differentiates from competitors lacking governance.
>
> Why CIS Controls IG1: Implementation Group 1 is appropriate for small orgs (5-10 people). Higher IGs (2-3) add complexity beyond our capacity. IG1 provides essential controls (asset inventory, access control, logging, incident response) without overwhelming us. Right-sized compliance, not aspirational compliance.

---

## 12. References

### Internal Documents

- [Policy/Standard 1]
- [Policy/Standard 2]

### External Standards

- [Framework 1]
- [Framework 2]

### Technical References

- [Technical doc 1]
- [Technical doc 2]

---

> RadioAstronomy.io References:
>
> ### Internal Documents
>
> - POL-001: AI Governance Policy (overarching framework, role definitions, tool approval)
> - STD-001: AI Risk Assessment & Management Standard (risk methodology, AISIA process)
> - STD-004: AI Transparency & Disclosure Standard (disclosure requirements, formats)
> - AUP-001: AI Acceptable Use Policy (user behavior, data classification, verification requirements)
>
> ### External Standards
>
> - NIST AI Risk Management Framework (AI RMF 1.0) - <https://www.nist.gov/itl/ai-risk-management-framework>
> - CIS Controls v8.1 - <https://www.cisecurity.org/controls/v8>
> - CIS Risk Assessment Method (CIS-RAM) - <https://www.cisecurity.org/insights/white-papers/cis-ram-risk-assessment-method>
> - ISO 31000:2018 Risk Management - <https://www.iso.org/iso-31000-risk-management.html>
> - Colorado SB24-205 (Artificial Intelligence Act) - <https://leg.colorado.gov/bills/sb24-205>
>
> ### Technical References
>
> - Google Workspace Security - <https://workspace.google.com/security/>
> - Anthropic Security & Privacy - <https://www.anthropic.com/security>
> - Meta Llama Model Cards - <https://llama.meta.com/>
> - OWASP Machine Learning Security Top 10 - <https://owasp.org/www-project-machine-learning-security-top-10/>

---

## 13. Appendices

### Appendix A: Data Classification Quick Reference

[GUIDANCE: One-page reference for data classification - users keep this at desk]

### Appendix B: AI Tool Selection Flowchart

[GUIDANCE: Visual decision tree for choosing AI tool based on data classification]

### Appendix C: Incident Response Checklist

[GUIDANCE: Step-by-step checklist for incident responders]

---

> RadioAstronomy.io Appendices:
>
> ### Appendix A: Data Classification Quick Reference
>
> For quick reference - keep this visible:
>
> | If your data is... | Classification | Approved AI Tools | Prohibited AI Tools |
> |--------------------|---------------|-------------------|-------------------|
> | Our work, will be published, under our control | Public-Internal | Gemini, Claude Max, Local Llama | Z.ai (trains on data) |
> | Astronomy/data science research code, external repos | Public-External | ALL tools (Gemini, Claude Max, Z.ai, Local Llama) | None |
> | Internal docs, proprietary code, drafts, configs | Protected | Claude Max (Kasm only), Local Llama | Gemini, Z.ai |
> | Credentials, keys, passwords, PII, financial data | Secrets | NONE - use secrets management | ALL AI tools |
>
> When uncertain:
>
> - Unsure between Public-Internal and Protected? → Treat as Protected
> - Unsure between Public-Internal and Public-External? → If we created/control it → Public-Internal
> - Unsure if something is a Secret? → Treat as Secret
> - Still uncertain? → Ask Security Lead BEFORE processing
>
> Special Z.ai rules:
>
> - Z.ai trains on EVERYTHING you submit
> - ONLY use Z.ai for Public-External (astronomy/data science research code)
> - NEVER use Z.ai for Public-Internal (our infrastructure code)
> - NEVER use Z.ai for Protected or Secrets
>
> ### Appendix B: AI Tool Selection Flowchart
>
> ```
> START: What data classification?
>
> ├─ Secrets (credentials, keys, PII)
> │  └─ STOP - Do NOT use AI
> │     Use: Secrets Manager, env vars, encrypted config
> │
> ├─ Protected (internal docs, proprietary code, configs)
> │  └─ Need AI assistance?
> │     ├─ CTO? → Claude Max via Kasm (DLP enforced)
> │     └─ Not CTO? → Local Llama only
> │
> ├─ Public-Internal (our work, will publish, training opt-out preferred)
> │  └─ Choose AI tool:
> │     ├─ Everyone: Gemini (universal base tool)
> │     ├─ CTO: Claude Max (quality work)
> │     ├─ Everyone: Local Llama (offline/testing)
> │     └─ PROHIBITED: Z.ai (trains on data, don't want on our IP)
> │
> └─ Public-External (research code, external repos, training OK)
>    └─ Choose AI tool:
>       ├─ Engineer role: Z.ai (astronomy/data science code review)
>       ├─ Everyone: Gemini
>       ├─ CTO: Claude Max
>       └─ Everyone: Local Llama
> ```
>
> ### Appendix C: Incident Response Checklist
>
> Critical/High Severity Incidents - follow this checklist:
>
> ☐ Immediate Containment (within 15 minutes):
>
> - [ ] Suspend user account (Google Workspace)
> - [ ] Disable Active Directory account
> - [ ] Revoke Z.ai OAuth tokens
> - [ ] Deauthorize NetBird device
> - [ ] Notify CTO and Security Lead
>
> ☐ Assess Exposure (within 1 hour):
>
> - [ ] What data was submitted to which AI tool?
> - [ ] What was the data classification?
> - [ ] Does this violate data/tool mapping policy?
> - [ ] If Secrets exposed: Which credentials? What services affected?
>
> ☐ Credential Rotation (if Secrets exposed - immediate):
>
> - [ ] Identify all exposed credentials
> - [ ] Rotate via Secrets Manager / service admin panel
> - [ ] Verify rotation (test old cred fails, new cred works)
> - [ ] Document rotation in incident report
>
> ☐ Investigation (within 24 hours):
>
> - [ ] Interview user or review logs
> - [ ] Determine: intentional violation, training gap, policy ambiguity, technical failure?
> - [ ] Review related logs (auth, network, AI usage)
> - [ ] Assess impact: confidentiality, integrity, availability, regulatory
> - [ ] Document timeline and root cause
>
> ☐ Remediation (within 72 hours):
>
> - [ ] Technical fixes (credential rotation, config correction, monitoring enhancement)
> - [ ] Policy/training updates (if gap identified)
> - [ ] Stakeholder notification (if external impact)
> - [ ] Regulatory notification (if required)
>
> ☐ Post-Incident (within 7 days):
>
> - [ ] Incident report (what, why, who, when, impact, response, remediation)
> - [ ] Lessons learned review (what worked, what didn't, improvements needed)
> - [ ] Policy/standard updates (if needed)
> - [ ] Training updates (if knowledge gap)
> - [ ] Account reinstatement process (if applicable: training completion + 90-day enhanced monitoring)
>
> Contact Information:
>
> - CTO: [contact]
> - Security Lead: [contact]
> - Operations Lead: [contact]
>
> ---
>
> Why appendices matter: Policy/standard documents are comprehensive but dense. Appendices provide quick reference for common tasks. Data classification quick ref lives on desk. Flowchart answers "which tool?" without reading 40 pages. Incident checklist ensures no steps missed during stressful response.

---

## Document Approval

Document Owner: [Role]  
Effective Date: [YYYY-MM-DD]

Acknowledgment Required: All personnel must acknowledge this standard within [N] days of effective date.

Acknowledgment Statement:
"I have read and understood the Secure AI Systems Standard. I agree to follow the data classification and AI tool mapping requirements, and I will seek clarification from [designated role] if I have questions about which tools to use for specific data types."

---

> RadioAstronomy.io Document Approval:
>
> Document Owner: CTO  
> Effective Date: 2025-10-26
>
> Re-Acknowledgment Required: Version 1.1 corrects critical security error (Protected data controls). All personnel must re-acknowledge within 14 days of effective date.
>
> Acknowledgment Statement:
> "I have read and understood the Secure AI Systems Standard v1.1. I understand that:
>
> - Public-Internal data must use training opt-out tools (Gemini, Claude Max, Local Llama) - NOT Z.ai
> - Public-External data (astronomy/research code) can use Z.ai because training is acceptable
> - Protected data requires Claude Max via Kasm (CTO only) OR Local Llama - NOT Gemini or Z.ai
> - Secrets NEVER go into any AI tool including local models
> - I will seek clarification from Security Lead if uncertain about data classification"
>
> Critical Change in v1.1:
> Version 1.0 incorrectly stated Gemini could process Protected data. This was WRONG. Version 1.1 corrects: Protected data requires Claude Max via Kasm (DLP enforced) or Local Llama only. Gemini standard access lacks DLP and is NOT approved for Protected data.

---

End of Document
