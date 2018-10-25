---
title: Alignment of protein coding sequences
author: Bin He
date: 24 oct 2018
---

## [24 oct 2018] Try PROMALS3D to align PHO5 family sequences
Learned about this structure guided alignment tool from Jan's lectures. Tried it on `../data/sequence/Pho5_aa_select_unaligned_20170710.fa`. Result is saved in the alignment folder. The parameters used are as reported below:

> Alignment parameters:
> 
> Identity threshold above which fast alignment is applied: 0.6
> Weight for constraints derived from sequences: 1
> Weight for constraints derived from homologs with structures: 1.5
> Weight for constraints derived from input structures: 1.5
> 
> Parameters for profile-profile comparison:
> Weight for amino acid scores: 0.8
> Weight for predicted secondary structure scores: 0.2
> 
> Parameters for deriving sequence profiles from PSI-BLAST searches:
> PSI-BLAST iteration number: 3
> PSI-BLAST e-value inclusion threshold: 0.001
> Identity cutoff below which distant homologs are removed: 0.25
> Maximum number of homologs kept for PSI-BLAST alignment: 300
> 
> Parameters for detecting and using homologs with 3D structures (homolog3d):
> PSI-BLAST e-value cutoff against structural database: 0.001
> Identity cutoff below which 3D structures are not used: 0.2
> Align homologs with 3D structures by programs: dali - not used; fast - used; tmalign - used
> Realign target-homolog3d using profile-profile alignment: yes
> 
> Parameters for pairwise alignments between input 3D structures:
> Align input structures by programs: dali - not used; fast - used; tmalign - used
> 
> Parameters for aligning sequences within groups in the first alignment stage:
> Align sequences within groups in the first alignment stage by: maffti

In ScPho5, amino acids 66-80 and 331-347 encode the two histidine acid phosphatase domains. The histidine residue is conserved in the alignment.
