---
title: Methods for the PHO5 family phylogeny analysis 
author: Bin He
date: 6 oct 2017
---

# Methods

## Identify and retrieve _PHO5_ homologs in four yeast species

We chose four species, i.e. _S. cerevisiae_, _S. mikatae_, _K. lactis_ and _S. pombe_, because they span a wide range of evolutionary distance and all four have multiple gene members in the _PHO5_ family. To reconstruct their _PHO5_ family phylogeny, we first identified members of the gene family (paralogs of _ScPHO5_) in each species (Table x). For _S. cerevisiae_, we performed BLASTP search using ScPho5 protein sequence as query against the latest S288C reference genome Open Reading Frame dataset (Saccharomyces Genome Database, updated Jan 13, 2015). For _S. mikatae_, because the latest genome assembly has not been included in the NCBI database, we downloaded the annotated fasta file containing gene features from the Saccharomyces sensu stricto genome website (http://www.saccharomycessensustricto.org/current/Smik/Smik.fsa, Scannell et al. 2011). A tBLASTn (v2.2.29) search (`makeblastdb -in Smik.fsa -parse_seqids -dbtype nucl; tblastn -query ScPho5.fa -db Smik.fsa -out test`) was performed locally to yield three significant hits. For _K. lactis_ and _S. pombe_, we performed tBLASTn (https://blast.ncbi.nlm.nih.gov, default parameter) searches using ScPho5 protein sequence as query against each species' RefSeq RNA database. The searches returned five and three significant hits, respectively. We also tested HMMER (https://www.ebi.ac.uk/Tools/hmmer/, Finn et al. 2015) for its higher sensitivity in detecting remote homologies, and got the same results. The DNA sequences for all _PHO5_ family gene members are provided as supplementary file X (Pho5.fa in zipped file).

Table X. _PHO5_ family genes

| Species | GeneID | GeneName | Protein length |
| :------ | :----- | :------- | :------------- |
| S. cerevisiae | YBR093C | PHO5 | 467 |
| S. cerevisiae | YBR092C | PHO3 | 467 |
| S. cerevisiae | YHR215W | PHO12 | 467 |
| S. cerevisiae | YAR071W | PHO11 | 467 |
| S. cerevisiae | YDL024C | DIA3 | 468 |
| S. mikatae | 2.235 | NA | 467 |
| S. mikatae | 2.234 | NA | 467 |
| S. mikatae | 2.233 | NA | 467 |
| K. lactis | KLLA0C19338g | NA | 469 |
| K. lactis | KLLA0B00286g | NA | 476 |
| K. lactis | KLLA0A00176g | NA | 476 |
| K. lactis | KLLA0D00258g | NA | 492 |
| K. lactis | KLLA0E24949g | NA | 492 |
| S. pombe | SPBP4G3.02 | pho1 | 453 |
| S. pombe | SPBC428.03c | pho4 | 463 |
| S. pombe | SPBC21H7.03c | N/A | 463 |

## Sequence alignment and phylogeny reconstruction for _PHO5_ family genes

The amino acid sequences were aligned using ProbCons (Do et al. 2005) with the following parameters: 2 consistency reps, 1000 iterative refinement reps, 0 pre-training reps. Protein phylogeny was reconstructed using PhyML website service (v3.0, http://www.atgc-montpellier.fr/phyml/, Guindon et al. 2010), with the aligned protein sequences as input and the following parameters: AIC for model selection, using BIONJ to construct the initial tree, SPR for tree improvement, no random starting tree used, aBayes for fast likelihood-based approximation, 1000 bootstraps.

## Syntenic relationship between _PHO5_ homologs in _S. cerevisiae_ and _S. mikatae_

To further undertand the evolutionary relationship between the _PHO5_ homologs in the two closely related species, we examined the syntenic relationship using the Yeast Gene Order Browser (YGOB, http://ygob.ucd.ie/, Byrne and Wolfe 2005). It shows that the three _PHO5_ homologs in _S. mikatae_ form a single cluster, suggesting a possible origination through tandem duplication. The syntenic region in _S. cerevisiae_ contains just two genes, _ScPHO5_ and _ScPHO3_, which are also arranged in tandem. The other three _PHO5_ homologs in _S. cerevisiae_ are on different chromosomes. We also looked at _K. lactis_ and found that none of its five _PHO5_ homologs are syntenic with those in _S. cerevisiae_ or _S. mikatae_. The distantly related _S. pombe_ is not included in YGOB.

