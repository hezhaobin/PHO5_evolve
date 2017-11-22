---
title: Phylogentic analysis of phosphatase gene family evolution in Hemiascomycetes
author: Bin He
date: 5 juillet 2017
---


Background
==========

When starved for inorganic phosphate in its environment, one of the responses yeast has is to produce an acid phosphatases and secret it into the environment to scavange phosphate from organic sources, which are not directly transportable until broken down by the phosphatase action. 

The first gene encoding such a secreted acid phosphatase was discovered in the budding yeast and is named _PHO5_. Subsequently two additional genes with similar sequences and function were discovered in the same genome, making a family of phosphatase genes named after the first gene, i.e. Pho5. 

In a related species, _C. glabrata_, no orthologs can be identified for the Pho5 family. Nonetheless, biochemical assays clearly indicate that this species' genome encodes at least one secreted acid phosphatase. Kerwin and Wykoff (2009) identified the gene encoding the major secreted acid phosphatase in this species being _PMU2_. This gene is not species-specific in _C. glabrata_. Rather, its ortholog in the budding yeast is characterized as a "phosphomutase", and the gene product is _not_ secreted outside the cell. It is likely, based on other evidence not detailed here, that _C. glabrata_ coopted the ancestral _PMU2_ gene to become a secreted phosphatase, by both changing the substrate specificity of the gene, adding a signal-peptide for secretion and altering its promoter for it to be under the regulation of the master regulator for phosphate starvation.

Searches in multiple related yeast species based on sequence homology to either _PHO5_ or _PMU_ genes revealed an intriguing evolutionary history of these two gene families (_PMU_ has three copies in _C. glabrata_). It turned out that both families have experienced repeated expansion and loss in different lineages, and thier patterns are often complimentary, such that lineages with a large Pho5 family tend to have fewer or none of the Pmu family, and vice versa. Bioinformatic predictions of signal-peptide sequences, which are indicative of the gene product being secreted, follows the gene family expansion / contraction history in general, with at least one member of the predominant family of the two to have a signal-peptide gained in each lineage examined.

Aim
===

Resolve the evolutionary history regarding the expansion and contraction (loss) of **Pho5** or **Pmu** families in the Hemiascomycetes. Pay particular attention to the timing of the expansion or contraction events relative to speciation events, so as to distinguish between convergent evolution (implies frequent gain and loss) and inherited state (gain or lose once, then inherited by closely related species).

Approach
========

1. Fetch _PHO5_ and _PMU_ like genes in Hemiascomycete yeasts. 

    * which species' gene sequence to use as the bait?
	* which algorithm (blast flavor) to use for the task?
	* what cutoff to use?
	* how to determine false-negative and false-positives?
	
    * **Manually curate and cleanup the sequences**

1. Sequence alignment and gene geneaology inference

	* which program to use?

	* Manually curate the tree


Notes
=====

Separate README.md files under `docs` folder

### [8 novembre 2017] predict signal peptide

### [22 novembre 2017] test Notung reconciliation
