---
title: "BLAST to detect homologs/paralogs of ScPho5 in _S. mikatae_ genome"
author: Bin He
date: 7 juillet 2017
---

# Goal

This analysis uses the annotated gene ORFs by Scannell et al 2012, and hopefully identifies the homologs/paralogs of ScPho5

# Analysis

## [6 nov 2017] BLAST for _ScPMU1_ in _sensu stricto_ and outgroup species

#### _Goal_

- Identify homologs of _ScPMU1_ in Ascomycetes that were not included in the [Orthogroup](https://portals.broadinstitute.org/cgi-bin/regev/orthogroups/show_orthogroup.cgi?og=13783)

#### _Notes_

- Following the same procedure as for _ScPHO5_, I identified exactly one hit per genome for Spar, Smik and Sbay.

- Because I can't seem to identify any homolog for _ScPMU1_ in _L. waltii_ using any of the websites, I downloaded its genome from YGOB and did tblastn on it, got 0 hit.

- Search homologs of _ScPMU1_ in other Ascomycetes using  BLASTP or tBLASTn on external websites

    | Species            | SGD | CGD | GRYC | HMMER | BLAST | Orthogroup |
    | ------------------ |:---:|:---:|:----:|:-----:|:-----:| ---------- |
    | _S. paradoxus_     |     |     |      |       | 1     | 1          |
    | _S. bayanus_       |     |     |      |       | 1     | 1          |
    | _S. mikatae_       |     |     |      |       | 1     | 1          |
    | _C. glabrata_      |     |  3  |  3   |  3    |       | 3          |
    | _N. bracarensis_   |     |     |  1   |       |       |            |
    | _N. bacillisporus_ |     |     |  1   |       |       |            |
    | _N. nivariensis_   |     |     |  1   |       |       |            |
    | _N. delphensis_    |     |     |  1   |       |       |            |
    | _N. castellii_     |     |     |  0   |       |       |            |
    | _Naumovozyma castellii_|1|     |  1   |  1    |       | 1[1]       |
    | _K. lactis_        |  1  |     |  1   |  1    |       | 1          |
    | _L. kluyveri_      |  1  |     |  1   |       |       | 1          |
    | _L. waltii_        |  0  |     |      |  0    |   0   | 0          |
    | _A. gossypii_      |  1  |     |      |  1[2] |       | 1          |
    | _C. lusitaniae_    |  2  |     |      |  2    |       | 2          |
    | _D. hansenii_      |  4  |  4  |  4   |  4    |       | 4          |
    | _C. guilliermondii_| 4[3]|  4  |      |  4[4] |       | 4          |
    | _C. tropicalis_    |  3  |  6  |      |  6    |       | 6          |
    | _C. albicans_      | ?[5]|  5  |  2   |  7    |       | 5          |
    | _C. parapsilosis_  |  3  |  5  |  5   |  5    |       | 5          |
    | _L. elongisporus_  |     |  5  |      |  5    |       | 5[6]       |
    | _Y. lipolytica_    |  1  |     |  1   |  1    |       | 1          |

    [1] _Saccharyomyces castellii_
    [2] _Eremothecium gossypii_
    [3] _Pichia guilliermondii_
    [4] _Meyerozyma guilliermondii_
    [5] Many entries for scaffolds etc.
    [6] _L. elongosporus_

#### _Conclusion_ 

- for _PMU1_ homologs, Orthogroup got all lineages correctly, at least judged by the consensus of several sources
- it is somewhat surprising that the other _Nakaseomyces_ species have just one homolog, instead of 3 like _C. glabrata_ does. if this is correct, it would suggest that _C. glabrata_ has very recently duplicated the _PMU1_ family and neofunctionalized them...

## [7-12 juillet 2017] Perform BLAST for _ScPHO5_ in _sensu stricto_ species

### 1. Align to a ultra-scaffolds based database

#### Note

BLAST against the ultra-scaffolds, which were produced by MEGA-BLASTing the unordered scaffolds to the 16 _S. cerevisiae_ genome. This is in fact performed after the second analysis, but listed first because its result is more "coarse", as it only shows chromosomal position, not gene features.

#### Procedure

1. Log in to Odyssey and start a computing session using `pty`. Load the BLAST module using `module load blast/2.2.29+-fasrc01`

1. Download the ultra-scaffolds files (http://www.saccharomycessensustricto.org/current/Smik/Smik.ultrascaf)

1. Make the database `makeblastdb -in Smik.ultrascaf -parse_seqids -dbtype nucl`

    * there was some errors "FASTA-Reader: Ignoring FASTA modifier(s)". Ignored for now.

1. Perform BLAST `tblastn -query Pho5.fa -db ./db/ultra-scaffolds/Smik.ultrascaf -out ./result/Pho5_vs_ultrascaf_db.txt`

#### Result

Identified Smik_2 (ultra-scaffold 2) as significant. Within this ultra-scaffold there are three significant hits

|ID | Start  |  End   | Identities    | Gaps       | Score |
|---|--------|--------|---------------|------------|-------|
| 1 | 415858 | 414458 | 414/467 (89%) | 0/467 (0%) | 855   |
| 2 | 414013 | 412613 | 407/467 (87%) | 0/467 (0%) | 847   |
| 3 | 412125 | 410725 | 380/467 (81%) | 0/467 (0%) | 789   |

### 2. Align to a feature-based database

#### Procedure

1. Log in to Odyssey and start a computing session using `pty`. Load the BLAST module using `module load blast/2.2.29+-fasrc01`

1. I downloaded the annotated FASTA file from the [Sensu Stricto Genome Resources](http://www.saccharomycessensustricto.org) (hereinafter referred to as SSGR) website and used `makeblastdb -in Smik.fsa -parse_seqids -dbtype nucl` to turn the FASTA file into a BLAST database.

1. I then performed the search using `tblastn -query Pho5.fa -db Smik.fsa -out test` to execute the search.

#### Result

* There are three significant hits, all on the same "ultra-scaffold" (Smik-2). See above for statistics.

* The feature IDs are as follows

   > - Smik_2.235 [REAL/AA; YGOB:Anc_4.177; HMM:0.15; SCER:YDL024C; SYNT:YDL024C/0/YBR094W;
       
   > - Smik_2.234 [REAL/AA; YGOB:Anc_4.177; HMM:0.16; SCER:YDL024C; SYNT:YHR215W/0/YDL024C;
       
   > - Smik_2.233 [REAL/AA; YGOB:Anc_8.459; HMM:0.72; SCER:YHR215W; SYNT:YBR091C/0/YDL024C;

* Apparently the above annotation are not helpful / misleading. Instead, I copy/paste the lines from the Sensu Stricto Genome Resource website's [annotation](http://www.saccharomycessensustricto.org/current/Smik/Smik.gff) page.

   > 2	Scannell_and Zill 2011	CDS	410722	412125	Anc_8.459	-	0	ID=1690892788879555520;ygobhmm=0.72;none=;manual=-1e+100;SGD=YHR215W;Gene=Smik_2.233;Parent=Smik_2.233;kaks2=-1e+100;struct=2;ltr=0.47;hsp=0.0;hcnf=0;aa=0.0;lda=-1e+100;rna=-1e+100;synt=0;YGOB=Anc_8.459;stop=0;introns=0;BLAST=YAR071W;ncbi=1e+100;kaks=1e+100;nnnn=-1e+100;length=1404;hmm=-1e+100;Name=Smik_2.233;ty=1e+100
   > 2	Scannell_and Zill 2011	CDS	412610	414013	Anc_4.177	-	0	ID=1690892788879540476;ygobhmm=0.16;none=;manual=-1e+100;SGD=YDL024C;Gene=Smik_2.234;Parent=Smik_2.234;kaks2=-1e+100;struct=2;ltr=1.8;hsp=0.0;hcnf=0;aa=0.0;lda=-1e+100;rna=-1e+100;synt=0;YGOB=Anc_4.177;stop=0;introns=0;BLAST=YBR093C;ncbi=1e+100;kaks=1e+100;nnnn=-1e+100;length=1404;hmm=-1e+100;Name=Smik_2.234;ty=1e+100
   > 2	Scannell_and Zill 2011	CDS	414455	415858	Anc_4.177	-	0	ID=1690892788879540471;ygobhmm=0.15;none=;manual=-1e+100;SGD=YDL024C;Gene=Smik_2.235;Parent=Smik_2.235;kaks2=-1e+100;struct=2;ltr=0.12;hsp=0.0;hcnf=0;aa=0.0;lda=-1e+100;rna=-1e+100;synt=0;YGOB=Anc_4.177;stop=0;introns=0;BLAST=YBR092C;ncbi=1e+100;kaks=1e+100;nnnn=-1e+100;length=1404;hmm=-1e+100;Name=Smik_2.235;ty=1e+100

* Finally, the sequences of these three genes are extracted by `grep "Smik\_2\.235\|Smik\_2\.234\|Smik\_2\.233" Smik.aa -A 1 > result/Smik_PHO5_ortholog.fa`

### 3. Repeat the above procedure with _S. paradoxus_ and _S. bayanus_

#### _S. paradoxus_ result

Identified four significant hits in _S. paradoxus_, distributed across three ultra-scaffolds.

_Note_ that YGOB didn't include this species, presumably because its genome quality is among the lowest in Scannell et al 2012

> - Spar_8.343 [REAL/AA; YGOB:Anc_2.264; HMM:0.32; SCER:YDL024C; SYNT:YJR154W/0/YML056C;
> - Spar_2.251 [REAL/AA; YGOB:Anc_5.579; HMM:0.54; SCER:YHR215W; SYNT:YBR091C/0/YBR093C;
> - Spar_2.252 [PSEUDO/STOP; YGOB:Anc_1.113; HMM:0.14; SCER:YBR093C; SYNT:YHR215W/2/YBR094W;
> - Spar_4.254 [REAL/SYNT; YGOB:Anc_6.4; HMM:0.19; SCER:YDL024C; SYNT:YDL025C/4/YDL022C-A;

Among them, Spar_2.252 appears to be a pseudogene. It matches ScPho5 in two "parts", intersected by 10 nucleotides, which is not a multiple of three and hence a frameshift mutation from amino acid 180 and on. The gene annotation also indicates an early stop codon somewhere.

|ID      | Start  |  End   | Identities    | Gaps       | Score |
|--------|--------|--------|---------------|------------|-------|
| Spar_8 | 533148 | 534548 | 404/467 (87%) | 0/467 (0%) | 842   |
| Spar_2 | 401405 | 400146 | 402/467 (86%) | 0/467 (0%) | 828   |
| Spar_2 | 402699 | 401851 | 271/283 (96%) | 0/283 (0%) | 573   |
|        | 403249 | 402709 | 177/182 (97%) | 0/182 (0%) | 347   |
| Spar_4 | 418366 | 416963 | 298/468 (64%) | 1/468 (0%) | 640   |

The third and fourth rows are next to each other physically, representing the likely-to-be pseudogene.

#### _S. bayanus_ result

Identified four significant hits in _S. bayanus_, distributed across two ultra-scaffolds.


> - Sbay_4.340 [REAL/AA; YGOB:Anc_2.264; HMM:0.11; SCER:YHR215W; SYNT:YDL024C/0/YBR094W;
> - Sbay_4.339 [REAL/AA; YGOB:Anc_1.372; HMM:0.4; SCER:YDL024C; SYNT:YBR091C/0/YHR215W;
> - Sbay_9.1 [REAL/AA; YGOB:Anc_2.264; HMM:0.24; SCER:YBR093C; SYNT:NoLeft/0/YHR215W;
> - Sbay_4.224 [REAL/AA; YGOB:; HMM:1e+100; SCER:YHR215W; SYNT:YDL025C/0/; LEN:1407;


|ID      | Start  |  End   | Identities    | Gaps       | Score |
|--------|--------|--------|---------------|------------|-------|
| Sbay_4 | 599884 | 598484 | 409/467 (88%) | 0/467 (0%) | 843   |
| Sbay_4 | 598032 | 596632 | 396/467 (85%) | 0/467 (0%) | 823   |
| Sbay_9 |   5199 |   3841 | 376/453 (83%) | 0/453 (0%) | 782   |
| Spar_4 | 400393 | 398996 | 309/466 (66%) | 1/466 (0%) | 656   |

Among these, the first two appear to be recent (tandem) duplicates.


