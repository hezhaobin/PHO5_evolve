---
title: Predict signal peptide for _PHO5_ and _PMU1_ homologs
author: Bin He
date: 8 novembre 2017
---

## Goal

- Predict signal-peptide sequence in _PHO5_ and _PMU1_ homologs among Ascomycete yeasts, to test the convergent evolution among phophatase-encoding genes. See [16 sep 2016] notes for details.
- Update the initial analysis performed on 16 sep 2016. Add new sequences missing from [orthogroup](https://portals.broadinstitute.org/regev/orthogroups/), especially the sensu stricto clade, which has been re-sequenced by Chris Hittinger and colleagues, resulting in much better coverage.

## Notes

### [8 nov 2017] Repeat signal peptide prediction

_Goal_

- I've completed the check for missing homologs of _PHO5_ and _PMU1_ in the Orthogroup list, which I used for signal peptide prediction in the first round. Now the task is to redo the prediction and update the figure.

_Notes_

- submitted the curated sequence fasta files for _PHO5_ and _PMU1_ to [SignalP 4.1 Server](http://www.cbs.dtu.dk/services/SignalP-4.1/)
- I didn't include _A. nidulans_ and _N. crassa_ in my latest round of homolog searches, while they are included in Orthogroup. I tried to put in two Anid sequences in _PHO5_ fasta, but as different websites disagree on the genes to include, I decide to leave them aside for now.
- When examining the output of SignalP-4.1, I found that its use of cutoff (D > 0.45) excludes several sequences that are borderline. Ideally I should make a color gradient to reflect the uncertainty in the prediction. Instead, I did a rough treatment by creating a third category of "MAYBE", for which I relaxed the cut-off to 0.400. I modified the gff files downloaded from SignalP-4.1 accordingly.
- Finished updating the figure with the new signal peptide prediction. The qualitative picture remains the same.

_Conclusion_

1. One interesting finding not included in the figure is that _C. glabrata_ is the only species in the Nakaseomyces group that has expanded the _PMU1_ family. The rest of the species have just one copy (presumably the ancestral one), and don't have signal-peptide by prediction. On the other hand, Cbra and Ccas seem to have a copy of the _PHO5_ homolog. I haven't determined if they are predicted to have signal peptide or not.

### [31 aout 2017] Curating _K. lactis_ _PHO5_ homologs

-   After digging deeper into Orthogroup's website and its documentation, I realized that some of the "missing" sequences can be recovered by clicking on the "orthogroup homologies" link. In fact, while the "Pho5 orthogroup" only included one Klac gene (KLLA0C19338g, likely ortholog of Pho5 as it has the highest similarity to ScPHO5), four additional genes are among the "orthogroup homologies". One of them, called KLLA0E24981g in the Orthogroup page, turned out to be the same sequence as KLLA0E24949g recovered from BLAST. Various places use different names: KEGG uses 24949g, while [another site](http://bioinformatics.zj.cn/Yeast/detail.php?geneid=kla:KLLA0E24981g) uses 24981g.

-   This particular data structure arise from the unique methodology they used -- requiring not only sequence similarity but also synteny -- and it will probably exclude genes that descended from an ancestral gene, but which has experienced multiple rounds of duplication and gene loss independently in different lineages.

-   This issue only occurs in Pho5, not Pmu2. In the latter, no HMMSearch-based orthogroup homologies exist.

_Results_

TABLE  Gene Name Correspondence Map

| Species | Gene Name in Orthogroup | Gene Name from BLAST if different | Also known as |
| ------- | ----------------------- | --------------------------------- | ------------- |
| S. mikatae | Smik87-g4.1 | Smik_2.235 |\ |
| S. mikatae | Smik87-g5.1 | Smik_2.234 |\ |
| S. mikatae | **missing** | Smik_2.233 |\ |
| S. pombe | SPBP4G3.02 |\ | pho1 |
| S. pombe | SPBC428.03c |\ | pho4 |
| S. pombe | SPBC21H7.03c |\ | N/A |
| S. cerevisiae | YBR093C |\ | PHO5 |
| S. cerevisiae | YBR092C |\ | PHO3 |
| S. cerevisiae | YHR215W |\ | PHO12 |
| S. cerevisiae | YAR071W |\ | PHO11 |
| S. cerevisiae | YDL024C |\ | DIA3 |

### [17 septembre 2016] Predict signal peptide for _PHO5_ and _PMU1_ homologs based on Orthogroup genes

#### Motivation

-   I mentioned to Andrew about the evolutionary loss of the PHO5 family of repressible acid phosphatases in C. glabrata, in which a newly expanded PMU1/2/3 cluster seem to have taken over the role of the lost genes. Since the ancestral PMU gene most likely resides inside the cell, rather than being secreted like PHO5 family, one would expect a new signal peptide must have been evolved at the N-terminal of the derived PMU1/2/3. And that turned out to be true, as pointed out in one of Dennis Wykoff's papers (Orkwis et al 2010)

-   Andrew suggested I should look at the distribution of  signal sequences among PMU gene orthologs in the hemiascomycetes. The underlying question is, has the same evolutionary path been taken by other species perhaps experiencing similar environmental changes as C. glabrata does?

#### Method

-   I downloaded the multiple sequence alignment (orthogroup) from Wapinski and Regev's Orthogroup website (the website has been repaired and now the search function is accessible again, hoorey!)

-   I then uploaded the sequences onto "Signal Predict 4.1" ([link](http://www.cbs.dtu.dk/services/SignalP-4.1)).

    This server "predicts the presence and location of signal peptide cleavage sites in amino acid sequences from different organisms: Gram-positive prokaryotes, Gram-negative prokaryotes, and eukaryotes." using a combination of several neural networks

#### Result

-   The prediction results are stored in Pho/Analysis/PMU_signal_peptide_prediction folder.

-   I also downloaded a gene tree based on AA alignment from the orthogroup website, and highlighted the gene lineages that is predicted to have a signal peptide.\
    ![](https://lh3.googleusercontent.com/WKKWwJ_bPVgQ398gcAWuV1olgGAfSeXjrHZoBeV3IFIX8M03KwpQL9FVydLjbLGk-V6BUwyl6lYSmKl_Z233a6_SbyKk86JV_-e35FtFRAcWEnuWJlwiATibap8nWvT6gcjPun0_)

    1.  First of all, it seems PMU genes have experienced a number of duplication events in the hemiascomycetes. In particular the relationship of PMU2/3 in C. glabrata with other single copy genes in related species seem to suggest PMU2/3 come from an ancient duplication events, prior to the split of S. cerevisiae and A. gossypii (!), which have left only one member in most species. However, I'm not really confident about this interpretation.
    
    2.  The highlighted lineages (in red) are predicted to have signal sequences in the protein.
    
    3.  Looking at the albicans part of the tree (the middle chunk), I infer there was a duplication event in the common ancestor of C.lusitaniae and L. elongospor that led to three paralogs, each of which have been maintained in all lineages. In one of the three paralogs (the bottom clade), all member have acquired a signal sequence, which suggests the addition of that leader sequence happened after the duplication event that created the copy, but before the split of the species in that group.

-   PHO5\
    ![](https://lh4.googleusercontent.com/rA1UGla-7am1P3ErBZtgVCZLedHpnlisfxm8trO49VT8GGbvVJxcOEVx7ldl-YhfbW1HriitxQrEHqE0kEDxG3acFABItlAtpgfHIuCPI249mzRL2FhFiIzOlflrzK4TvRSYyCjw)

    1.  PHO5 family seems to have originated earlier than the PMU family, or at least its orthologs are more readily detectable in far-flung lineages such as S. pombe
    
    2.  In contrast to the PMU family, in the PHO5 family genes, it's the S. cerevisiae and its close relatives in the sensu stricto group that has experienced dramatic expansion. There appear to be FIVE homologs of PHO5 in S. cerevisiae alone, and all were predicted to have signal peptides. All orthologs in the sensu stricto group and the single copy of that family in outgroups includng K. waltii, K. lactic and S. kluyveri also have predicted signal peptide.
    
    3.  Lineages / clades that have seen expansion of the PMU gene family and repeated emergence of signal peptide, show at most one clade-wide expansion of PHO5 family. In addition to that event are several instances of lineage-specific duplications, such as in D. hansenii, C. albicans etc. Moreover, only three gene lineages in that part of the tree are predicted to have signal peptide.
    
    4.  Overall, the results above seem to suggest that cerevisiae clade and albicans clade + glabrata clade have used alternative gene family to accomplish the same task.
    
    5.  Given what we know about the substrate spectra of PHO5 vs. PMU2, as detailed in Dennis' work, one could attempt to associate the evolutionary choice of which gene family to expand with the type of environment (in particular, sources of organic phosphate).
