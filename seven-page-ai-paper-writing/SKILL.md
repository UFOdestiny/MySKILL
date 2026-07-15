---
name: seven-page-ai-paper-writing
description: Draft, revise, and compress a seven-page AI, NLP, or LLM conference paper whose main text is complete before the references. Use this skill for full-paper writing, section rewriting, page-budget planning, method naming, experiment organization, and appendix design.
---

# Seven-Page AI Paper Writing

## Purpose

Write a complete, technically precise, and publication-ready research paper in academic English. The paper should present a clear problem, identify concrete limitations in prior work, develop a coherent method with two or three named innovations, and validate the method through well-structured experiments.

The main text must fill seven pages before the references. The seventh page should be substantially full. It should not contain only a few lines or half a page of text.

## Non-Negotiable Writing Rules

1. Do not use em dashes or en dashes as sentence punctuation. Use commas, parentheses, colons, or separate sentences instead.
2. Hyphenated technical compounds are allowed, such as `decoding-based`, `training-free`, and `step-level`.
3. Prefer direct academic sentences. Avoid deeply nested clauses, excessive qualifications, and unnecessarily complicated syntax.
4. Each paragraph should have one primary purpose and a clear topic sentence.
5. Do not repeat all numerical values from a table in the prose. Report only the most decision-relevant results, then explain the trend, implication, or reason.
6. Do not invent datasets, baselines, model names, citations, hyperparameters, or experimental results. Use explicit placeholders when information is missing.
7. Keep terminology, notation, module names, and task names consistent throughout the paper.
8. Every claimed contribution must be supported by either a methodological design, a theoretical argument, or experimental evidence.
9. The proposed method must directly address the challenges identified in the introduction.
10. Avoid generic claims such as “significantly improves performance” unless the corresponding evidence is stated or cited.

## Expected Inputs

Use all available materials, including the research idea, draft text, equations, figures, experimental tables, implementation details, and target venue requirements.

Before drafting, identify the following items:

1. The studied problem and why it matters.
2. The limitations of the strongest recent methods.
3. Two or three technical challenges that prevent a simple solution.
4. The central intuition behind the proposed method.
5. The two or three most novel technical components.
6. The datasets, baselines, backbone models, metrics, and evaluation protocols.
7. The strongest experimental findings.
8. The material that can be moved to the appendix.

When essential information is missing, preserve the structure and insert precise placeholders such as `[DATASET COUNT]`, `[BEST IMPROVEMENT]`, or `[CITATION]`.

## Core Planning Procedure

### Step 1: Build the paper argument

Construct the paper around the following chain:

`important problem -> limitation of existing methods -> unresolved challenges -> key intuition -> proposed design -> experimental evidence -> contribution`

Every major section should advance this chain. Do not introduce a challenge that is never addressed. Do not introduce a module without explaining which challenge it solves.

### Step 2: Name the method and its components

Create a short and memorable method name. A preferred title pattern is:

`<MethodName>: <Core Technique> for <Task or Problem>`

Split the most novel part of the method into two or three components. Give each component a concise, parallel, and technically meaningful name.

Good component names should satisfy the following conditions:

1. They describe the component’s function rather than using vague labels such as “Module A”.
2. They are easy to reuse in equations, captions, tables, and ablation studies.
3. They follow a parallel naming pattern.
4. They do not force an unnatural acronym.
5. Each component corresponds to a specific challenge or design objective.

For each component, define:

`challenge -> design motivation -> input -> transformation -> output -> role in the full framework`

### Step 3: Allocate the seven-page budget

Use the following target distribution for the main text:

1. Abstract: about 3 percent.
2. Introduction: about 8 percent.
3. Related Work: about 8 percent.
4. Problem Formulation or Preliminaries: about 7 percent.
5. Methodology or Design: about 42 percent.
6. Evaluation: about 20 percent.
7. Conclusion: about 2 percent.

These percentages cover about 90 percent of the usable page area. Reserve the remaining space for figures, tables, captions, equations, subsection headings, and transitions.

A practical seven-page layout is:

1. Abstract: about 0.2 page.
2. Introduction: about 0.55 page.
3. Related Work: about 0.55 page.
4. Problem Formulation: about 0.45 to 0.5 page.
5. Methodology: about 2.8 to 3.0 pages.
6. Evaluation: about 1.4 pages.
7. Conclusion: about 0.15 to 0.2 page.
8. Figures, tables, captions, and layout overhead: about 0.6 to 0.8 page.

Adjust the distribution when needed, but protect the Methodology and Evaluation sections. Move secondary details to the appendix instead of compressing the core technical story.

## Section Blueprint

## Title

Use a short method name followed by a precise technical description.

The title should communicate both novelty and task. Avoid vague words such as “A New Framework” unless the second half clearly specifies the technical contribution.

Preferred pattern:

`<Short Name>: <Novel Technique> for <New or Important Problem>`

## Abstract

Write one compact paragraph that contains the following elements in order:

1. Introduce the problem and its significance.
2. State the main technical challenge.
3. Summarize the dominant recent approach and its limitation.
4. Introduce the proposed method.
5. Describe the two or three core components.
6. State the experimental scope, including the number of datasets, baselines, backbone models, or LLMs when available.
7. Report only the strongest aggregate or representative improvement.
8. End with the main conclusion or implication.

The method description must correspond directly to the stated challenge. Avoid background details, citations, equations, and long lists of results.

## Introduction

Organize the introduction into six paragraphs.

### Paragraph 1: Background and significance

Define the studied problem, explain why it matters, and establish its relevance to the target research community.

### Paragraph 2: State of the art and limitations

Summarize the most relevant recent direction. Explain what current methods can achieve and identify the limitation that motivates this paper.

### Paragraph 3: Intuition and opportunity

Present the key observation or opportunity that makes a better solution possible. This paragraph should prepare the reader for the proposed method without describing all implementation details.

### Paragraph 4: Challenges

State two or three concrete challenges. Separate problem-level challenges from technical challenges when useful. Each challenge must later map to a methodological component.

### Paragraph 5: Proposed framework

Introduce the overall framework and its named components. Explain how information flows through the framework and how each component addresses a challenge. Include one concise sentence about the experimental evidence.

### Paragraph 6: Contributions

Present three contribution statements with conceptual, technical, and experimental coverage.

A strong contribution structure is:

1. Conceptually, the paper reframes or formalizes the problem.
2. Technically, the paper introduces the framework and its core components.
3. Experimentally, the paper validates the method across datasets, models, settings, or transfer protocols.

Do not claim novelty only through wording. State exactly what is new.

## Related Work

Use two or three subsections. Each subsection should cover one recent and directly relevant research direction.

For each subsection:

1. Define the research direction.
2. Summarize representative recent methods.
3. Identify the limitation that matters for the current paper.
4. Explain how the proposed method differs.

Do not write a chronological literature survey. Organize prior work around technical ideas, assumptions, or failure modes.

The final sentences of each subsection should create a clear transition to the proposed method. Avoid claiming that all previous methods are ineffective. Describe the precise setting in which their assumptions or designs become insufficient.

## Problem Formulation or Preliminaries

Define the task, inputs, outputs, notation, and objective.

This section should include:

1. A formal task definition.
2. The data or interaction setting.
3. The prediction, reasoning, generation, or decision objective.
4. Any core concept required to understand the method.
5. Evaluation-related definitions when they are fundamental to the problem.

Use equations only when they reduce ambiguity. Do not duplicate equations that belong to the Methodology section.

If the paper introduces a new formulation, clearly distinguish it from existing task definitions.

## Methodology or Design

This is the central section and should receive the largest page budget.

### Overall framework

Begin with an overview that follows the actual computational or reasoning pipeline. Refer to the framework figure and explain:

1. What enters the system.
2. What intermediate representations are created.
3. How the named components interact.
4. What the final output is.
5. How the design addresses the challenges from the introduction.

The framework should read as one coherent solution. Do not present the method as an arbitrary stack of independent modules.

### Component subsections

Use one subsection for each core component. For every component, follow this order:

1. Motivation: explain why the component is necessary.
2. Input and output: define the interface with the rest of the framework.
3. Design: explain the mechanism step by step.
4. Formalization: provide the essential equations or algorithm.
5. Interaction: explain how the component affects later stages.
6. Challenge mapping: state which challenge it resolves.

The two or three component subsections should have parallel depth and naming.

### Integration and objective

After the components, describe how they are combined. Include the training objective, inference procedure, decoding rule, optimization process, or decision policy when applicable.

When the method is training-free, clearly distinguish offline preparation, online inference, and any auxiliary computation.

When the method uses LLM prompts, describe the role of each prompt in the main text and place complete prompt templates in the appendix.

### Methodology quality rules

1. Explain why each design choice is needed.
2. Avoid restating the framework figure without adding technical detail.
3. Introduce notation before using it.
4. Keep symbols consistent across equations and sections.
5. State computational complexity or additional cost when it is a central concern.
6. Use a running example only when it materially improves understanding.
7. Move implementation details that do not affect the main argument to the appendix.

## Evaluation

Organize the section around research questions.

A recommended structure is:

### Experimental setup

Briefly summarize datasets, models, baselines, metrics, and protocols. Keep the main text focused on information needed to interpret the results. Move complete statistics, templates, hyperparameters, and implementation details to the appendix.

### RQ1: Overall effectiveness

Compare the proposed method with the strongest and most relevant baselines.

Report:

1. The overall trend across datasets or settings.
2. The strongest representative improvement.
3. Cases where the gain is smaller or inconsistent.
4. A technical explanation for the observed pattern.

Use tables for dense quantitative comparisons. Use figures for trends, scaling behavior, calibration, robustness, or qualitative analysis.

### RQ2: Contribution of each component

Conduct ablation studies that remove, replace, or simplify each named component.

The analysis should explain:

1. Which component contributes the most.
2. Whether components are complementary.
3. Whether the full framework is more than the sum of isolated modules.
4. How the ablation results support the challenge-to-component mapping.

### RQ3: Robustness, sensitivity, or transfer

Select the question that best matches the paper.

Possible analyses include:

1. Sensitivity to important hyperparameters.
2. Robustness to noise, perturbations, or distribution shifts.
3. Transfer across datasets, domains, tasks, or backbone models.
4. Generalization to unseen settings.
5. Calibration or selective prediction behavior.

Do not include a sensitivity study only because it is conventional. Explain why the selected variable matters.

### RQ4: Efficiency or qualitative behavior

When relevant, analyze computational efficiency theoretically and empirically.

Possible evidence includes:

1. Time complexity.
2. Training cost.
3. Inference latency.
4. Token usage.
5. Memory consumption.
6. Additional LLM calls.
7. Representative qualitative examples or visualizations.

Discuss the accuracy and efficiency tradeoff when one exists.

### Evaluation writing rules

1. Lead each subsection with the research question.
2. State the answer to the research question before listing details.
3. Use prose to explain trends and causes, not to reproduce tables.
4. Compare against the strongest baseline, not only the average baseline.
5. Report negative or mixed findings when they affect the claim.
6. Ensure that every main contribution has corresponding experimental evidence.

## Conclusion

Write one concise paragraph.

Include:

1. The studied problem and its importance.
2. The central limitation or challenge.
3. The proposed method and its main components.
4. The broad experimental scope and strongest conclusion.
5. The practical or scientific implication.

Do not introduce new experiments, citations, or technical claims. Do not copy the abstract sentence by sentence.

## Appendix Design

The appendix should preserve reproducibility and provide evidence that does not fit in the seven-page main text.

Use the following organization when applicable:

### A. Full Pipeline

Provide the complete end-to-end pipeline, algorithm, pseudocode, or expanded framework description.

### B. Experimental Setup

Include:

1. Dataset descriptions and statistics.
2. Backbone models or LLMs.
3. Baseline definitions and implementation sources.
4. Metrics.
5. Data splits.
6. Transfer protocols.
7. Prompting, decoding, or sampling settings.
8. Reproducibility details.

### C. Hyperparameter Space

Provide a hyperparameter table containing search ranges, selected values, tuning criteria, and dataset-specific settings.

### D. Hardware and Efficiency

Report hardware, software environment, training time, inference time, memory usage, token cost, model calls, and other relevant efficiency measures. Include an efficiency table when comparisons are available.

### E. Additional Results

Place full dataset-level results, model-level results, robustness tests, sensitivity plots, extended ablations, statistical tests, error analysis, and qualitative examples here.

### F. Prompt Templates

Provide complete system prompts, user prompts, output formats, demonstrations, parsing rules, and fallback procedures.

### G. Additional Analysis

Include proofs, derivations, annotation details, human evaluation protocols, limitations, and further case studies when needed.

## Compression and Expansion Policy

When the main text exceeds seven pages:

1. Remove repeated motivation and repeated result descriptions.
2. Shorten Related Work before shortening Methodology.
3. Move dataset statistics, baseline implementation details, prompt templates, and complete hyperparameters to the appendix.
4. Keep only the equations required to understand the central method.
5. Replace long result lists with one representative result and one trend statement.
6. Merge low-value subsections.
7. Delete experiments that do not support a claim.

When the main text is too short:

1. Strengthen the explanation of methodological motivation and component interaction.
2. Add missing challenge-to-design reasoning.
3. Expand analysis of why the results occur.
4. Add a useful framework figure, algorithm, or qualitative analysis.
5. Do not pad the paper with generic background or repeated claims.


## Full-Paper Consistency and Final Review

After drafting or revising the paper, perform a dedicated full-paper review. This review is not limited to grammar. It must verify notation, logic, evidence, cross-references, formatting, narrative coherence, and page allocation.

### 1. Notation and Terminology Consistency

Check the entire paper for symbol-level and term-level consistency.

Verify all of the following:

1. Every symbol is introduced before its first use.
2. Every symbol has one unique meaning throughout the paper.
3. The same concept is not represented by multiple symbols unless the distinction is necessary and explicitly explained.
4. A symbol is not reused for an unrelated concept.
5. Scalar, vector, matrix, set, function, probability, and index notation are visually distinguishable.
6. Superscripts, subscripts, hats, bars, and boldface have consistent meanings.
7. Index ranges are defined and used consistently.
8. Dataset, model, module, metric, and task names use the same capitalization and spelling throughout the paper.
9. Acronyms are expanded at first mention and used consistently afterward.
10. Equation references match the correct equations.
11. Variables used in tables, captions, algorithms, or appendix sections match those in the main text.
12. No symbol appears only once without explanation or necessity.

Create a notation issue list when inconsistencies are found. For each issue, specify:

`location -> current notation -> problem -> recommended correction`

### 2. Logical Consistency

Check the paper for local and global reasoning errors.

Verify:

1. The stated problem matches the formal task definition.
2. The challenges in the introduction are real consequences of the problem setting.
3. Each proposed component addresses a stated challenge.
4. The method description supports the claimed capability.
5. The equations implement the mechanism described in prose.
6. The training objective, inference procedure, and evaluation protocol are mutually compatible.
7. Assumptions introduced in one section are not violated elsewhere.
8. Claims in the abstract and introduction are supported by the evaluation.
9. Causal explanations are not inferred from purely correlational evidence.
10. The ablation design isolates the intended component.
11. Comparisons are made under fair and comparable settings.
12. The conclusion does not overstate the evidence.
13. No paragraph contradicts another section.
14. No essential reasoning step is omitted between motivation and method design.
15. Limitations or failure cases do not invalidate the main claim without acknowledgment.

For every detected issue, classify it as:

`critical logical error`, `unsupported claim`, `missing reasoning step`, `inconsistent assumption`, or `weak explanation`.

### 3. Tables, Figures, Captions, and Their Interpretation

Check every table and figure against the surrounding text.

For each table and figure, verify:

1. It is referenced in the main text before or near its appearance.
2. The reference number is correct.
3. The caption is self-contained enough to understand the content.
4. The row labels, column labels, legends, axes, units, and abbreviations are defined.
5. The table or figure supports the claim made in the prose.
6. The prose does not misread the trend, ranking, scale, or experimental condition.
7. The discussion identifies the main pattern rather than repeating all values.
8. Improvements are calculated using the correct direction and denominator.
9. Percentage-point gains are not confused with relative percentage gains.
10. Higher-is-better and lower-is-better metrics are clearly indicated.
11. Missing values, failed runs, averages, standard deviations, and significance markers are explained.
12. Dataset names, model names, and settings match the Experimental Setup section.
13. Figure colors, line styles, and markers are distinguishable and described.
14. Qualitative examples are representative and not presented as quantitative proof.
15. Every main figure or table contributes to a claim. Remove or move low-value items to the appendix.

When checking numerical interpretation, recompute important differences whenever raw values are available.

### 4. Main Text and Appendix Alignment

Check that the appendix expands the main paper rather than introducing a disconnected second paper.

Verify:

1. Every appendix section is referenced from the main text when relevant.
2. Every “see Appendix” statement points to the correct section, table, figure, algorithm, or prompt.
3. The appendix uses the same notation, names, dataset splits, model settings, and metric definitions as the main text.
4. Full experimental settings in the appendix agree with the summary in the main text.
5. Additional tables preserve the same baseline ordering and formatting conventions.
6. Hyperparameter values match those used to produce the reported results.
7. Prompt templates match the prompting procedure described in the method.
8. Transfer protocols and data splits do not contradict the main text.
9. Additional ablations or results do not undermine the main claim without discussion.
10. Essential information required to understand the core method is not hidden only in the appendix.
11. Reproducibility details are moved to the appendix only when the main text still remains understandable.
12. Appendix equation numbering and cross-references are correct.

### 5. Table Highlighting and Ranking Conventions

Check all quantitative tables for consistent visual marking.

Apply the following convention unless the venue or paper specifies otherwise:

1. Bold the best result in each comparable row or column.
2. Underline the second-best result in each comparable row or column.
3. For higher-is-better metrics, rank larger values higher.
4. For lower-is-better metrics, rank smaller values higher.
5. Do not compare values across incompatible settings, datasets, model sizes, or supervision levels.
6. Treat ties consistently. When values are equal at the displayed precision, apply the same highlighting rule to tied results or report more precision.
7. Do not highlight the proposed method automatically. Highlight strictly according to the values.
8. Exclude unavailable values, oracle settings, or non-comparable upper bounds from normal ranking when appropriate, and state the exclusion.
9. Ensure bold and underline formatting is preserved in the final compiled PDF.
10. Check that the caption or note explains the ranking direction and formatting convention.

For LaTeX tables, inspect the source for inconsistent uses of `\textbf{}`, `\underline{}`, custom macros, and manual formatting.

### 6. Full-Paper Story Review

Read the paper as one continuous argument rather than as independent sections.

Evaluate the story using the following questions:

1. Is the problem important and concrete?
2. Is the limitation of prior work specific and credible?
3. Does the introduction create a clear need for the proposed method?
4. Is the central intuition easy to state in one or two sentences?
5. Do the named components form one coherent framework?
6. Does the Methodology section follow the same conceptual order as the introduction and framework figure?
7. Do the experiments answer the claims in the same order in which the claims are introduced?
8. Does each research question have a clear answer?
9. Is the strongest evidence placed in the main text?
10. Are negative results, tradeoffs, and limitations handled honestly?
11. Does the conclusion resolve the opening problem?
12. Can the complete contribution be summarized as:

`problem -> gap -> insight -> method -> evidence -> implication`

Identify any story break, including:

1. A sudden method component with no prior motivation.
2. A challenge that disappears after the introduction.
3. An experiment that does not support a stated contribution.
4. A contribution that is not demonstrated experimentally.
5. A framework figure whose order differs from the prose.
6. Repeated motivation that does not advance the argument.
7. A conclusion that emphasizes a different contribution from the introduction.

When revising, prioritize story coherence over preserving existing paragraph boundaries.

### 7. Page Budget and Section Distribution

Check the compiled manuscript rather than estimating only from source length.

The main text before the references must fill seven pages. The seventh page should be substantially full.

Verify:

1. The references start only after the seven-page main text.
2. The seventh page is not mostly blank.
3. The Abstract occupies about 3 percent of the main text.
4. The Introduction occupies about 8 percent.
5. The Related Work section occupies about 8 percent.
6. The Problem Formulation section occupies about 7 percent.
7. The Methodology section occupies about 42 percent.
8. The Evaluation section occupies about 20 percent.
9. The Conclusion occupies about 2 percent.
10. Figures, tables, equations, captions, and headings use the remaining layout space.
11. The Methodology is not compressed below the level needed to understand the contribution.
12. The Evaluation contains enough analysis to support all central claims.
13. Related Work and setup details do not consume space needed by the core method.
14. Appendix material is not duplicated unnecessarily in the main text.
15. Page filling is achieved through useful technical explanation, not generic padding.

When the distribution is inappropriate:

1. Move detailed setup, prompts, extra results, and hyperparameters to the appendix.
2. Compress generic background and literature summaries.
3. Expand missing design motivation, component interaction, result interpretation, or failure analysis.
4. Remove low-value tables and figures.
5. Recompile and recheck the actual page boundaries.

## Required Final Review Output

When asked to check a complete paper, return a structured review with the following sections:

1. Critical issues that may affect correctness or acceptance.
2. Notation and terminology issues.
3. Logical consistency issues.
4. Table and figure issues.
5. Main-text and appendix mismatches.
6. Table highlighting and formatting issues.
7. Story and contribution issues.
8. Page-budget and section-distribution issues.
9. Prioritized revision plan.

Each reported issue should include:

`location -> issue -> why it matters -> concrete revision`

Do not provide only general suggestions. Point to specific sections, equations, tables, figures, or claims whenever the source is available.

## Final Quality Checklist

Before finalizing the paper, verify all of the following:

1. The seventh page is substantially full before the references.
2. The title contains a memorable method name and a precise task description.
3. The abstract contains the problem, challenge, prior limitation, method, components, experiment scope, and main result.
4. The introduction follows the six-paragraph structure.
5. Each challenge maps to a named component.
6. The method is presented as a coherent pipeline rather than a stack of modules.
7. The Related Work section contains two or three focused subsections.
8. The Problem Formulation section defines all essential notation.
9. The Methodology section receives the largest share of space.
10. The Evaluation section is organized by research questions.
11. Ablations use the same component names as the Methodology section.
12. The prose does not over-report table values.
13. No em dash or en dash is used as sentence punctuation.
14. No result, citation, or implementation detail is fabricated.
15. The appendix contains the full pipeline, setup, hyperparameters, hardware and efficiency, additional results, and prompt templates.
16. The conclusion is concise and introduces no new claims.
17. Every symbol is defined before use and has one consistent meaning.
18. No notation conflict, undefined symbol, or unnecessary symbol reuse remains.
19. The abstract, introduction, method, experiments, and conclusion make mutually consistent claims.
20. Every table and figure is correctly referenced, described, and interpreted.
21. The main text and appendix use matching settings, notation, and cross-references.
22. Best results are bolded and second-best results are underlined under the correct metric direction.
23. The complete paper follows one coherent problem-gap-insight-method-evidence story.
24. The compiled main text fills seven pages with an appropriate section distribution.

## Output Behavior

When asked to write or revise a paper:

1. Produce polished academic English rather than generic writing advice.
2. Preserve valid technical content from the source material.
3. Improve logical flow, terminology, and challenge-to-method alignment.
4. Suggest appendix transfers when the main text is crowded.
5. Mark unsupported information with precise placeholders.
6. When a compiled PDF is available, inspect the actual page usage instead of relying only on word count.
7. Return LaTeX-ready text when the input is written in LaTeX.
