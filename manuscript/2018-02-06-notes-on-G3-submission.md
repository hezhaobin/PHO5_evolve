---
title: Notes on G3 submission 
author: Bin He
date: 6 fev 2018
catelog:
  - manuscript
  - collaboration
tags:
  - dennis wykoff
  - pho
---

### Abstract

Logic should be: 

General question - observation of repeated expansion of phosphatase gene families and subsequent specialization - Specific example in _S. cerevisiae_ - loss of Pho5 family and co-option of new phosphatase family in _C. glabrata_ - Generalize the results with broad phylogenetic analysis - emphasize that gene loss occur concomitantly with gene duplication - Final implication for role of gene duplication and specialization in evolution

### Introduction

- The second paragraph should start with _S. cerevisiae_ _PHO5_ and _PHO3_, followed by the discovery in _C. glabrata_. This then leads to the investigation for the function of Pmu3.

- Line 70: what's the evidence for CgPmu1 being "likely similar to the ancestral gene conserved in most Ascomycetes?"

    The evidence for this statement is presented in Orkwis 2010 _Genetics_, in which the authors argued that because _CgPMU1_ is the closest among the three _CgPMU_ genes to the single member of _ScPMU1_, and since _ScPMU1_ is not known to have ... I think the evidence here is not really strong.

### Results

- RNA-seq replicates  

    It is not uncommon to have no replication in a time-course RNA-seq experiment. The logic is that a consistent trend of up- or down-regulation identified in multiple post-treatment time points is strong evidence for the gene to be a true positive. If necessary, one could pool the control and treatment group at different time points, treating them as replicates.

- Repeated expansion of gene families encoding phosphatases ...  

    I think the motivation for this analysis should be we discovered two evolutionarily independent specialization of phosphatases, which made us wonder if this is a special case in _C. glabrata_ due to the loss of the _PHO5_ family, or has there been repeated gene duplication and subsequent specialization even within the _PHO5_ family across species. Another observation that motivates the analysis is that there are different number of _PHO5_ family genes in the Ascomycete yeasts, suggesting dynamic evolution of this gene family.

- Typo on line 190: ascomyota -> ascomycota

- Specialize the transcription of phosphatase genes  

    We don't have results in _K. lactis_, which is less than satisfying

- Line 304: " _PHO5_ family is unable to discriminate between the organic compounds attached to the phosphate." Evidence? Citation?

- Line 306, should the figure citation be **Figure 6, left** rather than **Figure 6, right**? Also, from the results, it seems like Pho3 is just a more effective phosphatase than Pho5 overall, no?

### Discussion

- One issue reviewer 1 raised is with regard to the evolutionary forces behind the evolutionary dynamics and specialization of the two phosphatase families. Our paper emphasizes the role of natural selection in promoting convergent evolution at the level of phenotype. An alternative explanation is that gene duplication happen frequently and the duplicated genes survive by subfunctionalization -- which implicitly assumes that the ancestral gene is induced under both phosphate and thiamine starvation, and has activities against both substrates.
