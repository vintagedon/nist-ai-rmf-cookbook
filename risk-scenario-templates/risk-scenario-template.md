# Risk Scenario Template: [Risk Title]

**Risk ID:** R[##]  
**Category:** [Technical Security / Operational / Privacy / Bias & Fairness / Model Performance / Cost Management / Compliance / Safety]  
**Last Updated:** [YYYY-MM-DD]  
**Owner:** [Role or person responsible for managing this risk]

[GUIDANCE: Risk scenarios are operational risk documentation - not generic risk register entries. Each scenario describes a specific AI deployment risk pattern with actionable controls. Use this template to document risks in your AI Risk Register.]

---

## Risk Description

[GUIDANCE: Clear, specific description of the risk. What could go wrong? How does this manifest in AI deployments? Be concrete with examples relevant to your organization's context.]

[2-3 paragraphs describing:
- What is the risk?
- How does it occur in AI systems?
- What are typical scenarios or triggers?
- Why is this risk relevant to AI deployments specifically?]

**Example Scenarios:**
- [Specific scenario 1 that illustrates how this risk materializes]
- [Specific scenario 2 showing different manifestation]
- [Specific scenario 3 if applicable]

[GUIDANCE: Examples make risk tangible. Use real-world patterns from your organization or industry.]

---

## Risk Assessment

### Likelihood

**Rating:** [CRITICAL / HIGH / MEDIUM / LOW / MINIMAL]

[GUIDANCE: How likely is this risk to occur in your environment? Consider your current controls, organizational maturity, and deployment patterns.]

**Factors Increasing Likelihood:**
- [Factor 1 that makes this more likely to occur]
- [Factor 2 that increases probability]
- [Factor 3 if applicable]

**Factors Decreasing Likelihood:**
- [Mitigating factor 1 already in place]
- [Mitigating factor 2 that reduces probability]

[GUIDANCE: Be honest about likelihood. "We haven't seen this yet" doesn't mean "it won't happen."]

### Impact

**Rating:** [CRITICAL / HIGH / MEDIUM / LOW / MINIMAL]

[GUIDANCE: If this risk materializes, what's the damage? Consider technical, business, reputational, legal, and safety impacts.]

**Potential Impacts:**
- **Technical:** [System failures, data loss, service degradation]
- **Business:** [Revenue loss, operational disruption, productivity impact]
- **Reputational:** [Customer trust, brand damage, public perception]
- **Legal/Compliance:** [Regulatory violations, fines, lawsuits]
- **Safety:** [Harm to users, physical safety risks, psychological harm]
- **Financial:** [Direct costs, opportunity costs, recovery expenses]

[GUIDANCE: Quantify when possible. "Could cost $X" or "Affects Y users" is better than "significant impact."]

### Risk Level

**Overall Risk Rating:** [CRITICAL / HIGH / MEDIUM / LOW / MINIMAL]

[GUIDANCE: Risk Level = Likelihood × Impact. Use your organization's risk matrix. Typically:
- CRITICAL: Immediate action required, executive escalation
- HIGH: Priority mitigation, regular board review
- MEDIUM: Planned mitigation, operational monitoring
- LOW: Accepted with monitoring, periodic review
- MINIMAL: Accepted, document only]

**Rationale:** [Brief explanation of how likelihood and impact combine to this risk level]

---

## Current Controls

[GUIDANCE: What are you already doing to manage this risk? Be specific about implemented controls, not aspirational ones. If you have no current controls, state that explicitly.]

### Technical Controls
[GUIDANCE: Technical safeguards, automation, system configurations]

- [Control 1: Specific technical measure in place]
- [Control 2: Tool, system, or configuration that mitigates risk]
- [Control 3: Automated detection or prevention mechanism]

### Process Controls
[GUIDANCE: Procedures, workflows, approval processes]

- [Control 1: Process or workflow that addresses risk]
- [Control 2: Review or approval mechanism]
- [Control 3: Operational procedure]

### Organizational Controls
[GUIDANCE: Policies, training, governance structures]

- [Control 1: Policy or standard that addresses risk]
- [Control 2: Training or awareness program]
- [Control 3: Governance oversight mechanism]

[GUIDANCE: If no current controls exist, state: "No formal controls currently implemented. Relying on ad-hoc practices and individual awareness."]

---

## Residual Risk

**Residual Risk Level:** [CRITICAL / HIGH / MEDIUM / LOW / MINIMAL]

[GUIDANCE: After applying current controls, what risk remains? Be honest - controls rarely eliminate risk completely.]

**Analysis:** 

[2-3 paragraphs explaining:
- What risk remains after current controls?
- Why do current controls not fully mitigate?
- What scenarios could still lead to risk materialization?
- Is residual risk acceptable or does it require additional controls?]

**Risk Acceptance Decision:**

[GUIDANCE: Who has accepted this residual risk level? When was it reviewed? Under what conditions?]

- **Accepted By:** [Role or body that accepted residual risk]
- **Date:** [YYYY-MM-DD]
- **Conditions:** [Any conditions or triggers for re-evaluation]
- **Review Frequency:** [How often residual risk is reassessed]

[GUIDANCE: If residual risk is NOT accepted, state that additional controls are required.]

---

## Recommended Controls

[GUIDANCE: What should you implement to further reduce risk? Prioritize by impact and feasibility. Be specific - "implement MFA" not "improve security."]

### Priority 1 (Immediate/Short-term)
[GUIDANCE: Controls that provide significant risk reduction with reasonable effort]

1. **[Control Name]**
   - **Description:** [What this control does]
   - **Implementation:** [How to implement - specific steps]
   - **Expected Impact:** [How much risk reduction - quantify if possible]
   - **Effort:** [Low / Medium / High]
   - **Timeline:** [Weeks / Months]
   - **Owner:** [Who implements]

2. **[Control Name]**
   - **Description:** [What this control does]
   - **Implementation:** [How to implement]
   - **Expected Impact:** [Risk reduction]
   - **Effort:** [Low / Medium / High]
   - **Timeline:** [Weeks / Months]
   - **Owner:** [Who implements]

### Priority 2 (Medium-term)
[GUIDANCE: Important controls that require more effort or dependencies]

1. **[Control Name]**
   - **Description:** [What this control does]
   - **Implementation:** [How to implement]
   - **Expected Impact:** [Risk reduction]
   - **Effort:** [Low / Medium / High]
   - **Timeline:** [Months / Quarters]
   - **Owner:** [Who implements]

### Priority 3 (Long-term/Strategic)
[GUIDANCE: Controls that provide incremental benefit or require significant investment]

1. **[Control Name]**
   - **Description:** [What this control does]
   - **Implementation:** [How to implement]
   - **Expected Impact:** [Risk reduction]
   - **Effort:** [Low / Medium / High]
   - **Timeline:** [Quarters / Years]
   - **Owner:** [Who implements]

[GUIDANCE: Not every risk needs all three priority levels. Adjust to your risk profile.]

---

## NIST AI RMF Mapping

[GUIDANCE: Map this risk to NIST AI RMF functions and subcategories. This creates traceability between risks and framework requirements.]

### Relevant Functions

**GOVERN:**
- [Subcategory, e.g., GOVERN-1.3: Organizational AI risk management processes]
- [How this risk relates to governance function]

**MAP:**
- [Subcategory, e.g., MAP-1.5: Impact on individuals, groups, communities]
- [How this risk relates to mapping function]

**MEASURE:**
- [Subcategory, e.g., MEASURE-2.3: AI system performance monitoring]
- [How this risk relates to measurement function]

**MANAGE:**
- [Subcategory, e.g., MANAGE-1.1: Risk response plans]
- [How this risk relates to management function]

[GUIDANCE: Not all risks map to all functions. Focus on primary relevant functions. See NIST AI RMF for complete subcategory list.]

### Framework Alignment Notes

[GUIDANCE: Additional context about how addressing this risk satisfies framework requirements or where framework guidance is particularly relevant.]

---

## Related Artifacts

[GUIDANCE: Cross-reference to other governance documentation for traceability.]

### Related Risks
- **[R##]:** [Risk title and relationship - e.g., "Depends on," "Compounds," "Related to"]
- **[R##]:** [Risk title and relationship]

### Affected Systems/Models
- [Model or system 1 where this risk applies]
- [Model or system 2 where this risk applies]

### Relevant Policies/Standards
- [Policy name and section that addresses this risk]
- [Standard name and section]

### Model Cards
- [Model card reference if risk is model-specific]

### Decision Log References
- **[DEC-YYYY-NNN]:** [Decision related to this risk - acceptance, control implementation, etc.]

[GUIDANCE: These cross-references create audit trail and help with impact analysis when documents change.]

---

## Monitoring & Detection

[GUIDANCE: How do you know if this risk is materializing? What early warning signs exist? What metrics track risk exposure?]

### Key Risk Indicators (KRIs)

1. **[Indicator Name]**
   - **Metric:** [What you measure]
   - **Threshold:** [Warning level that triggers action]
   - **Frequency:** [How often measured]
   - **Data Source:** [Where metric comes from]

2. **[Indicator Name]**
   - **Metric:** [What you measure]
   - **Threshold:** [Warning level]
   - **Frequency:** [Measurement cadence]
   - **Data Source:** [Source system]

### Detection Methods
[GUIDANCE: How do you detect if risk has materialized?]

- [Detection method 1 - e.g., automated alerts, log monitoring]
- [Detection method 2 - e.g., periodic audits, user reports]
- [Detection method 3 - e.g., compliance scanning, code review]

### Incident Response

**If this risk materializes:**

1. **Immediate Actions:** [First response steps]
2. **Escalation:** [Who to notify, escalation path]
3. **Investigation:** [How to determine scope and impact]
4. **Remediation:** [Initial containment and fix approach]
5. **Recovery:** [How to restore normal operations]
6. **Lessons Learned:** [Post-incident review process]

[GUIDANCE: Link to formal incident response plan if one exists.]

---

## Review History

[GUIDANCE: Track when this risk scenario was reviewed and updated. Demonstrates active risk management.]

| Date | Reviewer | Changes | Risk Level Change |
|------|----------|---------|-------------------|
| [YYYY-MM-DD] | [Name/Role] | [What changed] | [Old → New if changed] |
| [YYYY-MM-DD] | [Name/Role] | [What changed] | [Old → New if changed] |

**Next Scheduled Review:** [YYYY-MM-DD or "Quarterly" or "Annual"]

---

## References & Resources

[GUIDANCE: Link to external resources, research, best practices related to this risk.]

- [Reference 1: Industry guidance, research paper, standard]
- [Reference 2: Tool documentation, vendor guidance]
- [Reference 3: Regulatory guidance, compliance framework]

---

## Notes

[GUIDANCE: Any additional context, caveats, or considerations that don't fit above sections.]

---

# Template Usage Notes

**When to create a risk scenario:**
- Identified new AI deployment risk pattern
- Incident occurs that reveals risk not previously documented
- Framework assessment identifies gaps in risk coverage
- Stakeholder raises concern requiring formal risk documentation
- New technology or use case introduces novel risks

**Risk ID numbering:**
- Use sequential numbering: R01, R02, R03...
- Reserve ID even if risk is later retired (don't renumber)
- Consider category prefixes if helpful: RS## (Security), RO## (Operational), etc.

**Risk level definitions (adjust to your risk appetite):**
- **CRITICAL:** Existential threat, immediate C-suite action required
- **HIGH:** Major impact, priority mitigation, board-level visibility
- **MEDIUM:** Significant impact, planned mitigation, operational monitoring
- **LOW:** Limited impact, accept with monitoring, periodic review
- **MINIMAL:** Negligible impact, document for completeness

**Updating scenarios:**
- Review quarterly or when controls change
- Update after incidents that validate or refute risk assessment
- Revise when new information changes likelihood or impact
- Archive (don't delete) if risk is no longer relevant

**Integration with risk register:**
- Risk scenarios provide detail; risk register provides summary view
- Risk register should reference scenario documents
- Keep scenarios up to date as register evolves
