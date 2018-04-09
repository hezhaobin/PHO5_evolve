---
title: Notes on reading Innan and Kondrashov 2010
author: Bin He
date: 6 avr 2018
categories:
tags:
---

## Three main stages during the evolution of a duplicated gene

- The three stages are, origin through mutation, a fixation phase when it segregates in the population and a preservation phase when the fixed change is maintained.

- Gene duplication follow the general scheme above with one important **addition**: following the fixation of the duplicated copy, acquisition of differences between the copies can alter the chances of both copies being _preserved_. This phase falls between the fixation and the preservation phase, and is named "fate-determination phase" in this review.

    _Note_ the difference between the fixation and the fate-determination phase is, the first part is the fixation of the duplicated copy, while the second part is the fixation of the mutations that differentiate the two copies.

    One of my misconception is that the acquisition of differences between the two copies began as soon as the new duplicated gene is born, and neofunctionalization / sub-functionalization happens at the same time as the duplicated gene rises in frequency. The problem is, when the chromosome(s) carrying the newborn gene are still segregating in the population, the chance of a fate-determining mutation to occur on the mutant chromosome and sweep through the population at the same time as the duplication itself is fixed, is pretty low. Any new mutation, be it duplication or fate-determining mutations, have to go through an early stochastic phase, during which the most likely outcome is loss by drift. The more likely scenario is that the duplication itself is fixed in the population first, followed by the fate-determination phase, during which mutations in one or both copies occur and some reach fixation.

## Classification of models for gene duplication and its maintenance

- The dozen or so models for the evolution and maintenance of gene duplications are classified based on the selective forces at different stages of the life history of the duplication. In particular,

    In the fixation phase (let A-A denote the new mutation, i.e. duplicated genotype, and A the ancestral, single-copy genotype), P[fixation of A-A] depend on the relative strength of selection for the A-A and A genotypes.
        - Models in Category I: duplication is neutral, A-A will be fixed in the population at a probability of 1/2N and the fixation process take on average 4N generations.
        - Models in Category II and III: involves positive selection in the fixation phase, so fixation probability is higher and time to fixation is shorter compared to the neutral scenario.

### Category I

This category includes the most familiar models like neofunctionalization and sub-functionalization (DDC, EAC). It has the following features:

- Gene duplication itself is neutral, and is fixed by genetic drift.

- Since gene duplication gives no advantage, the fate determination phase has to happen rapidly so that the competing pseudogenization process doesn't occur first (selection is relaxed before the preservation stage)

- The DDC model differs from the neo-functionalization and the EAC models in that positive selection is not involved in the fate-determination phase. Rather, degenerating mutations in each of the two copies result in a scenario where each mutated copy only performs part of the ancestral gene's function, and thus both copies are required, thus selectively maintained.

- During the preservation phase, the molecular evolution in the original copy will be 

    - the same as pre-duplication under the neo-functionalization model, while that in the duplicated copy will be accelerated under a combination of relaxed constraint and positive selection.

    - accelerated under both DDC and EAC. So does the duplicated copy. The difference between DDC and EAC is that the former is due to relaxed selective constraints while the latter is due to a combination of relaxed selection and positive selection.

### Category II

This category is distinguished from the first one in that all models in this category assume a fitness advantage during the fixation phase, that is, the duplication itself is advantageous. It includes three models that differ in what advantage the duplication confers: the first model attributes the advantage to dosage increase, the second to shielding against deleterious mutations and the third to new function. The third is very similar to models in category I, except that it assumes the duplication creates a mutant copy of the original gene and results in new functions that are beneficial for the organism. The Philadelphia chromosome may be one such example in the context of cancer cell evolution.

### Category III

This category considers models in which duplication occurs in a gene for which genetic variation exists in the population. Similar to the 3rd model in Category II, the fate-determining mutations and the duplicate itself are fixed almost at the same time. The difference is, here we assume the fate-determining mutations were pre-existing rather than created at the same time as the duplication event.

Another common feature for two of the three models in this category is the requirement for recombination between the two copies, because the advantage here comes from having two different copies of the gene with slightly different functions. Without recombination between the two copies, each individual would have two identical copies that don't confer any advantage.

- Adaptive radiation

    This is the only model in this category that doesn't require recombination during the fixation and fate-determination phase. It assumes a period of "pre-adaptation", during which some gene copies in the population would pre-adapt to perform new functions while _still_ performing the original function of the gene. The duplication of one such pre-adapted gene copy then allows the new function to be further improved (somewhat like the EAC model) because the constraint of maintaining the old function is now alleviated by having another copy. Subsequent fixation of the duplicate and the fitness-improving mutations therein should be driven by positive selection. Recombination events during the fixation phase can create new combinations, whose fitness effect is not clearly predicted. 
	The original formulation of the model stressed that this process can occur repeatedly, resulting in a large family of genes. Some genes may more prone to adaptive fixation of duplications. This is an interesting model to consider for the phosphatases.

- Multi-allelic diversifiying selection

    If selection favours genetic variability (e.g. antibodies), gene duplications are beneficial because they provide a larger target for mutation and selection. I don't feel like this model applies to our system

## My thoughts

### Questions

- In case of the _PHO5_ family, does gene duplication itself provide an advantage (by dosage increase, shielding deleterious mutations, or with an instantaneous gain of new function through imperfect duplication)?
- What was the function of the ancestral _PHO5_ gene? In other words, is the subsequent functional specialization neo- or sub-functionalization?
- What was the evolutionary force driving the specialization?
- What is the evolutionary force preserving the duplicated genes, or lack thereof in case of losses?
- Was there a recent shift in the environment that created the need for diversification?

### Observations

- _PHO5_ family has experienced repeated gene gains and losses over the evolutionary history of the Hemiascomycete yeasts. However, with my current phylogenetic analyses, I can't identify a lineage that has not experienced a duplication event, and thus would represent the pre-duplication state. As a result, it is difficult to infer the ancestral functional and regulatory states of the _PHO5_ family.

### Discussion

- Don't know: 
    1. whether duplication itself provided any advantage
    1. whether the specialization represented sub- or neo-functionalization
    1. whether there was already selection generating multiple alleles in the single gene locus prior to duplication, as specified by the adaptive radiation model.

- Possible explanations

    1. Duplication of the _PHO5_ family is well tolerated compared to other gene families, and thus they are more prone to such events. 
    1. After duplication, the extra copy is most likely to be lost. In some cases, both (or more than 2) copies were preserved, via the DDC model (non-adaptive) or the EAC model (adaptive).

- Ideas for further analyses

    1. For the _PMU_ family, our evidence strongly suggests neo-functionalization. The reason is because _PMU1_, which was considered to more closely resemble the ancestral gene than either _PMU2_ and _PMU3_, doesn't respond to either phosphate or thiamine starvation (Fig. 4), and showed no enzymatic activity against either 1-NP or PNPP. It showed a very low activity against TPP, at a level close to Pho5 does. Thus a plausible evolutionary scenario is that the ancestral _PMU_ gene doesn't perform phosphatase function under either phosphate or thiamine starvation conditions. Two rounds of duplications led to the tri-gene arrangement seen in the extant _C. glabrata_. Subsequent mutations in both the promoter and the protein sequence regions specialized _PMU2_ and _PMU3_ copies and led to their preservation. 
    It is unclear, however, whether the evolution of the _PMU_ family preceded or occurred after the loss of the _PHO5_ family in this species.
    To distinguish between the NF vs the DDC/EAC models, all within Category I, for the _PMU_ family, we could look at the rate of molecular evolution in the two specialized copies, i.e. _PMU2_ and _PMU3_, vs that in _PMU1_. The expectation is that _PMU2_ and _PMU3_ will show accelerated protein evolution and promoter evolution compared to _PMU1_. 

    1. For the _PHO5_ family, I think we need to do our best to figure out the ancestral functional and regulatory state of the gene family.

    1. It is worth noting that BLAST identified just one _PMU_ family gene in the other _glabrata_ clade species other than _C. glabrata_. Do they have other gene families in place of _PMU_ and _PHO5_? 

    1. How does gene conversion affect the fixation and fate-determination of gene duplicates? Is the chance for gene conversion higher between recent tandem duplicates than older, or unlinked ones?
