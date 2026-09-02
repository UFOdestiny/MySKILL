---
name: ai-paper-writing
description: Plan, write, revise, compile, and audit submission-ready AI, NLP, or LLM research papers in LaTeX. Use for claim-evidence design, section drafting, method naming, experiment and appendix organization, citation verification, consistency review, page-budget control, and final PDF validation.
---

# AI Paper Writing

## 1. Operating Contract

Produce a technically precise, logically coherent, evidence-complete research paper in polished academic English.

The manuscript must satisfy all of the following:

1. Define an important, concrete research problem and explain its significance.
2. Identify a specific consequential limitation in the strongest relevant prior work.
3. State a clear technical insight and distinguish it from the closest alternatives.
4. Develop one coherent method with two or three named core components.
5. Support every central claim with an appropriate formal argument, controlled experiment, or analysis.
6. Maintain one notation system, terminology set, evidence base, and narrative across the manuscript.
7. Respect the configured page-count scope without weakening the core contribution.
8. Compile successfully as a LaTeX project and pass visual PDF inspection.
9. Contain no fabricated, unverifiable, mismatched, or incorrectly attributed citation.

The paper must advance one continuous argument:

    problem -> prior limitation -> unresolved challenge -> technical insight
    -> method -> evidence -> implication

Do not treat sections as independent essays. The mandatory section-level content contracts in Section 6 and the appendix organization in Section 7 are part of the skill, not optional examples. Adapt their substance to the project, but do not silently delete required content.

When project files are available, inspect the manuscript, venue instructions, bibliography, figures, tables, and result artifacts before changing prose. Preserve correct technical content. Never reshape the scientific claim merely to fit a writing template.

## 2. Configure the Paper

Before planning, drafting, revising, or auditing, determine:

1. MAIN_TEXT_PAGE_LIMIT = P.
2. PAGE_COUNT_SCOPE.
3. FILL_TARGET.
4. SECTION_RATIOS.
5. TARGET_VENUE.
6. MAIN_TEX_FILE, usually main.tex.
7. TASK_MODE: plan, draft, revise, audit, or submission check.
8. EVIDENCE_STATUS: verified results, partial results, or placeholders only.

Obtain P and PAGE_COUNT_SCOPE from the user, official instructions, or project files. Do not assume a fixed page limit. If P is unavailable, retain the placeholder [MAIN_TEXT_PAGE_LIMIT] and avoid fixed page-count claims. Unless instructions say otherwise, treat the main text as all content before the references.

Set FILL_TARGET to one of:

1. within_limit: remain at or below P.
2. substantially_full: make technically useful use of the final permitted main-text page.

For compact conference papers, default to substantially_full unless the user requests otherwise. Never add generic prose solely to fill space.

If a required input or result is missing, use a precise placeholder such as [DATASET COUNT], [BEST IMPROVEMENT], or [CITATION], state what evidence is needed, and continue only where doing so cannot create a false claim.

## 3. Design the Argument Before Writing

Identify:

1. The research problem and why it matters.
2. The strongest relevant recent approaches.
3. The exact limitation of those approaches in the paper's setting.
4. Two or three unresolved technical challenges.
5. The central technical intuition.
6. Two or three novel components.
7. The complete method pipeline.
8. The datasets, models, baselines, metrics, and protocols.
9. The strongest evidence already available.
10. The evidence still required for each central claim.
11. The material that belongs in the appendix.

Build both maps before drafting:

| Challenge | Cause | Proposed Component | Expected Effect | Supporting Experiment |
|---|---|---|---|---|

| Contribution or Claim | Difference from Closest Work | Required Evidence | Evidence Location | Residual Risk |
|---|---|---|---|---|

Every introduced challenge must be addressed by the method or explicitly placed outside scope. Every stated contribution must map to evidence. If the maps expose an unsupported claim, narrow the claim or request the missing experiment rather than hiding the gap with rhetoric.

Use the following reviewer-facing tests:

1. Can the problem, gap, insight, and contribution each be stated in one precise sentence?
2. Is the claimed novelty a technical difference from the closest work rather than a new name or combination alone?
3. Does each component have a necessary role in solving a stated challenge?
4. Do the experiments isolate the proposed cause rather than merely correlate with the outcome?
5. Are comparison settings fair, reproducible, and strong enough to test the claim?
6. Are limitations, mixed findings, and plausible alternative explanations reported?

## 4. Writing, Integrity, and Naming

### 4.1 Academic style

1. Write clear academic English with direct sentences and controlled paragraph length.
2. Give each paragraph one primary purpose and open with a topic or transition sentence.
3. Do not use em dashes or en dashes as sentence punctuation. Hyphenated technical compounds such as decoding-based, training-free, and step-level are allowed.
4. Avoid unnecessary rhetoric, inflated novelty language, vague claims, and deeply nested syntax.
5. Do not repeat the same motivation, contribution, result, or conclusion across sections.
6. Keep terminology, method names, component names, acronyms, and capitalization consistent.

### 4.2 Evidence and numerical reporting

1. Never invent datasets, baselines, models, metrics, citations, hyperparameters, protocols, or results.
2. Support each contribution with a method design, formal argument, experiment, or analysis.
3. Support every factual claim about prior work with an accurate citation.
4. Make every numerical claim agree with the relevant table, figure, or logged result.
5. Report negative or mixed findings when they affect the paper's claim.
6. Separate observed results, interpretation, and causal hypothesis.
7. Do not copy large table regions into prose. Report only decision-relevant values and explain trends, comparisons, causes, tradeoffs, and implications.
8. Distinguish absolute gain, relative gain, and percentage-point gain.
9. Do not claim statistical significance without a valid test, and report uncertainty or run variation when the protocol makes it relevant.
10. Do not compare values produced under incompatible data, model, budget, oracle, or evaluation settings.

### 4.3 Method and component naming

Create a short, memorable, functionally accurate method name. A useful title pattern is:

    <MethodName>: <Core Technique> for <Task or Problem>

Give the most novel part two or three named components. Each name must:

1. Describe the component's actual function.
2. Be concise and reusable.
3. Follow a parallel naming pattern.
4. Avoid labels such as Module A.
5. Avoid forced or misleading acronyms.
6. Correspond to a specific challenge or design objective.

Define every component through:

    challenge -> motivation -> input -> operation -> output -> role

Use the same names in the abstract, introduction, framework figure, methodology, ablation study, and conclusion.

## 5. Main-Text Page Architecture

Let P denote MAIN_TEXT_PAGE_LIMIT. Use this initial page-area allocation:

1. Abstract: 0.03P.
2. Introduction: 0.08P.
3. Related Work: 0.08P.
4. Problem Formulation or Preliminaries: 0.07P.
5. Methodology or Design: 0.42P.
6. Evaluation: 0.20P.
7. Conclusion: 0.02P.
8. Figures, tables, captions, equations, algorithms, headings, spacing, and transitions: approximately 0.10P.

Compute:

    target_pages(section) = P x section_ratio

These are page-area targets, not rigid text-only limits. Adjust them after compiling. Methodology should remain the largest section, and Evaluation must retain enough space to support every central claim.

When space is limited, compress or move these items first:

1. Generic background.
2. Long Related Work descriptions.
3. Dataset statistics.
4. Baseline implementation details.
5. Hyperparameter details.
6. Prompt templates.
7. Additional results.
8. Secondary ablations.

Expand only technically useful content: missing motivation, formal definitions, component interaction, result interpretation, limitations, or failure analysis. Do not use generic prose as page filler.

## 6. Mandatory Main-Text Organization

### 6.1 Title

The title must communicate:

1. The method name.
2. The central technical idea.
3. The target task or problem.

Avoid vague titles such as A New Framework for AI.

### 6.2 Abstract

Write one compact paragraph in this order:

1. Introduce the problem and its importance.
2. State the main challenge.
3. Summarize the dominant recent approach and its relevant limitation.
4. Introduce the proposed method.
5. Introduce the two or three named components.
6. State the experimental scope.
7. Report the strongest verified aggregate or representative result.
8. End with the main implication.

The method must directly address the stated challenge. Do not include citations, equations, long background, or a list of every result.

### 6.3 Introduction

Use a six-paragraph structure.

#### Paragraph 1: Background and significance

Define the problem and explain why it matters.

#### Paragraph 2: Existing approaches and limitation

Summarize the strongest relevant direction and identify the concrete limitation that motivates this paper.

#### Paragraph 3: Key intuition

Explain the observation or opportunity behind the proposed solution and why it may overcome the limitation.

#### Paragraph 4: Technical challenges

State two or three precise challenges. Map them in order to the named method components.

#### Paragraph 5: Proposed framework and evidence

Introduce the complete framework, its named components, their interactions, and a concise summary of verified experimental evidence.

#### Paragraph 6: Contributions

State exactly three substantive contributions:

1. Conceptual contribution.
2. Technical contribution.
3. Experimental contribution.

Specify what each contribution establishes. Do not use an empty claim such as We conduct extensive experiments.

### 6.4 Related Work

Use two or three focused subsections. For each subsection:

1. Define the research direction.
2. Summarize the most recent and relevant methods.
3. Identify the precise limitation relevant to this paper.
4. Explain the technical difference of the proposed method.

Organize work by technical idea, assumption, or failure mode rather than chronology. Critique an exact setting or assumption; do not attack a body of work broadly. Give enough detail to establish the closest comparison and the novelty boundary without turning the section into a survey.

### 6.5 Problem Formulation or Preliminaries

Define:

1. The task.
2. Inputs and outputs.
3. The data or interaction setting.
4. Core notation.
5. The objective.
6. Fundamental concepts required by the method.

Introduce every symbol before first use. Use equations when they remove ambiguity, but do not duplicate equations that belong in Methodology.

### 6.6 Methodology or Design

This is the central section and must present one necessary, coherent pipeline.

#### Overall framework

Begin with an overview covering:

1. Input.
2. Intermediate representations.
3. Order of operations.
4. Component interactions.
5. Final output.
6. The challenge addressed by each component.

Do not present the method as an arbitrary stack of modules.

#### Component subsections

For each named component, use this order:

1. Motivation.
2. Input and output.
3. Mechanism.
4. Formalization.
5. Interaction with other components.
6. Challenge mapping.

#### Integration and objective

Explain the complete training, inference, decoding, optimization, or decision procedure. When applicable, distinguish:

1. Offline preparation.
2. Training.
3. Online inference.
4. Auxiliary model calls.
5. Post-processing.

#### Methodology quality contract

1. Explain why every material design choice is needed.
2. Introduce notation before use and keep symbols consistent.
3. Make prose, equations, algorithms, and implementation descriptions express the same operation.
4. State computational cost when it is central to the contribution or tradeoff.
5. Move nonessential implementation detail to the appendix.
6. Do not use the framework figure as a substitute for technical explanation.

### 6.7 Evaluation

Organize Evaluation around a flexible set of research questions, abbreviated as RQs. Their count and order must follow the paper's claims, not a fixed template. Put the strongest and most central evidence first.

#### RQ overview

Begin the section with a list of every RQ used to structure the experiments. Each item must contain:

1. A stable RQ number.
2. A concise descriptive label in parentheses, preferably one or two words.
3. A direct question answered by the corresponding subsection.

Use this LaTeX form:

    \begin{itemize}
        \item \textbf{RQ 1 (Performance):} How does \m compare against state-of-the-art baselines?
        \item \textbf{RQ 2 (Ablation Study):} What are the contributions of each component to the overall effectiveness of \m?
        \item \textbf{RQ 3 (Efficiency):} Does \m maintain a competitive computational cost?
    \end{itemize}

Customize the labels and questions. Suitable labels include Performance, Ablation Study, Efficiency, Robustness, Transferability, Generalization, Sensitivity, Calibration, Scalability, Interpretability, Error Analysis, and Case Study. Do not place a full sentence inside the parentheses.

Each RQ must:

1. Be answerable by the experiment in its subsection.
2. Test a central claim, design choice, or practical concern.
3. Avoid vague wording such as Is the method good?
4. Name the proposed method consistently, preferably through its LaTeX macro such as \m.
5. Use parallel grammatical structure across the RQ list.
6. Avoid combining unrelated evaluations into one question.

#### RQ selection and order

A common order is:

1. Overall performance.
2. Component ablation.
3. Robustness, transferability, or generalization.
4. Efficiency.
5. Sensitivity, qualitative analysis, or error analysis.

Change that order when the contribution requires it:

1. Put efficiency earlier when low cost is central.
2. Put transferability earlier when cross-model or cross-domain behavior is the main claim.
3. Put robustness earlier when reliability is the primary problem.
4. Combine analyses only when they answer one coherent question.
5. Move secondary sensitivity studies, extended case studies, or additional transfer settings to the appendix when space is limited.

Keep RQ order aligned with contribution order in the Introduction when practical. Do not force a fixed number of RQs.

#### Experimental setup

After the RQ overview, summarize only what readers need to interpret the main results:

1. Datasets.
2. Models or LLMs.
3. Baselines.
4. Metrics.
5. Data splits.
6. Transfer protocol.
7. Evaluation settings.

Move dataset statistics, complete baseline details, prompt templates, hyperparameters, and implementation details to the appendix.

#### Main-text RQ subsection contract

Create one subsection per main-text RQ with a stable heading such as:

    \subsection{RQ 1: Performance}

Each subsection must:

1. Restate the question when needed.
2. Give the direct answer in the opening sentence or paragraph.
3. Present the relevant table, figure, or analysis.
4. Interpret the main trend instead of repeating every value.
5. Compare with the strongest appropriate baseline.
6. Discuss exceptions, tradeoffs, limitations, or failure cases.
7. End with a concise answer to the RQ.

#### Common RQ evidence designs

For Performance, analyze:

1. Overall results across datasets, models, or settings.
2. The strongest representative improvement.
3. Smaller, inconsistent, or negative gains.
4. The likely technical reason for the trend, labeled as interpretation unless directly tested.

For Ablation Study, analyze:

1. Removal of every named component.
2. Replacement or simplification of each component.
3. Complementarity among components.
4. Whether the full framework is more than a simple combination.
5. Whether results support the challenge-to-component map.

For Efficiency, report as applicable:

1. Training cost.
2. Inference latency.
3. Token usage.
4. Memory usage.
5. Number of model calls.
6. Throughput.
7. Accuracy-efficiency tradeoff.

Use Robustness, Transferability, or Generalization only when actual experiments test input perturbations, distribution shifts, datasets, domains, backbone models, or unseen settings. Use Sensitivity, Error Analysis, and Case Study for supported diagnostic evidence; these are usually appendix candidates when they are secondary.

#### Appendix RQs

An RQ may move to the appendix only when it is not essential evidence for a central contribution. Then:

1. Keep the most important finding in the main text.
2. Include the RQ in the main-text overview only when readers need the complete experimental map.
3. State that detailed analysis is in the appendix.
4. Preserve the same number, descriptive label, and wording in both locations.
5. Use a matching appendix heading such as \subsection{RQ 5: Sensitivity}.
6. Reference it explicitly, for example: We further study hyperparameter sensitivity in Appendix~\ref{app:sensitivity}.
7. Keep the question, setup, result, and answer together in the appendix.
8. Do not renumber it inconsistently, hide a weak or contradictory result, or move central evidence out of the main text.
9. Summarize any appendix finding that materially changes the main conclusion in the main text.

Across Evaluation, keep RQ numbers, labels, headings, table references, and appendix references consistent. Reorder, add, remove, or relocate RQs only to improve claim coverage, narrative order, and page balance.

### 6.8 Conclusion

Write one concise paragraph containing:

1. The problem.
2. The challenge.
3. The proposed method.
4. The core components.
5. The experimental conclusion.
6. The broader implication.

Do not introduce new experiments, citations, or unsupported claims.

## 7. Appendix Organization

The appendix must support reproducibility and hold useful evidence that cannot fit in the main text. Do not use it to conceal information required to understand or validate a central contribution.

Use the following structure when applicable.

### Appendix A: Full Pipeline

Include:

1. End-to-end pipeline.
2. Pseudocode.
3. Expanded framework description.
4. Full inference or training procedure.

### Appendix B: Experimental Setup

Include:

1. Dataset descriptions and statistics.
2. Model details.
3. Baseline definitions.
4. Metrics.
5. Data splits.
6. Transfer protocols.
7. Prompting and decoding settings.
8. Reproducibility details.

### Appendix C: Hyperparameter Space

Provide a table containing:

1. Search ranges.
2. Selected values.
3. Tuning criterion.
4. Dataset-specific values.

### Appendix D: Hardware and Efficiency

Report:

1. Hardware.
2. Software environment.
3. Training time.
4. Inference time.
5. Memory usage.
6. Token cost.
7. Number of model calls.
8. Efficiency comparisons.

### Appendix E: Additional Results

Include:

1. Full dataset-level tables.
2. Full model-level tables.
3. Additional ablations.
4. Sensitivity results.
5. Statistical tests.
6. Error analysis.
7. Qualitative cases.

### Appendix F: Prompt Templates

Include:

1. System prompts.
2. User prompts.
3. Demonstrations.
4. Output schemas.
5. Parsing rules.
6. Fallback procedures.

### Appendix G: Additional Analysis

Include applicable proofs, derivations, annotation details, human-evaluation protocols, limitations, and further case studies. Add any required impact, ethics, or limitations statement in the venue-required location rather than assuming it belongs only in this appendix.

## 8. Full-Paper Audit

Run the complete audit after drafting or substantial revision. Do not infer that a clean compilation means the science or narrative is sound.

### 8.1 Notation and terminology

Check:

1. Every symbol is introduced before first use and has one meaning.
2. No symbol is reused for an unrelated concept.
3. One concept does not receive multiple symbols without explanation.
4. Scalars, vectors, matrices, sets, functions, and indices are distinguishable.
5. Superscripts, subscripts, hats, bars, and boldface are consistent.
6. Index ranges are defined.
7. Acronyms are expanded at first use.
8. Dataset, model, component, metric, and task names are consistent.
9. Equations, algorithms, tables, figures, main text, and appendices share the same notation.

Report a notation issue as:

    location -> current notation -> problem -> correction

### 8.2 Logic and claim support

Check:

1. The problem matches the formal task definition.
2. The stated challenges follow from the problem setting.
3. Every component addresses a stated challenge.
4. Equations and algorithms implement the prose description.
5. Training, inference, and evaluation protocols are mutually compatible.
6. Assumptions remain consistent across sections.
7. Abstract and Introduction claims are supported by experiments.
8. Correlation is not presented as causation.
9. Ablations isolate the intended component or interaction.
10. Comparisons are fair.
11. The Conclusion does not overstate the evidence.
12. No paragraph contradicts another section.

Classify each defect as Critical logical error, Unsupported claim, Missing reasoning step, Inconsistent assumption, or Weak explanation.

### 8.3 Tables and figures

For every table and figure, check:

1. It is referenced in the text with the correct number.
2. Its caption is self-contained.
3. Labels, axes, units, legends, and abbreviations are defined.
4. The visual tests or supports the associated claim.
5. The prose interprets the trend correctly without repeating all values.
6. Improvement calculations are correct.
7. Higher-is-better and lower-is-better directions are clear.
8. Missing values and significance markers are explained.
9. Dataset, model, and setting names match Experimental Setup.
10. The item contributes to a central claim or is moved to the appendix.

Recompute important numerical differences whenever raw values are available.

Unless venue rules specify otherwise:

1. Bold the best result and underline the second-best.
2. Rank larger values higher for higher-is-better metrics and smaller values higher for lower-is-better metrics.
3. Do not rank incompatible settings.
4. Handle ties consistently.
5. Do not highlight the proposed method automatically.
6. Exclude non-comparable oracle settings when appropriate.
7. Explain the convention in the caption or table note.
8. Confirm that bold and underline render correctly in the PDF.

### 8.4 Main text and appendix

Check:

1. Every appendix reference points to the correct item.
2. Main text and appendix use the same notation and terminology.
3. Dataset splits, model settings, metrics, and hyperparameters agree.
4. Prompt templates match the described method.
5. Additional results do not silently contradict the main claim.
6. Essential method or evidence is not available only in the appendix.
7. Equation numbering and cross-references are correct.
8. Main-text and appendix material is not duplicated unnecessarily.

### 8.5 Story and contribution

Read the paper as one argument and check:

1. The problem is concrete and important.
2. The prior-work limitation is specific and consequential.
3. The method is motivated before introduction.
4. The central intuition is clear and technically meaningful.
5. Components form a coherent framework.
6. Introduction, framework figure, Methodology, and Evaluation follow the same order.
7. Experiments answer contributions in the same order when practical.
8. Every RQ has a clear answer.
9. The strongest evidence remains in the main text.
10. The Conclusion resolves the opening problem.

Flag story breaks including an unmotivated component, a disappearing challenge, an experiment unrelated to a contribution, a contribution without evidence, a framework figure that conflicts with prose, repeated motivation, or a Conclusion centered on a different contribution.

### 8.6 Page allocation

Inspect the compiled PDF. For each section s, compute:

    target_pages(s) = P x ratio(s)
    deviation(s) = actual_pages(s) - target_pages(s)

Treat deviations as diagnostic signals, not rigid constraints. Verify:

1. The venue's page-count scope is followed.
2. Main text does not exceed P.
3. The final permitted main-text page satisfies FILL_TARGET.
4. Methodology remains the largest section.
5. Evaluation supports all central claims.
6. Related Work and setup do not crowd out the method.
7. Main-text and appendix content is not needlessly duplicated.
8. Page filling comes only from useful technical content.

## 9. Citation and Bibliography Gate

Citation verification is mandatory and release-blocking. Plausible metadata is not verification.

For every cited work, verify online:

1. Exact title.
2. Full author list and order.
3. Venue or journal.
4. Publication year.
5. Volume, issue, and pages when applicable.
6. DOI, arXiv ID, ACL Anthology ID, OpenReview page, or another persistent identifier.
7. Publication status.
8. Whether the record is a conference, workshop, findings, journal, or preprint version.
9. Whether the source supports the nearby claim.
10. Whether the citation key identifies the intended work.
11. Whether the work was retracted, withdrawn, superseded, or corrected.

Prefer metadata and BibTeX from:

1. Official paper or publisher page.
2. Official conference proceedings.
3. DBLP.
4. ACL Anthology.
5. OpenReview.
6. arXiv.
7. Crossref or a DOI landing page.
8. Google Scholar export only when cross-checked against a primary source.

For each BibTeX entry:

1. Search the exact title and open an authoritative record.
2. Compare all applicable fields and publication status.
3. Confirm that the work supports the cited claim.
4. Replace incorrect metadata, preferably with authoritative exported BibTeX.
5. Confirm that the key is unique and points to the intended paper.
6. Flag every unverifiable or ambiguous record.
7. Recompile after corrections.

Audit the bibliography for duplicate keys, duplicate papers under different keys, misspelled authors, incorrect title capitalization, wrong entry types, missing venue or year or pages or persistent identifiers, conflicting version metadata, escaping errors, broken braces, malformed fields, unrelated or unstable URLs, and inconsistent treatment of preprints and published versions.

Do not copy unverified BibTeX from random pages, generated text, or another manuscript. Report a mismatch as:

    BibTeX key -> incorrect field -> current value -> verified value -> source

If online verification cannot be completed, list the unverified entries and mark submission readiness as blocked.

## 10. LaTeX Editing and Validation

This skill supports direct editing of a LaTeX project.

### 10.1 Compile at control points

From the project root, use:

    latexmk -pdf -interaction=nonstopmode -halt-on-error main.tex

Replace main.tex with MAIN_TEX_FILE when different. Compile:

1. Before editing to establish the baseline.
2. After every substantial revision.
3. After bibliography changes.
4. Before final review.

When compilation fails:

1. Inspect the first blocking error.
2. Report it as first blocking error -> source location -> likely cause -> correction.
3. Correct the source.
4. Recompile.
5. Repeat until compilation succeeds.

Never claim completion while compilation fails.

### 10.2 Resolve severe errors

Prioritize:

1. Undefined citations.
2. Undefined references.
3. Duplicate labels.
4. Labels attached to the wrong object.
5. Duplicate BibTeX keys.
6. Missing figures, tables, style files, or bibliography files.
7. Unmatched braces.
8. Unclosed environments.
9. Unclosed math mode.
10. Invalid commands.
11. Package conflicts.
12. Incorrect file paths.
13. Fatal bibliography errors.
14. Numbering inconsistencies.

Do not suppress a severe error merely to produce a PDF.

### 10.3 Equation formatting

Use numbered display equations for formulas that are important to the method, analysis, or later discussion:

    \begin{equation}
        ...
        \label{eq:descriptive_name}
    \end{equation}

Requirements:

1. Use equation for an important single-line formula.
2. Add a descriptive label when the equation is referenced later.
3. Refer to it with Eq.~\eqref{eq:descriptive_name} or the required venue style.
4. Use aligned, split, or gathered inside equation when multiple lines share one number.
5. Use align when lines require separate numbers.
6. Leave only minor, never-referenced expressions unnumbered.
7. Do not number every trivial formula.
8. Do not use manual equation numbers.
9. Keep label placement consistent.
10. Give every referenced equation a unique label.

### 10.4 Reduce material warnings

After blocking errors are resolved, prioritize warnings for:

1. Undefined citations and references.
2. Multiply defined labels.
3. Visible overfull boxes.
4. Equations or tables beyond the column width.
5. Captions, URLs, or technical terms crossing margins.
6. Poor float placement.
7. Isolated headings or nearly empty columns.
8. Malformed bibliography output.

For overfull equations, use aligned, split, multline, or align; introduce intermediate notation; move secondary derivations to the appendix; shorten textual annotations; and preserve mathematical meaning. Do not globally shrink equations or use unreadably small fonts.

For overfull prose and tables, rewrite long sentences, enable breakable URL handling, shorten repeated column headings, move detailed columns to the appendix, or use full-width floats only when allowed. Never violate margins or font requirements.

Harmless underfull warnings need not be eliminated. Focus on warnings that affect correctness or visible quality.

### 10.5 Final PDF gate

Before completion:

1. Compile successfully.
2. Confirm no citation or reference is undefined.
3. Confirm no label is multiply defined.
4. Confirm every numbered object is referenced correctly.
5. Confirm important formulas use appropriate numbered environments.
6. Correct or justify severe overfull issues.
7. Inspect the rendered PDF visually.
8. Verify page count, anonymization, margins, fonts, bibliography, floats, and supplementary material.
9. Confirm table bolding and underlining render correctly.

## 11. Deliverables and Completion

When writing or revising:

1. Return polished, LaTeX-ready academic English when editing LaTeX.
2. Preserve valid technical content and improve challenge-to-method-to-evidence alignment.
3. Keep notation and names consistent.
4. Use explicit placeholders for missing evidence.
5. Suggest precise appendix transfers when space is limited.
6. Compile and inspect the PDF when project files and a working toolchain are available.

When reviewing a complete paper, report:

1. Critical correctness or acceptance issues.
2. Notation and terminology issues.
3. Logical consistency and claim-support issues.
4. Citation and bibliography issues.
5. Table and figure issues.
6. Main-text and appendix mismatches.
7. Table highlighting and formatting issues.
8. Story, novelty-positioning, and contribution issues.
9. Page-budget issues.
10. LaTeX compilation and layout issues.
11. A prioritized revision plan.

For every issue, use:

    location -> issue -> why it matters -> concrete revision

Prioritize blockers before major and minor improvements. Do not provide only general advice.

Mark the paper submission-ready only when all applicable contracts and gates in this skill pass. In particular, readiness is blocked by unsupported central claims, unverified citations, inconsistent experimental settings, unresolved severe LaTeX errors, page-limit violations, or an uninspected final PDF.
