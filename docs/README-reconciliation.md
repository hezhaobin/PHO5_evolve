---
title: Reconcile species tree and gene tree
author: Bin He
date: 22 nov 2017
---

## Goal

Reconcile gene tree with species tree to infer duplication and loss events

## Background

After [talking to Josh](/docs/2017-11-18-discuss-with-josh-on-phosphatase-duplication.md), I came to realize that gene family amplification and contraction didn't just happen at the tips (recent evolutionary history), but has always been going on. This dynamic process produces the complex pattern in the gene tree, which confused me in the first place, and is part of the reason why I decided to present the results for just four species -- chosen so that the gene tree looks "clean". Instead of manually inferring the evolutionary history, a much better and consistent way is to use a formal reconciliation algorithm, such as Notung.

## Notes

### [22 nov 2017] Install Notung 2.9 and format gene tree to annotate species names

- Installed Notung 2.9 as instructed by the [website](http://goby.compbio.cs.cmu.edu/Notung/download29.html#)
- Created a text file to list all 16 species in the Orthogroup [link](/data/tree/Orthogroup_species.txt)
- Used [NCBI Taxonomy tool](https://www.ncbi.nlm.nih.gov/Taxonomy/CommonTree/wwwcmt.cgi) to import the file above and save the tree as phylip
- Imported both the [gene tree](/output/notung/pho5_ascomycetes_tree_20171115.txt) and the species tree in Notung and performed reconciliation
