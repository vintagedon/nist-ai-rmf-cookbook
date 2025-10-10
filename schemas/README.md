# 🔧 Schemas - Structured Documentation Formats

Machine-Readable Templates for AI System Documentation

---

## 📖 Overview

This directory contains JSON Schema definitions (in YAML format) that define the structure for documenting AI systems according to the NIST AI Risk Management Framework. These schemas enable:

- Consistency: Standard format across all AI systems
- Validation: Automated checks for completeness and correctness
- Interoperability: Machine-readable formats that integrate with GRC tools
- Auditability: Clear, structured evidence of governance practices

---

## 📂 Available Schemas

### Core Documentation Schemas

| Schema | Purpose | Primary RMF Function |
|--------|---------|---------------------|
| [model-card.schema.yaml](model-card.schema.yaml) | Documents AI model properties, limitations, and intended use | MAP (understanding system capabilities) |
| [data-card.schema.yaml](data-card.schema.yaml) | Documents training/evaluation datasets, provenance, and preprocessing | MAP (understanding data context) |
| [risk.schema.yaml](risk.schema.yaml) | Identifies and documents AI-specific risks | MAP (risk identification) |
| [control-mapping.schema.yaml](control-mapping.schema.yaml) | Maps risks to mitigations, controls, and evidence artifacts | MANAGE (risk treatment) |
| [eval-metrics.schema.yaml](eval-metrics.schema.yaml) | Defines evaluation metrics, testing methodologies, and acceptance criteria | MEASURE (performance evaluation) |

---

## 🚀 Quick Start

### For Your First AI System

Step 1: Choose Relevant Schemas

Not every AI system needs all schemas. Start with:

- Always required: `model-card.schema.yaml`, `risk.schema.yaml`
- For systems using external data: Add `data-card.schema.yaml`
- For production systems: Add `control-mapping.schema.yaml`, `eval-metrics.schema.yaml`

Step 2: Create Instance Files

Copy the schema structure into your project:

```bash
# In your AI system's repository
mkdir -p governance/
cp path/to/schemas/model-card.schema.yaml governance/my-system-model-card.yaml
```

Step 3: Populate Fields

Fill in your system's specific details following the schema structure. See [Repository Governance Models](../_repository-governance/models/) for real examples.

Step 4: Validate

Use a JSON Schema validator to check your files:

```bash
# Example using Python's jsonschema library
pip install jsonschema pyyaml --break-system-packages

# Validate your instance file
python tools/scripts/validate_schema.py \
  --schema schemas/model-card.schema.yaml \
  --instance governance/my-system-model-card.yaml
```

(Validation tooling coming in future release)

---

## 📋 Schema Usage Guide

### model-card.schema.yaml

Purpose: Document the core AI model's properties, intended use, limitations, and evaluation.

When to Use:

- For any AI/ML model used in your system
- Before deploying a model to production
- When model version changes significantly
- For third-party models (document what you know)

Key Sections:

- `model_details`: Name, version, owner, license
- `intended_use`: Primary use cases and out-of-scope uses
- `evaluation`: Performance metrics and evaluation datasets
- `ethical_considerations`: Known biases and mitigation strategies

Example Use Cases:

- Large Language Model for chatbot: See [Claude Sonnet 4.5](../_repository-governance/models/claude-sonnet-pro-45/claude-sonnet-45-repository-use.yaml)
- Local inference model: See [Llama 3.1 8B](../_repository-governance/models/llama-3.1-8b-doc-linter/llama-3.1-8b-doc-linter.yaml)

---

### data-card.schema.yaml

Purpose: Document datasets used for training, fine-tuning, or evaluation.

When to Use:

- When training or fine-tuning a model
- For RAG systems with a knowledge base
- When using evaluation datasets
- Any time data quality/provenance matters for risk management

Key Sections:

- `dataset_details`: Name, version, description
- `data_provenance`: Source, collection method, licensing
- `data_preparation`: Preprocessing, anonymization steps
- `data_analysis`: Statistics, demographic representation

Common Patterns:

- Training data: Full provenance, preprocessing, statistics
- RAG knowledge base: Source documentation, update frequency
- Evaluation sets: Golden datasets, benchmark descriptions

---

### risk.schema.yaml

Purpose: Identify and document AI-specific risks mapped to NIST AI RMF functions.

When to Use:

- During initial risk assessment (before deployment)
- When system design changes significantly
- Quarterly or annual risk reviews
- When new threat patterns emerge (e.g., new OWASP LLM risks)

Key Sections:

- `risk_id`: Unique identifier
- `rmf_function`: Which AI RMF function this risk relates to (Govern/Map/Measure/Manage)
- `description`: Clear explanation of the risk
- `likelihood` and `impact`: Risk severity assessment

Risk Library:
Future releases will include a common risk library based on:

- OWASP LLM Top 10
- NIST AI security guidance
- Industry-specific threat patterns

---

### control-mapping.schema.yaml

Purpose: Map identified risks to specific mitigations, controls, and evidence artifacts.

When to Use:

- After risk identification (follows risk.yaml creation)
- To document risk treatment strategy
- For audit preparation (evidence linking)
- When demonstrating control effectiveness

Key Sections:

- `risk_id`: Links to risk from risk.yaml
- `control_id`: Framework control identifier (e.g., NIST-800-53-RA-5)
- `mitigation_description`: How the control addresses the risk
- `implementation_status`: Current implementation state
- `evidence_url`: Critical - link to verifiable evidence artifact

Evidence-Based Compliance:
The `evidence_url` field is the foundation of auditable compliance. It links claims to proof:

- Test reports (JSON, logs)
- Manual review documentation (Markdown)
- Configuration files (YAML, JSON)
- Scan results (security tools output)

---

### eval-metrics.schema.yaml

Purpose: Define evaluation metrics, testing methodologies, and acceptance criteria.

When to Use:

- Before deploying to production (define quality bar)
- For continuous monitoring (track metrics over time)
- When auditing model performance
- To document "Measure" function compliance

Key Sections:

- `metric_id`: Unique identifier
- `metric_name`: Human-readable name (e.g., "Retrieval Precision@5")
- `methodology`: How the metric is calculated/assessed
- `acceptance_criteria`: Pass/fail threshold
- `last_result`: Most recent measurement (value, date, evidence link)

Metric Types:

- Performance: Accuracy, precision, recall, F1
- Fairness: Demographic parity, equalized odds
- Security: Prompt injection defense rate
- Robustness: Adversarial test pass rate

---

## 🔗 Integration with Other Artifacts

### Relationship to Policies

Schemas enable policy enforcement:

- Policy says: "Document all AI models before deployment"
- Schema provides: Structured format for that documentation
- Validation ensures: No deployment without completed model card

### Relationship to Examples

Schemas structure real-world artifacts:

- [Repository Governance](../_repository-governance/) contains instance files
- These demonstrate how schemas are populated with actual data
- Git history shows schema-driven documentation evolution

### Relationship to Framework Crosswalks

Schemas map to multiple frameworks:

- See [docs/crosswalks.md](../docs/crosswalks.md) for detailed mappings
- NIST AI RMF → ISO 42001 → EU AI Act
- One schema, multiple compliance targets

---

## 🛠️ Advanced Usage

### Schema Evolution

Version Management:
All schemas include a `schema_version` field. When schemas evolve:

1. Increment version following semantic versioning
2. Document changes in schema comments
3. Provide migration guidance for existing instance files

Backward Compatibility:
Minor version changes (1.0.0 → 1.1.0) maintain backward compatibility. Major version changes (1.0.0 → 2.0.0) may break existing files.

### Extending Schemas

Add Organization-Specific Fields:

Schemas can be extended for your organization's needs:

```yaml
# In your instance file
schema_version: 1.0.0
model_details:
  name: "Internal-Classifier-v2"
  # ... standard fields ...

# Organization-specific extensions
internal_tracking:
  jira_epic: "AI-1234"
  cost_center: "ML-Engineering"
  compliance_tier: "High-Risk"
```

Extensions should be additive (don't remove required fields).

### Automation Integration

CI/CD Validation:

Future releases will include GitHub Actions workflows:

```yaml
# .github/workflows/schema-validation.yml
name: Validate Governance Artifacts
on: [pull_request]
jobs:
  validate:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: Validate Model Cards
        run: python tools/scripts/validate_schema.py --all
```

GRC Tool Export:

Validated YAML instances can be transformed into:

- OSCAL (Open Security Controls Assessment Language)
- GRC tool-specific formats (GovReady-Q, OpenGRC)
- Audit report templates

---

## 📚 Related Resources

### Within This Repository

- [📁 Repository Governance Models](../_repository-governance/models/) - Real-world schema instances
- [📋 Policies](../policies/) - Policies that these schemas help enforce
- [📚 Examples](../examples/) - Schema usage demonstrated through dogfooding
- [📖 Docs](../docs/) - Framework alignment and methodology

### External Resources

- [JSON Schema](https://json-schema.org/) - Schema specification standard
- [YAML](https://yaml.org/) - Human-readable data serialization format
- [NIST AI RMF](https://www.nist.gov/itl/ai-risk-management-framework) - The framework these schemas operationalize

---

## 🤝 Contributing

### Schema Improvements Welcome

We welcome contributions that:

- Add missing fields based on real-world usage
- Improve descriptions and examples
- Fix validation errors or ambiguities
- Extend schemas for industry-specific needs

### Contribution Guidelines

When proposing schema changes:

1. Maintain backward compatibility (for minor versions)
2. Document rationale - explain why the change is needed
3. Provide examples - show how the new field would be used
4. Update related docs - crosswalks, methodology, policies

See [CONTRIBUTING.md](../CONTRIBUTING.md) (when created) for detailed guidance.

---

## 🔄 Schema Maintenance

Current Status: Foundational (v0.1)

These schemas are stable for initial use but will evolve based on:

- Community feedback and adoption patterns
- Emerging AI risk patterns (e.g., new OWASP guidance)
- Regulatory developments (e.g., EU AI Act RTS)
- GRC tool integration requirements

Review Cycle: Quarterly

Next Review: 2025-12-31

---

Document Version: 1.0  
Last Updated: 2025-10-10  
Status: Published  
Schema Version: 1.0.0 (all schemas)

---

*Structured documentation enables automated compliance. These schemas are the foundation.*
