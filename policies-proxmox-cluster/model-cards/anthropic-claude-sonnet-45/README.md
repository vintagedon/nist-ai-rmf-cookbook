<!--
---
title: "Claude Sonnet 4.5 - Primary Infrastructure Agent"
description: "Deployment documentation for Claude Sonnet 4.5 serving as the primary AI agent for Proxmox Cluster infrastructure management"
owner: "VintageDon - https://github.com/vintagedon"
orcid: "https://orcid.org/0009-0008-7695-4093"
ai_contributor: "Claude (Anthropic)"
lastReviewed: "2025-10-26"
version: "1.0"
status: "Active"
tags:
- type: deployment-guide
- domain: deployed-model
- vendor: anthropic
- model: claude-sonnet-45
related_documents:
- "[Proxmox Model Cards](../README.md)"
- "[Model Card Library](../../../model-cards/README.md)"
type: deployment-guide
---
-->

---

# 🤖 Claude Sonnet 4.5

Primary AI agent for Proxmox Astronomy Cluster infrastructure management, policy development, and documentation generation.

---

## 📖 1. Overview

This directory documents the deployment of **Anthropic Claude Sonnet 4.5**, the primary production AI agent serving the Proxmox Astronomy Cluster. This model handles infrastructure management, policy development, documentation, and complex reasoning tasks requiring extensive tool access.

**Deployment Status:** ✅ **Active Production**

**Role:** Primary infrastructure agent with comprehensive MCP server ecosystem access

**Deployment Method:** Claude Desktop application with extended tool integrations

---

## 📂 2. Files Included

```markdown
anthropic-claude-sonnet-45/
├── 📄 README.md                                      # This file
├── 📄 anthropic-claude-sonnet-45-model-card.yaml    # Primary model card
```

**anthropic-claude-sonnet-45-model-card.yaml**
Primary model card documenting Claude Sonnet 4.5 deployment with Proxmox Cluster-specific context, including MCP integrations, access controls, risk assessment, and operational procedures.

---

## 🎯 3. Deployment Context

**Access Method:** Claude Desktop (Pro subscription)  
**Integration Points:**
- Filesystem MCP (vault read/write access)
- Cloudflare Developer Platform MCP
- Hugging Face MCP
- PDF Tools MCP
- Mermaid Chart MCP
- Google Drive MCP

**Primary Use Cases:**
- Infrastructure documentation and policy development
- Vault orchestration and knowledge synthesis
- Technical standard creation
- Model card curation
- Risk scenario documentation

**Risk Profile:** High trust deployment due to extensive tool permissions

---

## 📚 4. Related Resources

**Parent Directory:**
- [📁 Proxmox Model Cards](../README.md) - All deployed models

**Policy Framework:**
- [📁 Policies - Proxmox Cluster](../../README.md) - Governance framework
- [📁 Risk Scenarios](../../risk-scenarios/README.md) - Applicable risks

**Vendor Resources:**
- [Anthropic Claude Documentation](https://docs.anthropic.com/) - Official model specs
- [Claude Sonnet 4.5 Release Notes](https://www.anthropic.com/news/claude-4) - Model capabilities

---

## 📋 5. Documentation Metadata

**Primary Author:** VintageDon  
**Status:** Active production deployment  
**Last Reviewed:** 2025-10-26

---

**Document Version:** 1.0 | **Last Updated:** 2025-10-26 | **Status:** Active | **Model:** anthropic-claude-sonnet-45
