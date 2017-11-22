---
title: Discuss with Josh on phosphatase duplication
author: Bin He
date: '2017-11-18'
slug: discuss-with-josh-on-phosphatase-duplication
categories:
  - discussion
tags:
  - pho
  - dennis wykoff
  - joshua rest
---

## Recent duplication conclusion is flawed

We concluded based on the gene tree - species tree pattern that there have been multiple, recent duplications of the _PHO5_ and _PMU1_ family genes in multiple Ascomycetes. This conclusion, however, is based on just four species data, which leads to two issues. The first I've mentioned in a [previous post](/post/2017/11/16/chat-with-peter-on-phosphatase-evolution/). In essence, to claim that the pattern is widespread, we need to show that our analyses included representative species from all major groups of Ascomycetes. 

The second problem is specifically about what we can conclude from the gene tree. One reason I decided to present results from just four species is because the gene tree for these four species are "clean", i.e. paralogs mostly cluster together within each species, supporting our conclusion of duplication post speciation. It turns out, however, adding more species quickly make the tree "look messy": it no longer shows the clear clustering of paralogs within a species. Rather, paralogs from an outgroup would look "nested" (e.g. the two _L. kluyveri_ homologs in the tree below), as if several ancient duplications has occurred, and yet most have been lost in the species that formed later.
    
![complex pattern of gene tree](/img/2017-11-20-subtree-PHO5-illustrate-complex-pattern.png)
    
Fundamentally, our initial conclusion is based on a faulty intuition. The intuition is that the phosphatase family has repeatedly amplified **recently**, and acquired new functions through convergent evolution. This, however, implies that something is special about the recent time that is distinct from large parts of the evolutionary history, which is not based on any evidence and difficult to justify. A more reasonable assumption / intuition is that the phosphatase gene family has always been subject to amplification **and contraction**. This would explain the gene tree we saw above nicely -- most ancient duplicated copies are now only retained in one or a few species, hence the tree with many "lonely" branches that is populated by a single species (if everything is retained, we should see, for each duplicated gene, a mirror of the species tree with all the species that descend from the ancestral branch where the duplication occurred).

So how should we modify our analysis? It turns out that this problem has been encountered, thought about, and dealt with before. There are published methods that attempt to reconcile the gene tree and the species tree, in order to infer historical gain and loss events. One of them is called [Notung](http://www.cs.cmu.edu/~durand/Notung/).

Also check Chuck Davis paper, in which Josh contributed the phylogenetic analysis. They were trying to estimate timing of all duplication events.

## Identify and retrieve all homologs of the gene family in many species

Suppose we decide to expand our analysis to a large number of fungal species with published genomes, how can I avoid the manual homolog detection and curation as I did for the 16 species included in the Orthogroup database? Here are what Josh suggested I could do:

- Download the genome sequences for the species we are interested in.

- Build database from the sequences, using software provided by the search algorithm (e.g. BLAST or HMMER)

- psiBLAST, builds position specific substitution matrices based on the initial BLAST, so the results are more specific to the sequences we study.

- HMMER, needs to input an alignment?

- Instead of custom searches, Josh also suggested using PFAM to pull out orthologs in each genome we are interested in, based on structural information.

- The PFAM approach may also be relevant for structure based homology modeling in the case of Pho4, for the purpose of identifying potentially functional substitutions between Pho4 orthologs.
