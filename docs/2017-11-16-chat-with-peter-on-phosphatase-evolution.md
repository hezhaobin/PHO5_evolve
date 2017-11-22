---
title: Chat with Peter on phosphatase evolution
author: Bin He
date: '2017-11-16'
slug: chat-with-peter-on-phosphatase-evolution
categories:
  - discussion
  - collaboration
tags:
  - peter andolfatto
  - dennis wykoff
  - pho
---

[Link](/docs/2017-11-15-elife-decision-on-phosphatase-evolution-paper.md) to the previous post on this topic.

## On gene conversion as an alternative explanation for the gene tree

Peter gave an example of how gene conversion (he termed it **concerted evolution**) could result in gene trees that look as if there has been recent gene duplication, while the duplication events were actually ancient. 

The example he gave was about sodium potassium ATPase in a group of frog species, each of which has two duplicated copies of the gene, one being sensitive to the toxin cardenolide, the other being resistent. 

The gene tree using whole protein sequence alignment showed that the paralogs within a family are more similar to each other than to their ortholog in related species, a pattern that is most consistent with recent duplication after speciation, as we have observed with the phosphatase gene family. 

A strange pattern, however, signaled something was not right -- the resistant copy in multiple species, despite them being more similar to the non-resistent copy in the same species overall, shared *exactly the same 10 amino acid substitutions in tandem*. Under the recent duplication scenario, this would have suggested an extreme level of parallel evolution -- each of the resistant copy must have to _independently_ fixed exactly the same 10 amino acid subsitutions, a scenario that is difficult to imagine given that _mutations are random_ and there are usually _more than one way_ to achieve something. 

One could argue that those 10 amino acid substitutions, in tandem, are the only ways to achieve resistance without breaking the protein. If that were true, one would have to believe that each of the substitutions have some advantage, since they have to arise as single mutations _de novo_ in _each species_ and spread through the populations. Biochemical studies, however, only identified two of the ten substitions to be responsible for the resistant phenotype. So what could be the alternative explanation?

Peter suggested that the duplication might have been **ancient**! Then how could one explain the gene tree topology? Since the two copies in each species are always in tandem, gene conversion events in each of the species may well explain the **derived** high level of similarity. In other words, the two gene copies in each species are being "homogenized" by gene conversion events. 

The most remarkable support for this hypothesis comes from the synonymous changes -- while 97 of the 99 silent substitutions supports the "recent duplication" tree, the two that don't show the same pattern as the replacement substitutions, in support of the ancient duplication hypothesis. Amazingly, these two synonymous changes were the only ones in the same codons as the 10 shared amino acid changes. The explanation is that they escaped the homogenizing forces by gene conversion because they are tightly linked to the critical amino acid changes maintained by selection.

How can we look for evidence for such concerted evolution, or the lack thereof, so as to prove our conclusion of repeated duplication? Peter suggested that there are published software looking for gene conversion tracks, which basically march through the sequence alignment to look for gene tree discordance in some parts compared to the rest of the protein. He emphasized, however, these methods wouldn't have worked for the ATPase case as the region in support of the ancient duplication is too short.

## On editor's critiques

In [yesterday's notes](/docs/2017-11-15-elife-decision-on-phosphatase-evolution-paper.md), I expressed my doubts on whether including more species is necessary or useful. Today after showing the critique to Peter, he immediately saw the point which I missed: the prolem is not _how many_ species, but _which_ species we included. Think of it this way: in the "big" tree of fungi, where do the species we analyzed lie? If they all lie within a small group of species, then we cannot draw the conclusion as we did in the paper, namely this repeated duplication and functional partitioning happened recently throughout fungi. To support such a statement, one needs to carefully pick the species to represent all major groups. This is the task I need to accomplish. 

## On clustered amino acid substitutions and epistasis in protein evolution

This is on a different topic. After I showed Peter the [anti-correlation pattern](https://docs.google.com/drawings/d/1yf3tRM-Jok-SB3De2LrKIcAXFk2RmgomJV6YmpqS67Q/edit?usp=sharing) between the _PHO5_ and the _PMU1_ family in terms of copy number and acquisition of signal peptide, he told me about the clustered substitution phenomenon they observed in fly. The essence is that, when examining protein coding substitutions that changed the amino acid sequence, they found that conditional on the focal site containing a substitution, the neighboring nonsynonymous sites within 5 codons are twice as likely to contain a replacement substitution compared to ones 10 codons apart. 

Moreover, when the nature of those substitutions were examined, they found that clustered substitutions in the same species tend to cause _opposite_ changes in charge, while those in different species tend to be the _same_ direction in charge changes. 

The interpretation is that, substitutions happening in the same species were likely to be compensatory -- one or some of the substitutions might be beneficial due to their effect on the protein function, while others in the vicinity might be compensatory in nature, e.g. to restore the charge on the surface so as to maintain the protein's physiochemical properties. Substitutions in different species, however, might be due to convergent evolution, where changes with similar effects on a protein's properties might be fixed to achieve the same outcome.

Their study of the sodium potassium ATPase suggested widespread epistasis -- when they engineered a non-resistant _D. melanogaster_ allele by making two amino acid changes known to be responsible for the resistant phenotype in a resistant copy from a monarch species, the resulting protein appears to be not expressed or non-functional. They suspect that a third substitution, positioned precisely in between the two functional sites and strongly linked to them (the resistant copy always have a serine at the middle site), might be the answer. He suggested we should look into the phosphatase evolution -- how did they alter their enzymatic function, how much epistasis, compensatory substitutions, etc. are there, and how do they acquire signal peptide in order to be exported.

It was really an informative discussion!
