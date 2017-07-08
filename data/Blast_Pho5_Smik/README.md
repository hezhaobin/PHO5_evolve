---
title: "BLAST to detect homologs/paralogs of ScPho5 in _S. mikatae_ genome"
author: Bin He
date: 7 juillet 2017
---

# Goal

This analysis uses the annotated gene ORFs by Scannell et al 2012, and hopefully identifies the homologs/paralogs of ScPho5

# Analysis

## 1. Align to a ultra-scaffolds based database

## Note

BLAST against the ultra-scaffolds, which were produced by MEGA-BLASTing the unordered scaffolds to the 16 _S. cerevisiae_ genome. This is in fact performed after the second analysis, but listed first because its result is more "coarse", as it only shows chromosomal position, not gene features.

## Procedure

1. Download the ultra-scaffolds files (http://www.saccharomycessensustricto.org/current/Smik/Smik.ultrascaf)

1. Make the database `makeblastdb -in Smik.ultrascaf -parse_seqids -dbtype nucl`

    * there was some errors "FASTA-Reader: Ignoring FASTA modifier(s)". Ignored for now.

1. Perform BLAST `tblastn -query Pho5.fa -db ./db/ultra-scaffolds/Smik.ultrascaf -out ./result/Pho5_vs_ultrascaf_db.txt`

## Result

Identified Smik_2 (ultra-scaffold 2) as significant. Within this ultra-scaffold there are three significant hits

|ID | Start  |  End   | Identities    | Query Cov.    | Gaps       | Score |
|---|--------|--------|---------------|---------------|------------|-------| 
| 1 | 415858 | 414458 | 414/467 (89%) | 439/467 (94%) | 0/467 (0%) | 855   |
| 2 | 414013 | 412613 | 407/467 (87%) | 442/467 (95%) | 0/467 (0%) | 847   |
| 3 | 412125 | 410725 | 380/467 (81%) | 425/467 (91%) | 0/467 (0%) | 789   |

## 2. Align to a feature-based database

## Procedure

1. Log in to Odyssey and start a computing session using `pty`. Load the BLAST module using `module load blast/2.2.29+-fasrc01`

1. I downloaded the annotated FASTA file from the [Sensu Stricto Genome Resources](http://www.saccharomycessensustricto.org) (hereinafter referred to as SSGR) website and used `makeblastdb -in Smik.fsa -parse_seqids -dbtype nucl` to turn the FASTA file into a BLAST database.

1. I then performed the search using `tblastn -query Pho5.fa -db Smik.fsa -out test` to execute the search.

## Result

* There are three significant hits, all on the same "ultra-scaffold" (Smik-2). See above for statistics.

* The feature IDs are as follows

    \>lcl|Smik_2.235 [REAL/AA; YGOB:Anc_4.177; HMM:0.15; SCER:YDL024C; SYNT:YDL024C/0/YBR094W; LEN:1404; LDA:-1e+100; Ka/Ks:1e+100; OHNO:]

    \>lcl|Smik_2.234 [REAL/AA; YGOB:Anc_4.177; HMM:0.16; SCER:YDL024C; SYNT:YHR215W/0/YDL024C; LEN:1404; LDA:-1e+100; Ka/Ks:1e+100; OHNO:]

    \>lcl|Smik_2.233 [REAL/AA; YGOB:Anc_8.459; HMM:0.72; SCER:YHR215W; SYNT:YBR091C/0/YDL024C; LEN:1404; LDA:-1e+100; Ka/Ks:1e+100; OHNO:]

* Apparently the above annotation are not helpful / misleading. Instead, I copy/paste the lines from the Sensu Stricto Genome Resource website's [annotation](http://www.saccharomycessensustricto.org/current/Smik/Smik.gff) page.

    CDS	410722	412125	Anc_8.459	-	0	ID=1690892788879555520;ygobhmm=0.72;none=;manual=-1e+100;SGD=YHR215W;Gene=Smik_2.233;Parent=Smik_2.233;kaks2=-1e+100;struct=2;ltr=0.47;hsp=0.0;hcnf=0;aa=0.0;lda=-1e+100;rna=-1e+100;synt=0;YGOB=Anc_8.459;stop=0;introns=0;BLAST=YAR071W;ncbi=1e+100;kaks=1e+100;nnnn=-1e+100;length=1404;hmm=-1e+100;Name=Smik_2.233;ty=1e+100

    CDS	412610	414013	Anc_4.177	-	0	ID=1690892788879540476;ygobhmm=0.16;none=;manual=-1e+100;SGD=YDL024C;Gene=Smik_2.234;Parent=Smik_2.234;kaks2=-1e+100;struct=2;ltr=1.8;hsp=0.0;hcnf=0;aa=0.0;lda=-1e+100;rna=-1e+100;synt=0;YGOB=Anc_4.177;stop=0;introns=0;BLAST=YBR093C;ncbi=1e+100;kaks=1e+100;nnnn=-1e+100;length=1404;hmm=-1e+100;Name=Smik_2.234;ty=1e+100

    CDS	414455	415858	Anc_4.177	-	0	ID=1690892788879540471;ygobhmm=0.15;none=;manual=-1e+100;SGD=YDL024C;Gene=Smik_2.235;Parent=Smik_2.235;kaks2=-1e+100;struct=2;ltr=0.12;hsp=0.0;hcnf=0;aa=0.0;lda=-1e+100;rna=-1e+100;synt=0;YGOB=Anc_4.177;stop=0;introns=0;BLAST=YBR092C;ncbi=1e+100;kaks=1e+100;nnnn=-1e+100;length=1404;hmm=-1e+100;Name=Smik_2.235;ty=1e+100

* Finally, the sequences of these three genes are extracted by `grep "Smik\_2\.235\|Smik\_2\.234\|Smik\_2\.233" Smik.aa -A 1 > result/Smik_PHO5_ortholog.fa`
