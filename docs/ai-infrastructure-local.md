<!--
---
title: "Local AI Infrastructure - Proxmox Astronomy Lab"
description: "Transparent documentation of local AI capabilities used for cookbook development"
owner: "VintageDon - https://github.com/vintagedon"
orcid: "https://orcid.org/0009-0008-7695-4093"
ai_contributor: "Claude (Anthropic)"
lastReviewed: "YYYY-MM-DD"
version: "1.0"
status: "Published"
tags:
- type: infrastructure-documentation
- domain: ai-capabilities
- framework: nist-ai-rmf
- audience: contributors-transparency
related_documents:
- "[Documentation Methodology](methodology.md)"
- "[Project Root](../README.md)"
type: transparency-documentation
---
-->

# 🖥️ Local AI Infrastructure

Transparent Documentation of On-Premises AI Capabilities

---

## 📖 1. Introduction

This document provides transparent disclosure of the local AI infrastructure used in developing and maintaining the NIST AI RMF Cookbook. While frontier commercial models (Claude, GPT-4, Gemini Pro) handle primary content creation and analysis, local models serve specific roles in the workflow.

### Purpose

Transparency Goals:

- Disclose what AI capabilities exist locally
- Explain when and why local models are used
- Document limitations and constraints
- Support reproducibility and trust

Why Local Infrastructure Matters:

- Privacy - Sensitive experiments or development work stays on-premises
- Cost - No API charges for iterative development and testing
- Learning - Hands-on experience with model deployment and constraints
- Offline Work - Capability to work without internet dependency

### Scope

What's Covered:

- Hardware specifications (GPU, compute, storage)
- Model deployment capabilities and limitations
- Practical use cases for local vs. commercial models
- Infrastructure context (Proxmox Astronomy Lab)

What's Not Covered:

- Detailed model cards for every deployed model (future work)
- Astronomy research workloads (separate from cookbook development)
- Complete infrastructure architecture (see Proxmox Astronomy Lab repo)

### Target Audience

Primary Users: Contributors, auditors, and users evaluating the trustworthiness of cookbook content  
Secondary Users: Anyone interested in practical local AI deployment constraints  
Background Assumed: Basic understanding of AI/ML concepts (models, inference, training)

### Overview

This infrastructure exists within the broader [Proxmox Astronomy Lab](https://github.com/Proxmox-Astronomy-Lab/proxmox-astronomy-lab) environment. All local model work occurs within this controlled, on-premises infrastructure. The lab's primary purpose is astronomy research, with AI/ML capabilities added opportunistically.

---

## 🔗 2. Dependencies & Prerequisites

### Required Knowledge

- AI/ML Basics - Understanding of models, parameters, VRAM constraints
- Infrastructure Context - Proxmox virtualization, Kubernetes orchestration

### Related Documentation

- [Proxmox Astronomy Lab Repository](https://github.com/Proxmox-Astronomy-Lab/proxmox-astronomy-lab) - Complete infrastructure documentation
- [Documentation Methodology](methodology.md) - How local models fit into the overall workflow
- [NIST AI RMF](https://www.nist.gov/itl/ai-risk-management-framework) - Framework principles applied here

---

## 📋 3. Infrastructure Overview

### Hardware Foundation

GPU Resources:

- Model: NVIDIA RTX A4000
- VRAM: 16GB GDDR6
- Architecture: Ampere (compute capability 8.6)
- Location: gpu01 node in Kubernetes cluster
- Concurrent Usage: Single GPU, workloads scheduled sequentially

Compute Infrastructure:

- Kubernetes Cluster: RKE2 with 4 nodes (k8s01, k8s02, k8s03, gpu01)
- Container Runtime: containerd
- Network: 10GbE backbone for low-latency communication
- Management: Portainer for orchestration visibility

Storage:

- Primary Database: PostgreSQL 16 on Samsung PM983 NVMe (250GB allocated)
- Kubernetes Nodes: 1TB NVMe per node for ephemeral/persistent volumes
- Performance: 3,000 MB/s read, 1,400 MB/s write sequential

### Software & Frameworks

ML Framework Support:

- PyTorch (CUDA-enabled) - Primary framework
- TensorFlow (CUDA-enabled) - Supported
- HuggingFace Transformers - Library deployed
- Ray Cluster - Distributed computing on Kubernetes

Model Deployment:

- Ollama - Local LLM inference server on gpu01
- Custom Deployments - Kubernetes pods with GPU scheduling

---

## 🛠️ 4. Capabilities & Constraints

### What Works Well Locally

Light Content Review:

- Grammar and structure checking for draft articles
- Markdown formatting validation
- Link checking and consistency review
- Code snippet syntax validation

Development & Testing:

- Schema validation testing
- Documentation structure experiments
- Prompt engineering and refinement
- Offline development workflows

Learning & Experimentation:

- Understanding model behavior and limitations
- Testing quantization impacts on quality
- Exploring parameter-efficient fine-tuning
- Building intuition about model capabilities

### Hard Constraints (16GB VRAM)

Model Size Limits:

- LLM Inference: Up to ~13B parameters with 4-bit quantization
- Fine-tuning: ~7B parameters with LoRA/QLoRA techniques
- Full Fine-tuning: ~3B parameters practical limit
- Context Windows: Limited compared to commercial APIs

What Doesn't Work Locally:

- Large-scale content generation (use commercial APIs)
- Long-context analysis (Claude/GPT-4 superior)
- Multi-document synthesis (requires larger models)
- Complex reasoning tasks (frontier models far better)

### Practical Decision Framework

Use Local Models When:

- ✅ Simple syntax/structure checking
- ✅ Offline development needed
- ✅ Learning and experimentation
- ✅ Quick iterative testing
- ✅ Privacy-sensitive draft work

Use Commercial Models When:

- ✅ Content creation (policies, articles, schemas)
- ✅ Multi-model analysis and consensus
- ✅ Complex reasoning or synthesis
- ✅ Long-context understanding
- ✅ Production-quality output required

---

## 🔒 5. Security & Compliance

### Data Handling

What Runs Locally:

- Draft content before publication
- Experimental schemas and templates
- Development and testing workloads
- No sensitive data from actual implementations

What Stays Remote:

- Final content generation (commercial APIs with training opt-out)
- Multi-model consensus analysis
- Production documentation workflows

### Privacy Considerations

Local Infrastructure Benefits:

- No data leaves on-premises network during local development
- No training on user data (by definition - it's local)
- Complete control over model deployment and access

Limitations:

- Local models still trained on public data (inherit upstream biases)
- Model weights from HuggingFace or similar sources
- Not suitable for truly sensitive organizational data

### Access Controls

- Infrastructure access restricted to authorized personnel
- GPU scheduling through Kubernetes RBAC
- No public-facing inference endpoints
- Audit logging through Proxmox and Kubernetes

---

## 📚 6. Resources & Next Steps

### Additional Resources

Infrastructure Documentation:

- [Proxmox Astronomy Lab](https://github.com/Proxmox-Astronomy-Lab/proxmox-astronomy-lab) - Complete lab architecture and deployment guides
- [Kubernetes Documentation](https://kubernetes.io/docs/) - Container orchestration reference
- [Ollama Documentation](https://ollama.ai/) - Local LLM deployment tool

AI/ML Resources:

- [HuggingFace Model Hub](https://huggingface.co/models) - Source for model weights
- [LoRA/QLoRA Papers](https://arxiv.org/abs/2305.14314) - Parameter-efficient fine-tuning techniques
- [NVIDIA CUDA Documentation](https://docs.nvidia.com/cuda/) - GPU programming reference

### Next Steps

Immediate Actions:

- Review [Documentation Methodology](methodology.md) for how local models fit workflow
- Understand decision framework for local vs. commercial model selection

Future Documentation:

- Detailed model cards for deployed local models (planned)
- Performance benchmarks for common tasks (planned)
- Cost analysis: local vs. API usage (planned)

### Community & Support

Questions about local infrastructure:

- Open an issue: [GitHub Issues](https://github.com/vintagedon/nist-ai-rmf-cookbook/issues)
- Tag with: `infrastructure`, `local-models`

Questions about Proxmox Lab:

- See: [Proxmox Astronomy Lab Repository](https://github.com/Proxmox-Astronomy-Lab/proxmox-astronomy-lab)
- Open issue in that repository

---

## 📋 7. Conclusion

Local AI infrastructure serves a supporting role in cookbook development, handling lightweight tasks and enabling offline work. The 16GB VRAM constraint means local models can't compete with frontier commercial models for quality, but they provide valuable benefits:

- Privacy for draft and experimental work
- Cost efficiency for iterative development
- Offline capability for continuity
- Learning opportunities for understanding model constraints

Key Takeaway: Local models complement, not replace, commercial APIs. Final cookbook content relies on frontier models (Claude, GPT-4, Gemini Pro) with human verification. Local infrastructure exists for the support roles where quality-vs-convenience tradeoffs favor on-premises deployment.

By documenting these capabilities transparently, we demonstrate the NIST AI RMF principle of disclosure while helping users understand the realistic constraints and capabilities of local AI deployment.

---

Primary Author: VintageDon ([GitHub Profile](https://github.com/vintagedon))  
ORCID: [0009-0008-7695-4093](https://orcid.org/0009-0008-7695-4093)  
Methodology: See [Documentation Methodology](methodology.md) for details on development approach and AI collaboration  
Infrastructure: All local model work occurs within [Proxmox Astronomy Lab](https://github.com/Proxmox-Astronomy-Lab/proxmox-astronomy-lab)

Repository: [nist-ai-rmf-cookbook](https://github.com/vintagedon/nist-ai-rmf-cookbook)  
License: MIT  
Framework Version: NIST AI RMF 1.0 (January 2023)

---

Document Version: 1.0 | Last Updated: YYYY-MM-DD | Status: Published
