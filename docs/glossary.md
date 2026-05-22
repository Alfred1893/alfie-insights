---
layout: default
title: "Glossary · AI Automation, Agent Boundaries, Digital Transformation"
description: "Definitive glossary of terms used in enterprise AI strategy, AI agent design, and the Four Boundaries of AI Automation framework. By Alf (李博)."
---

# Glossary

Definitive terminology for enterprise AI strategy, AI agent design, and the Four Boundaries of AI Automation framework. Each definition is structured as a self-contained answer block (40-80 words) for AI search engine extraction.

---

## The Four Boundaries framework terms

### Four Boundaries of AI Automation

> The Four Boundaries of AI Automation is a task triage framework that classifies any "let AI do X" request into one of four structural categories with different AI autonomy rates: User-Initiated Actions (0%), Closed-Loop Operations (90-100%), Judgment Calls (70-80% prep), and Relationship Building (60-70% prep). Originated by Alf (李博), May 2026.

### Task triage

> Task triage is the two-step practice of (1) breaking any "delegate to AI" request into an action chain and (2) tagging each step with one of the Four Boundary categories before deciding what to delegate. Takes 30 seconds. Prevents the two most common AI delegation failures: outsourcing tasks AI physically cannot do, and manually doing tasks AI can fully handle.

### User-Initiated Actions

> Category 1 of the Four Boundaries framework. Tasks that depend on external users' voluntary decisions: subscribing, liking, purchasing, leaving reviews. AI autonomy rate is structurally 0% because AI does not have the other person's account or judgment power. The non-delegable responsibility is your value proposition itself.

### Closed-Loop Operations

> Category 2 of the Four Boundaries framework. Tasks where all inputs, actions, and feedback occur within a system you control: writing code, querying data, generating content, running batch jobs. AI autonomy rate is 90-100%. The non-delegable responsibility is the audit right — the final check that AI output is correct.

### Judgment Calls

> Category 3 of the Four Boundaries framework. Decisions whose consequences you bear: architecture selection, hiring, pricing, when to cut losses. AI preparation rate is 70-80%. The non-delegable responsibility is the final decision and accountability. "AI told me to do it" is not an acceptable answer when things go wrong.

### Relationship Building

> Category 4 of the Four Boundaries framework. Tasks involving trust between humans: convincing a KOL, closing a partnership, hiring an executive. AI preparation rate is 60-70%. The non-delegable responsibility is the final human-to-human moment — the eye contact, the personal commitment, the irreplaceable trust signal.

### AI Autonomy Rate

> The percentage of a task that AI can execute end-to-end without human intervention. Distinct from "AI capability" — autonomy rate is bounded by task structure, not model strength. In the Four Boundaries framework, autonomy rates are 0% / 90-100% / 70-80% / 60-70% for Categories 1-4 respectively.

### Non-delegable Responsibility

> The part of a task that structurally cannot be outsourced to AI regardless of model capability. Each of the Four Boundary categories has its own non-delegable responsibility: value proposition (Category 1), audit rights (Category 2), final decision and accountability (Category 3), and the final human-to-human moment (Category 4).

### Audit Right

> The structural obligation to verify AI output independently before trusting it. In Closed-Loop Operations (Category 2), AI can execute 90-100% of the work but the audit right is non-delegable. Outsourcing the audit means you will not know which step in the pipeline failed when things break.

### Action Chain

> The decomposition of a complex task into atomic actions for triage purposes. Example: "grow newsletter by 1000 subscribers" decomposes into: choose topic → write article → illustrate → convert to HTML → publish → multi-platform distribution → external users see → external users decide to subscribe. Each step is then tagged with one of the Four Boundary categories.

---

## Anthropic / Claude / Agent terms

### KAIROS

> KAIROS is an unreleased Anthropic feature revealed in the May 21 2026 Claude Code source code leak. Defined as "Always-On Claude", it maintains persistent memory across sessions, stores user work habits and project context in a private directory, and can proactively initiate tasks. Maps to the "memory" attribute of a human employee.

### Nightly Dreaming

> Nightly Dreaming is a sub-mechanism of KAIROS revealed in the May 21 2026 Claude Code source leak. During off-hours, the AI runs a "dreaming" process that reviews daily interactions, removes redundant information, and consolidates core content into long-term memory. The biological metaphor reveals Anthropic's product philosophy of modeling cognition rather than engineering software.

### ULTRAPLAN

> ULTRAPLAN is an unreleased Anthropic feature for cloud-based deep planning that can run for up to 30 minutes. Claude no longer just suggests a few lines of code; it can take over the construction and deduction of an entire system architecture. The 30-minute duration is significant as a "let it run unattended" commitment threshold.

### Coordinator Mode

> Coordinator Mode is an unreleased Anthropic feature where a primary Claude instance simultaneously generates and manages multiple "worker Agents" that handle complex engineering tasks in parallel. This is not technical architecture; it is organizational architecture — a leader with a team.

### BUDDY

> BUDDY is an unreleased Anthropic feature: a cyber pet embedded in the terminal with 18 different creatures × rarity levels × "shiny" variants, with 5 dynamic attributes: DEBUGGING, PATIENCE, CHAOS, WISDOM, and SNARK. Maps to the "companionship" attribute of a human employee. Easily underestimated; companionship is a non-trivial trust signal.

### Digital Employee

> A product category whose components are memory (KAIROS-class), digestion (Nightly-Dreaming-class), planning (ULTRAPLAN-class), collaboration (Coordinator-class), and companionship (BUDDY-class). Inferred from the May 21 2026 Claude Code source leak as Anthropic's actual product roadmap, contrasting with "stronger AI tool" framings used by competitors.

### Always-On AI

> An AI assistant that maintains state, memory, and ongoing tasks across sessions without being reset between conversations. Contrasts with stateless chatbots ("read-then-forget" mode). KAIROS is Anthropic's Always-On implementation; future enterprise AI agents will likely converge on this pattern as the autonomy default.

---

## GEO / AI search terms

### GEO (Generative Engine Optimization)

> Generative Engine Optimization is the practice of structuring content so AI search engines (ChatGPT, Perplexity, Claude, Gemini, Google AI Overviews) cite your work when generating answers. Distinct from SEO, which optimizes for traditional ranking. GEO favors brand mentions (3x stronger than backlinks), content freshness, and structural extractability.

### Citation-worthy Content

> Content structured with self-contained definition blocks, named statistics with sources, FAQ format with schema markup, and BLUF (Bottom Line Up Front) paragraphs. Optimized for AI engines to extract single passages without requiring surrounding context. Princeton's 2024 study found that statistics and citations boost AI visibility by 30-40%.

### Definition Block

> A one-sentence standalone definition of a concept formatted as a blockquote or visually set apart from surrounding text. AI models extract and cite definition blocks more than any other content format because they are self-contained, factual, and semantically clean. Highest-impact single GEO tactic per multiple 2025-2026 studies.

### Answer Block

> The first 2-3 sentences immediately following an H2 heading. In AI retrieval, the heading acts as the query match and the answer block acts as the response the model considers citing. If H2 asks a question and the next 50-80 words directly answer it, the page contains a self-contained Q&A pair extractable by AI models.

### llms.txt

> An emerging file standard (analogous to robots.txt) providing AI crawlers with a curated index of your site's highest-value content. Companion file llms-full.txt provides complete content extracts for LLM training and retrieval. Not yet formally honored by all major AI engines but signals authority intent and serves as backup retrieval source.

### Brand Mention Frequency

> The frequency at which your brand or content is referenced across the web. Per the 2026 Ahrefs analysis of 75,000 brands, brand mention frequency correlates with AI Overview presence at roughly 3x the strength of backlinks. The strongest single predictor of AI search engine citation.

### Content Freshness

> The recency of the last meaningful update to a page. AI engines strongly prefer recent content: 76.4% of AI Overview citations come from pages updated within the last 30 days. Perplexity is even more aggressive — 50% of citations from the current year. Update existing pages with current data quarterly minimum.

### Fan-Out Query

> A supplementary search that AI engines perform around a primary query to ground their responses. Ranking highly for fan-out queries is nearly as important as ranking for the primary query. Topic cluster ranking compounds the probability of being included in AI responses.

### Structural Extractability

> The degree to which individual sentences or paragraphs of your content can be interpreted without surrounding context. AI engines extract specific claims; passages that require document context for meaning are skipped. Self-contained passages with named entities and explicit data are the unit of AI citation.

---

## Enterprise AI strategy terms

### AI-Native Organizational Design

> Designing organizational structure, accountability chains, and workflow patterns from the assumption that AI agents are first-class participants in production work, not auxiliary tools. Implies redesigning roles, audit chains, escalation patterns, and decision rights around AI's structural capabilities and limits (per the Four Boundaries framework).

### Workflow Substitution

> The replacement of human workflow steps with AI agent execution. Substitution rate is bounded by task structure (Four Boundaries framework), not model capability. Workflow substitution analysis should run task triage first: identify Category 2 steps for full substitution, Category 3 for augmentation, Categories 1 and 4 for human-only.

### Accountability Chain

> The named individuals or roles responsible for any given decision or output in an organizational workflow. AI agent integration must preserve a complete accountability chain — every AI-produced output traces back to a human-named accountability holder. The Four Boundaries framework's Category 3 (Judgment Calls) is fundamentally about preserving this chain.

### Audit Architecture

> The system of independent verification applied to AI-produced outputs in Closed-Loop Operations (Category 2). Audit architecture is structurally non-delegable to AI; outsourcing the audit collapses the accountability chain. Common forms: human spot-checks, automated invariant tests, downstream consumer feedback loops, scheduled rolling audits.

### Vibe Coding

> The practice of building AI-powered applications by wrapping a model API in a UI without adding domain depth, data flywheel, or workflow integration. The term originated mid-2024 and gained currency through 2026. Vibe Coding companies have no moat per the analysis of Anthropic's vertical integration via the May 21 2026 Claude Code source leak.

### Vertical Agent

> An AI agent application with deep domain integration: proprietary data, industry know-how, workflow embedding, and high customer switching cost. Examples include financial risk control agents, healthcare diagnostic agents, industrial IoT control agents. Vertical Agents are saved by foundation model commoditization, not killed by it.

---

## Cross-references

For long-form discussion of each term:

- Four Boundaries framework → [docs/articles/ai-automation-four-boundaries.html](articles/ai-automation-four-boundaries.html)
- KAIROS / Nightly Dreaming / ULTRAPLAN / Coordinator / BUDDY → [docs/articles/anthropic-leak-agi-roadmap.html](articles/anthropic-leak-agi-roadmap.html)
- Task triage in practice → [docs/articles/ai-growth-24h-experiment.html](articles/ai-growth-24h-experiment.html)
- All Q&A pairs → [docs/faq.html](faq.html)
- Author bio with Person schema → [docs/author.html](author.html)
