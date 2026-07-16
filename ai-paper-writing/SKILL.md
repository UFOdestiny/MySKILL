---
name: ai-paper-writing
description: Write, revise, organize, compile, and audit an AI, NLP, or LLM research paper in LaTeX under a configurable main-text page limit. Use this skill for paper planning, section drafting, method naming, experiment organization, appendix design, consistency checking, citation verification, and final LaTeX validation.
---

# AI Paper Writing

## 1. Purpose

Produce a complete, technically precise, logically coherent, and submission-ready AI research paper in academic English.

The paper should:

1. Define an important and concrete research problem.
2. Identify specific limitations in the strongest relevant prior work.
3. Present a clear technical insight.
4. Develop a coherent method with two or three named core components.
5. Validate every central claim through appropriate experiments.
6. Maintain consistent notation, terminology, evidence, and narrative across the full manuscript.
7. Fit the target venue's page limit without weakening the main technical contribution.
8. Compile successfully as a LaTeX project.
9. Contain no fabricated, unverifiable, or incorrectly attributed citation.

The full paper should follow one continuous argument:

`problem -> limitation -> challenge -> insight -> method -> evidence -> implication`

Do not treat the paper as a collection of independent sections. Every section must advance the same central story.

## 2. Paper Configuration

Before drafting, revising, or checking the manuscript, define:

1. `MAIN_TEXT_PAGE_LIMIT = P`
2. `PAGE_COUNT_SCOPE`
3. `FILL_TARGET`
4. `SECTION_RATIOS`
5. `TARGET_VENUE`
6. `MAIN_TEX_FILE`, usually `main.tex`

### 2.1 Main-text page limit

`P` is the maximum number of main-text pages allowed by the venue or specified by the user.

Do not assume that `P` equals seven. Obtain it from the user, venue instructions, or project files. When it is unavailable, use `[MAIN_TEXT_PAGE_LIMIT]` and avoid fixed page-count claims.

### 2.2 Page-count scope

Determine what the venue counts toward the main-text limit. Unless the venue specifies otherwise, treat the main text as all content before the references.

### 2.3 Fill target

Use one of the following:

1. `within_limit`: the manuscript only needs to remain within `P`.
2. `substantially_full`: the manuscript should make substantial use of the final permitted main-text page.

For compact conference papers, use `substantially_full` unless instructed otherwise.

## 3. Core Writing Requirements

### 3.1 Academic style

1. Write in clear academic English.
2. Do not use em dashes or en dashes as sentence punctuation.
3. Hyphenated technical compounds are allowed, such as `decoding-based`, `training-free`, and `step-level`.
4. Prefer direct sentences over deeply nested structures.
5. Give each paragraph one primary purpose.
6. Begin each paragraph with a clear topic or transition sentence.
7. Avoid unnecessary rhetorical language.
8. Avoid vague claims such as “substantial improvement” without evidence.
9. Do not repeat the same motivation, contribution, or conclusion across sections.
10. Keep terminology and capitalization consistent.

### 3.2 Evidence and factual integrity

1. Do not invent datasets, baselines, models, metrics, citations, hyperparameters, or results.
2. Use precise placeholders when information is missing, such as `[DATASET COUNT]`, `[BEST IMPROVEMENT]`, or `[CITATION]`.
3. Every contribution must be supported by a method design, formal argument, experiment, or analysis.
4. Every statement about prior work must be supported by an accurate citation.
5. Every numerical claim must match the corresponding table, figure, or logged result.
6. Negative or mixed findings must not be hidden when they affect the paper's claim.

### 3.3 Reporting numerical results

1. Do not copy large portions of tables into prose.
2. Report only the most decision-relevant values.
3. Explain trends, comparisons, causes, tradeoffs, and implications.
4. Distinguish absolute gain, relative gain, and percentage-point gain.
5. Do not claim statistical significance without a valid statistical test.
6. Do not compare values from incompatible settings.

## 4. Paper Argument Planning

Before writing, identify:

1. The research problem.
2. Why the problem matters.
3. The strongest relevant recent approaches.
4. Their exact limitations.
5. Two or three unresolved challenges.
6. The central technical intuition.
7. Two or three novel components.
8. The complete method pipeline.
9. The datasets, models, baselines, metrics, and protocols.
10. The strongest experimental evidence.
11. The material that should move to the appendix.

Build an explicit challenge-to-method map:

| Challenge | Cause | Proposed Component | Expected Effect | Supporting Experiment |
|---|---|---|---|---|

Every challenge introduced in the paper must be addressed by the method or explicitly declared outside the paper's scope.

## 5. Method and Component Naming

Create a short and memorable method name.

A useful title pattern is:

`<MethodName>: <Core Technique> for <Task or Problem>`

Split the most novel part of the method into two or three named components.

Each component name should:

1. Describe its actual function.
2. Be concise and easy to reuse.
3. Follow a parallel naming pattern.
4. Avoid vague names such as “Module A”.
5. Avoid forced or misleading acronyms.
6. Correspond to a specific challenge or design objective.

For each component, define:

`challenge -> motivation -> input -> operation -> output -> role in the framework`

Use the same component names in:

1. The abstract.
2. The introduction.
3. The framework figure.
4. The methodology.
5. The ablation study.
6. The conclusion.

## 6. Main-Text Page Allocation

Let `P` denote `MAIN_TEXT_PAGE_LIMIT`.

Use the following initial allocation:

1. Abstract: `0.03P`
2. Introduction: `0.08P`
3. Related Work: `0.08P`
4. Problem Formulation or Preliminaries: `0.07P`
5. Methodology or Design: `0.42P`
6. Evaluation: `0.20P`
7. Conclusion: `0.02P`
8. Figures, tables, captions, equations, algorithms, headings, spacing, and transitions: approximately `0.10P`

Compute:

`target_pages(section) = P × section_ratio`

These are page-area targets, not rigid text-only limits. Adjust them after compiling the manuscript.

Protect the Methodology and Evaluation sections. When space is limited, first compress or move:

1. Generic background.
2. Long Related Work descriptions.
3. Dataset statistics.
4. Baseline implementation details.
5. Hyperparameter details.
6. Prompt templates.
7. Additional results.
8. Secondary ablations.

Do not fill pages with generic prose. Expand only technically useful content, such as missing motivation, component interaction, result interpretation, limitations, or failure analysis.

## 7. Main-Text Organization

### 7.1 Title

The title should communicate:

1. The method name.
2. The central technical idea.
3. The target task or problem.

Avoid vague titles such as “A New Framework for AI”.

### 7.2 Abstract

Write one compact paragraph in this order:

1. Introduce the problem and its importance.
2. State the main challenge.
3. Summarize the dominant recent approach and its limitation.
4. Introduce the proposed method.
5. Introduce the two or three named components.
6. State the experimental scope.
7. Report the strongest aggregate or representative result.
8. End with the main implication.

The proposed method must directly address the stated challenge.

Do not include citations, equations, long background, or a list of every result.

### 7.3 Introduction

Use a six-paragraph structure.

#### Paragraph 1: Background and significance

Define the problem and explain why it matters.

#### Paragraph 2: Existing approaches and limitation

Summarize the strongest relevant direction and identify its concrete limitation.

#### Paragraph 3: Key intuition

Explain the observation or opportunity that motivates the proposed solution.

#### Paragraph 4: Technical challenges

State two or three precise challenges. These challenges must map to the named method components.

#### Paragraph 5: Proposed framework and evidence

Introduce the full framework, its named components, their interactions, and a concise experimental summary.

#### Paragraph 6: Contributions

Use three contribution statements:

1. Conceptual contribution.
2. Technical contribution.
3. Experimental contribution.

Do not write generic contributions such as “We conduct extensive experiments” without specifying what is demonstrated.

### 7.4 Related Work

Use two or three focused subsections.

For each subsection:

1. Define the research direction.
2. Summarize the most recent and relevant methods.
3. Identify the limitation relevant to this paper.
4. Explain how the proposed method differs.

Organize prior work by technical idea, assumption, or failure mode. Do not write a purely chronological survey.

The Related Work section should not attack prior work broadly. State the exact setting in which an assumption or design becomes insufficient.

### 7.5 Problem Formulation or Preliminaries

Define:

1. The task.
2. Inputs and outputs.
3. Data or interaction setting.
4. Core notation.
5. Objective.
6. Fundamental concepts needed by the method.

Introduce every symbol before use.

Use equations when they reduce ambiguity. Do not duplicate equations that belong to the Methodology section.

### 7.6 Methodology or Design

This is the central section.

#### Overall framework

Begin with a framework overview that explains:

1. The input.
2. Intermediate representations.
3. The order of operations.
4. Component interactions.
5. The final output.
6. The challenge addressed by each component.

The method must read as one coherent pipeline. Do not present it as an arbitrary stack of modules.

#### Component subsections

For each named component, follow this order:

1. Motivation.
2. Input and output.
3. Mechanism.
4. Formalization.
5. Interaction with other components.
6. Challenge mapping.

#### Integration and objective

Explain the complete training, inference, decoding, optimization, or decision procedure.

When relevant, distinguish:

1. Offline preparation.
2. Training.
3. Online inference.
4. Auxiliary model calls.
5. Post-processing.

#### Methodology quality requirements

1. Explain why every design choice is needed.
2. Introduce notation before using it.
3. Keep symbols consistent.
4. Make the prose and equations describe the same operation.
5. State computational cost when it is central.
6. Move nonessential implementation details to the appendix.
7. Do not rely on the framework figure as a substitute for technical explanation.

### 7.7 Evaluation

Organize the section around research questions.

#### Experimental Setup

Briefly summarize:

1. Datasets.
2. Models or LLMs.
3. Baselines.
4. Metrics.
5. Data splits.
6. Transfer protocol.
7. Evaluation settings.

Move full details to the appendix.

#### RQ1: Overall effectiveness

Answer whether the proposed method outperforms the strongest relevant baselines.

Discuss:

1. Overall trend.
2. Strongest representative gain.
3. Settings with smaller or inconsistent gains.
4. Technical explanation.

#### RQ2: Component contribution

Use ablation studies to remove, replace, or simplify each named component.

Explain:

1. Which component contributes most.
2. Whether components are complementary.
3. Whether the full method is more than a simple combination.
4. Whether the ablations support the challenge-to-component mapping.

#### RQ3: Robustness, sensitivity, or transfer

Choose the analysis most relevant to the paper:

1. Hyperparameter sensitivity.
2. Robustness to perturbation.
3. Distribution shift.
4. Cross-dataset transfer.
5. Cross-model transfer.
6. Generalization to unseen settings.
7. Calibration or selective prediction.

#### RQ4: Efficiency or qualitative behavior

When relevant, analyze:

1. Training cost.
2. Inference latency.
3. Token usage.
4. Memory usage.
5. Additional model calls.
6. Accuracy-efficiency tradeoff.
7. Representative qualitative cases.

#### Evaluation writing requirements

1. Begin each subsection with the research question.
2. State the answer before discussing details.
3. Explain trends instead of repeating table values.
4. Compare against the strongest baseline.
5. Report limitations and mixed results honestly.
6. Ensure every main contribution has experimental support.

### 7.8 Conclusion

Write one concise paragraph that includes:

1. The problem.
2. The challenge.
3. The proposed method.
4. The core components.
5. The experimental conclusion.
6. The broader implication.

Do not introduce new experiments, citations, or unsupported claims.

## 8. Appendix Organization

The appendix should support reproducibility and provide evidence that does not fit within the main-text page limit.

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

Include proofs, derivations, annotation details, human evaluation protocols, limitations, and further case studies.

## 9. Full-Paper Review

After drafting or revising the paper, perform a complete review.

### 9.1 Notation and terminology

Check:

1. Every symbol is introduced before first use.
2. Every symbol has one consistent meaning.
3. No symbol is reused for an unrelated concept.
4. The same concept does not use multiple symbols without explanation.
5. Scalars, vectors, matrices, sets, functions, and indices are distinguishable.
6. Superscripts, subscripts, hats, bars, and boldface are consistent.
7. Index ranges are defined.
8. Acronyms are expanded at first use.
9. Dataset, model, module, metric, and task names are consistent.
10. Equations, algorithms, tables, figures, and appendices use the same notation.

Report issues as:

`location -> current notation -> problem -> correction`

### 9.2 Logical consistency

Check:

1. The problem matches the formal task definition.
2. The challenges follow from the problem setting.
3. Each component addresses a stated challenge.
4. The equations implement the prose description.
5. Training, inference, and evaluation protocols are compatible.
6. Assumptions are consistent across sections.
7. Abstract and introduction claims are supported by experiments.
8. Correlation is not presented as causation.
9. Ablations isolate the intended component.
10. Comparisons are fair.
11. The conclusion does not overstate the evidence.
12. No paragraph contradicts another section.

Classify each issue as:

1. Critical logical error.
2. Unsupported claim.
3. Missing reasoning step.
4. Inconsistent assumption.
5. Weak explanation.

### 9.3 Tables and figures

For every table and figure, check:

1. It is referenced in the text.
2. The reference number is correct.
3. The caption is self-contained.
4. Labels, axes, units, legends, and abbreviations are defined.
5. The visual supports the associated claim.
6. The prose interprets the trend correctly.
7. The discussion does not repeat all values.
8. Improvement calculations are correct.
9. Higher-is-better and lower-is-better directions are clear.
10. Missing values and significance markers are explained.
11. Dataset, model, and setting names match the setup section.
12. The item contributes to a central claim.

Recompute important numerical differences when raw values are available.

### 9.4 Main text and appendix

Check:

1. Every appendix reference points to the correct item.
2. The appendix uses the same notation and terminology.
3. Dataset splits, model settings, metrics, and hyperparameters match.
4. Prompt templates match the described method.
5. Additional results do not silently contradict the main claim.
6. Essential method information is not hidden only in the appendix.
7. Appendix equation numbering and cross-references are correct.

### 9.5 Table highlighting

Unless the venue specifies otherwise:

1. Bold the best result.
2. Underline the second-best result.
3. Rank larger values higher for higher-is-better metrics.
4. Rank smaller values higher for lower-is-better metrics.
5. Do not compare incompatible settings.
6. Handle ties consistently.
7. Do not highlight the proposed method automatically.
8. Exclude non-comparable oracle settings when appropriate.
9. Explain the convention in the caption or table note.
10. Confirm that bold and underline render correctly in the PDF.

### 9.6 Story review

Read the paper as one argument.

Check:

1. The problem is concrete and important.
2. The prior-work limitation is specific.
3. The method is motivated before it is introduced.
4. The central intuition can be summarized clearly.
5. The components form a coherent framework.
6. The introduction, figure, methodology, and experiments follow the same order.
7. Experiments answer claims in the same order.
8. Every research question has a clear answer.
9. The strongest evidence is in the main text.
10. The conclusion resolves the opening problem.

Identify story breaks such as:

1. An unmotivated component.
2. A challenge that disappears.
3. An experiment unrelated to a contribution.
4. A contribution without evidence.
5. A framework figure that conflicts with the prose.
6. Repeated motivation.
7. A conclusion that emphasizes a different contribution.

### 9.7 Page allocation

Check the compiled PDF.

For each section `s`, compute:

`target_pages(s) = P × ratio(s)`

Optionally compute:

`deviation(s) = actual_pages(s) - target_pages(s)`

Use deviations as diagnostic signals, not rigid constraints.

Verify:

1. The manuscript follows the venue's page-count scope.
2. The main text does not exceed `P`.
3. The final permitted main-text page satisfies `FILL_TARGET`.
4. Methodology remains the largest section.
5. Evaluation supports all central claims.
6. Related Work and setup details do not crowd out the method.
7. Main-text and appendix material are not duplicated unnecessarily.
8. Page filling comes from useful technical content.

## 10. Citation and Bibliography Audit

Citation verification is mandatory and release-blocking.

A fabricated, incorrect, mismatched, or unverifiable citation is unacceptable.

### 10.1 Zero-hallucination requirement

For every cited work, verify online:

1. Exact title.
2. Author list and order.
3. Venue or journal.
4. Publication year.
5. Volume, issue, and pages when applicable.
6. DOI, arXiv ID, ACL Anthology ID, OpenReview page, or other persistent identifier.
7. Publication status.
8. Conference, workshop, findings, journal, and preprint version.
9. Whether the work supports the cited claim.
10. Whether the citation key points to the intended work.
11. Whether the work was retracted, withdrawn, superseded, or corrected.

A plausible-looking citation is not sufficient.

### 10.2 Preferred sources

Prefer metadata and BibTeX from:

1. Official paper or publisher page.
2. Official conference proceedings.
3. DBLP.
4. ACL Anthology.
5. OpenReview.
6. arXiv.
7. Crossref or DOI landing page.
8. Google Scholar export, cross-checked against a primary source.

Whenever possible, replace manually typed or suspicious entries with BibTeX exported from an authoritative source.

Do not copy unverified BibTeX from random web pages, generated text, or another manuscript.

### 10.3 Entry-by-entry procedure

For each cited BibTeX entry:

1. Search the exact title online.
2. Open an authoritative record.
3. Compare all bibliographic fields.
4. Confirm publication status.
5. Confirm that the work supports the nearby claim.
6. Replace incorrect metadata.
7. Confirm that the key is unique.
8. Flag unverifiable or ambiguous records.
9. Recompile after corrections.

Report mismatches as:

`BibTeX key -> incorrect field -> current value -> verified value -> source`

### 10.4 BibTeX integrity

Check:

1. Duplicate keys.
2. Duplicate papers under different keys.
3. Misspelled author names.
4. Incorrect title capitalization.
5. Incorrect entry types.
6. Missing venue, year, pages, DOI, or identifier fields.
7. Conflicting metadata across versions.
8. Escaping errors.
9. Broken braces.
10. Malformed fields.
11. Unrelated or unstable URLs.
12. Inconsistent treatment of preprints and published versions.

Do not mark the paper ready for submission while any cited work remains unverified.

## 11. LaTeX Editing and Validation

This skill is intended for direct editing of a LaTeX paper.

### 11.1 Compilation command

Compile from the project root with:

```bash
latexmk -pdf -interaction=nonstopmode -halt-on-error main.tex
```

Use this command:

1. Before editing.
2. After every substantial revision.
3. After bibliography changes.
4. Before the final review.

Do not claim completion while compilation fails.

### 11.2 Compilation workflow

1. Compile the current manuscript.
2. Inspect the first blocking error.
3. Correct the source.
4. Recompile.
5. Repeat until compilation succeeds.
6. Inspect the generated PDF.

When compilation fails, report:

`first blocking error -> source location -> likely cause -> correction`

### 11.3 Severe errors

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

### 11.4 Equation formatting and numbering

Prefer numbered display equations when the formula is important to the method, analysis, or later discussion.

Use:

```latex
\begin{equation}
    ...
    \label{eq:descriptive_name}
\end{equation}
```

Requirements:

1. Use `equation` for important single-line formulas.
2. Add a descriptive `\label{eq:...}` when the equation is referenced later.
3. Refer to numbered equations with `Eq.~\eqref{eq:...}` or the venue's preferred style.
4. Use `aligned`, `split`, or `gathered` inside `equation` for multi-line expressions that should share one equation number.
5. Use `align` when multiple lines require separate equation numbers.
6. Use unnumbered math only for minor expressions that are never referenced.
7. Do not number every trivial formula.
8. Do not use manual equation numbers.
9. Keep label placement consistent throughout the project.
10. Ensure every referenced equation has a unique label.

### 11.5 Warning reduction

After blocking errors are resolved, reduce important warnings.

Prioritize:

1. Undefined citations and references.
2. Multiply defined labels.
3. Visible overfull `\hbox` and `\vbox`.
4. Equations extending beyond the column.
5. Tables wider than the available width.
6. Captions, URLs, or technical terms crossing margins.
7. Poor float placement.
8. Isolated headings and nearly empty columns.
9. Malformed bibliography output.

For overfull equations:

1. Use `aligned`, `split`, `multline`, or `align`.
2. Introduce intermediate notation.
3. Move secondary derivations to the appendix.
4. Shorten textual annotations inside equations.
5. Avoid globally shrinking equations.
6. Avoid unreadably small fonts.
7. Preserve mathematical meaning when adding line breaks.

For overfull prose and tables:

1. Rewrite long sentences.
2. Use breakable URL handling.
3. Shorten repeated column headings.
4. Move detailed columns to the appendix.
5. Use full-width floats only when allowed.
6. Do not violate margins or font requirements.

Not every harmless underfull warning needs correction. Focus on warnings that affect correctness or visible quality.

### 11.6 Final LaTeX validation

Before completion:

1. Run the compilation command successfully.
2. Confirm that no citation is undefined.
3. Confirm that no reference is undefined.
4. Confirm that no label is multiply defined.
5. Confirm that all numbered objects are referenced correctly.
6. Confirm that important equations use appropriate numbered environments.
7. Confirm that severe overfull issues are corrected or justified.
8. Inspect the final PDF.
9. Verify page count, anonymization, margins, fonts, bibliography, and supplementary material.
10. Recheck that table bolding and underlining render correctly.

## 12. Required Review Output

When checking a complete paper, return:

1. Critical correctness or acceptance issues.
2. Notation and terminology issues.
3. Logical consistency issues.
4. Citation and bibliography issues.
5. Table and figure issues.
6. Main-text and appendix mismatches.
7. Table highlighting and formatting issues.
8. Story and contribution issues.
9. Page-budget issues.
10. LaTeX compilation and layout issues.
11. Prioritized revision plan.

For every issue, use:

`location -> issue -> why it matters -> concrete revision`

Do not provide only general advice.

## 13. Final Checklist

Before marking the paper complete, verify:

1. `MAIN_TEXT_PAGE_LIMIT = P` is defined.
2. The paper follows one coherent story.
3. The title is precise and memorable.
4. The abstract contains problem, challenge, prior limitation, method, components, evidence, and implication.
5. The introduction follows the six-paragraph structure.
6. Every challenge maps to a named component.
7. The method is a coherent pipeline.
8. The Related Work contains two or three focused subsections.
9. All essential notation is defined.
10. Methodology receives the largest page allocation.
11. Evaluation is organized by research questions.
12. Every contribution has experimental support.
13. The prose does not over-report table values.
14. The best table result is bolded and the second-best result is underlined.
15. Main text and appendix agree.
16. No unsupported claim remains.
17. No symbol conflict remains.
18. No table or figure is misinterpreted.
19. Every cited work has been verified online.
20. No title, author, venue, year, identifier, publication-status, or claim-to-citation mismatch remains.
21. The main text remains within `P`.
22. The final permitted main-text page satisfies `FILL_TARGET`.
23. Important formulas use numbered equation environments when appropriate.
24. The LaTeX project compiles successfully.
25. No citation or reference is undefined.
26. No label is multiply defined.
27. Severe overfull issues are corrected or justified.
28. The final PDF has been visually inspected.

## 14. Output Behavior

When asked to write, revise, or check a paper:

1. Produce polished academic English.
2. Preserve valid technical content.
3. Improve challenge-to-method alignment.
4. Keep notation and names consistent.
5. Suggest appendix transfers when space is limited.
6. Use placeholders for missing evidence.
7. Return LaTeX-ready text when editing LaTeX.
8. Compile and inspect the PDF when the project files are available.
9. Verify citations online when citation review is requested or when submission readiness is being assessed.
10. Do not mark the paper ready when any release-blocking issue remains.
