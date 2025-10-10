# 📚 Examples - Living Demonstration Through Dogfooding

Why This Directory is (Mostly) Empty

---

## 🎯 Our Philosophy: Practice What We Document

Most compliance frameworks demonstrate concepts with hypothetical scenarios—synthetic RAG assistants, imaginary classifiers, theoretical vision models. We take a different approach:

The NIST AI RMF Cookbook itself is the worked example.

This repository was built using AI tools under the governance framework we're documenting. Every policy, schema, and model card you see represents actual production decisions, real trade-offs, and authentic constraints.

---

## 🔍 Where to Find the "Example"

The worked example is in `_repository-governance/`:

### Actual AI Governance in Practice

| Artifact | What It Demonstrates |
|----------|---------------------|
| [AI Acceptable Use Policy](../_repository-governance/ai-acceptable-use-policy.md) | NIST AI RMF GOVERN function - organizational AI usage policy for repository development |
| [Model Selection Strategy](../_repository-governance/model-selection-strategy.md) | NIST AI RMF GOVERN + MANAGE - cost-conscious, strategic model orchestration |
| [Model Cards](../_repository-governance/models/) | NIST AI RMF MAP + MEASURE - documentation of AI tools used, their limitations, and intended use |
| [Documentation Methodology](../docs/methodology.md) | NIST AI RMF MEASURE + MANAGE - multi-model consensus, human verification, evidence-based approach |

### Evidence of Framework Functions

GOVERN:

- Established oversight structure (repository maintainer authority)
- Defined roles and responsibilities (contributor expectations)
- Risk tolerance articulated (cost/quality/security trade-offs)

MAP:

- Identified AI-specific risks (hallucination, bias, prompt injection)
- Documented model capabilities and limitations
- Assessed context-specific constraints (VRAM limits, rate limits, cost)

MEASURE:

- Multi-model consensus as quality metric
- Human verification requirements
- Continuous evaluation (quarterly policy reviews)

MANAGE:

- Implemented controls (approved platforms, verification requirements)
- Incident response (violation handling, self-reporting)
- Continuous monitoring (quarterly reviews, update triggers)

---

## 💡 Why Dogfooding is Stronger Than Synthetic Examples

### Authenticity

- Real decisions: GPT Business vs Pro trade-offs aren't hypothetical
- Actual costs: $140/month is our real operating budget
- Genuine constraints: 16GB VRAM limits what local models can do

### Evidence-Based

- Not prescriptive: We don't claim "you should do X"
- Descriptive instead: "Here's what we did, why we did it, and the outcomes"
- Transparent trade-offs: Every decision includes rationale and alternatives considered

### Continuous Evolution

- Living example: As the repository grows, the governance example grows
- Adaptation demonstrated: Model selection strategy evolves based on lessons learned
- Version-controlled: Git history shows governance decisions over time

### Self-Validating

- Subject to our own rules: We follow the policies we document
- Compliance-as-Code: Our governance artifacts are in the same repo as our code
- Auditable: Every claim has evidence (model cards, policies, methodology)

---

## 🏗️ Future: Contributed Examples Welcome

While the repository itself is the primary example, we welcome contributed worked examples from the community:

### Ideal Contributions

Organizations that have adopted the cookbook and want to share:

- Sanitized, anonymized versions of their governance artifacts
- Lessons learned from implementation
- Industry-specific adaptations (healthcare, finance, government)
- Integration patterns with specific GRC tools

### Contribution Guidelines

When contributing examples:

1. Anonymize appropriately: Remove organization-specific details
2. Document context: Explain your environment, constraints, and goals
3. Show evolution: Include before/after or iterative improvements
4. Provide evidence: Link to actual artifacts, not just descriptions
5. Follow templates: Use the schemas and templates from this repository

See [CONTRIBUTING.md](../CONTRIBUTING.md) (when created) for detailed guidance.

---

## 🎓 Learning from This Example

### How to Use the Repository Governance as a Learning Tool

For Policy Teams:

1. Read [AI Acceptable Use Policy](../_repository-governance/ai-acceptable-use-policy.md)
2. Note the 📘 educational boxes explaining customization
3. Compare repository-specific version to generic template in [policies/](../policies/)
4. Adapt the pattern to your organization's needs

For ML/AI Engineers:

1. Review [Model Cards](../_repository-governance/models/) for documentation structure
2. See how we document limitations, intended use, and constraints
3. Note the schema-driven approach (model cards validate against schema)
4. Apply the same rigor to your AI systems

For Risk Officers:

1. Study [Model Selection Strategy](../_repository-governance/model-selection-strategy.md)
2. Observe risk/cost/capability trade-off analysis
3. See how security stratification works (local vs commercial models)
4. Note the continuous evaluation and update triggers

For Auditors:

1. Examine [Documentation Methodology](../docs/methodology.md)
2. Verify multi-model consensus process
3. Trace evidence links (claims to artifacts)
4. Validate human verification requirements

---

## 📖 Related Resources

### Within This Repository

- [📁 Repository Governance](../_repository-governance/) - The living example of AI governance
- [📋 Policies](../policies/) - Generic policy templates you can adapt
- [🔧 Schemas](../schemas/) - Structured formats for documentation
- [📚 Docs](../docs/) - Framework crosswalks and methodology

### External Resources

- [NIST AI RMF](https://www.nist.gov/itl/ai-risk-management-framework) - The foundational framework
- [NIST AI RMF Playbook](https://www.nist.gov/itl/ai-risk-management-framework/nist-ai-rmf-playbook) - Official implementation guidance
- [ISO/IEC 42001:2023](https://www.iso.org/standard/81230.html) - AI management system standard

---

## 🔄 Continuous Improvement

This example evolves as the repository grows:

Quarterly Reviews:

- Model selection strategy updated based on usage patterns
- Policy effectiveness evaluated
- New risks identified and documented
- Controls adjusted based on lessons learned

Version Control:

- Every governance decision is git-committed
- Changes documented in commit messages
- Evolution visible in repository history

Community Feedback:

- Issues and discussions inform policy updates
- Contributed examples expand the knowledge base
- Real-world adoption patterns improve guidance

---

Document Version: 1.0  
Last Updated: 2025-10-10  
Status: Published  
Framework: NIST AI RMF 1.0 (Demonstrating all four functions through practice)

---

*The best example is the one you're building. This repository is our example.*
