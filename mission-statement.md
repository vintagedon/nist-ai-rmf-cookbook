# Mission Statement: NIST AI RMF Cookbook

## Why This Repository Exists

RadioAstronomy.io is an AI-native organization. Six people managing an on-premises cluster producing research datasets that are being downloaded, cited, and used by other researchers. We couldn't do this work—certainly not efficiently—without AI deeply integrated into research, analysis, and operations.

That integration created a question: How do we govern AI systems responsibly at small-team scale? How do we practice Reponsible AI.

The answer wasn't in pre-built existing frameworks. NIST AI RMF provides governance structure but is deliberately abstract—it tells you *what* to think about, not *how* to operationalize it. Enterprise compliance programs assume dedicated security teams and substantial budgets. Neither matched our reality.

We needed operational governance we could actually implement. So we built it: policies, standards, risk assessments, model cards. Version-controlled, peer-reviewed, board-approved documentation mapping NIST AI RMF, CIS-RAM, CIS Controls, and Colorado SB-24-205 into practice.

Then we faced another question: Do we keep this internal, or share it?

## Why We Share

We produce scientific datasets and research that is published, cited and spawns research downstream. That downstreamfootprint, we believe, creates responsibility. Quality datasets require quality governance. Open science means transparency not just about results, but about the operational practices ensuring those results are sound.

We built what we needed. We're sharing it because:

The gap exists. Small teams producing impactful work need governance frameworks that actually work at their scale. Theoretical frameworks and enterprise programs don't translate. Someone needs to show it's achievable with realistic constraints.

We believe in the work. The astronomy research matters. The datasets matter. The downstream use matters. When your outputs have that kind of impact, formalizing how you manage the AI systems producing those outputs isn't optional—it's scientific integrity.

Open science means operational transparency. We publish datasets with methodology. We publish analysis with reproducible code. Governance is part of that chain. If AI assisted the research, stakeholders need to understand how we ensured quality, managed risks, and maintained trustworthiness.

## What This Repository Provides

This isn't aspirational guidance. It's what we actually use.

Operational governance system:

- Policies defining structure and oversight (AI Governance Policy)
- Standards for risk assessment, security controls, transparency (Risk Assessment, Secure AI Systems, Transparency & Disclosure)
- 130+ model cards documenting vendor landscape with NIST trustworthiness assessments
- Decision logs explaining framework selection rationale
- Templates for adapting these patterns to your context

Teaching documents, not just templates:
Each template includes inline guidance explaining the reasoning, worked examples from our implementation, and decision frameworks. You're not filling in blanks—you're understanding how to think about governance operationally, with proof it's achievable.

Framework integration that works:

- NIST AI RMF 1.0 for governance structure
- CIS-RAM for repeatable risk assessment methodology  
- CIS Controls v8.1 IG1 for technical baseline (56 controls, small-team focused)
- Colorado SB-24-205 for concrete regulatory language (voluntarily adopted)

We chose frameworks based on practical operationalizability, not compliance theater. The result: comprehensive governance achievable without enterprise budgets or armies of consultants.

## Who This Serves

Small teams producing impactful work. If your outputs matter—datasets being cited, models being deployed, research influencing others—you have downstream responsibility. This shows governance is achievable at your scale.

AI-native organizations. When AI is woven into everything you do, informal management doesn't scale. This provides systematic process you can actually implement.

Anyone navigating the US regulatory mess. Fragmented state laws, pending federal legislation, theoretical frameworks that don't operationalize. We built what works now, with concrete examples and real implementation.

Ourselves. This documentation serves our team. New members understand why we operate this way. The Review Board has documented rationale for decisions. Stakeholders see our commitment to responsible AI. And when regulations evolve, we have a foundation to build on rather than starting from scratch.

## What We're Learning

We went from Azure chaos with scattered AI accounts (v0.1) to operational governance on Google Workspace Enterprise with Gemini automation (v0.2). We formalized risk assessment processes. We documented 130+ models. We implemented CIS Controls IG1 baseline. We built comprehensive transparency standards.

The work continues. Risk scenarios expand as we encounter new use cases. Model cards update as vendors evolve. Templates refine as we discover gaps. This is a living system, not a finished product.

We learn as we build. We hope you learn from what we share. And when you adapt these patterns to your context, we'll learn from your implementation too. That's how open science works—bidirectional learning, shared progress.

## Core Principle

Downstream impact creates operational responsibility. When your work matters, how you manage the AI systems producing that work matters too. This repository shows it's achievable with realistic resources and systematic process.

We don't glorify what we do. We do it for a specific reason: scientific integrity demands it. And we share it because someone else might benefit from seeing governance work at small-team scale—or might teach us something we haven't considered yet.

That's the mission. Build what we need. Share what we learn. Improve what exists. Together.

## Important Disclaimer

This repository documents our operational approach to AI governance, tailored to RadioAstronomy.io's specific risk profile, infrastructure, and organizational context. While our team includes members with high-compliance IT backgrounds, we are not security auditors, compliance consultants, or legal advisors.

What this repository provides:

- Working example of governance implementation at small-team scale
- Templates and patterns you can adapt to your context
- Framework integration approach that proved operationalizable for us

What you should do:

- Assess your own risk profile and regulatory obligations
- Adapt these frameworks to match your specific context and constraints
- Consult qualified professionals for compliance audits, legal requirements, or regulated industry deployments
- Engage external advisors when stakes warrant expert review (we work with an outside security consultant—you should too)

Your implementation should look different from ours. Different risks, different infrastructure, different regulatory environment, different risk tolerance. The frameworks provide the process; you provide the context. Use this as a reference implementation and starting point, not a compliance checklist to copy verbatim.

If you're pursuing specific certifications (ISO 42001, SOC 2, FedRAMP) or operating in regulated industries (healthcare, finance, government), professional guidance isn't optional—it's how you ensure your governance actually meets requirements.

We share what works for us. You build what works for you. Professionals help ensure you're building it right.
