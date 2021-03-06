#!/bin/bash 

# ---
# title: make database and use tblastn to identify sequence homolog/paralogs of ScPho5
# input: ScPho5 amino acid sequence, Smik/Spar/Sbay ultra-scaffolds and features.fsa
# output: BLAST output and identified homolog fasta, one per species
# author: Bin He
# date: 10-11 juillet 2017
# modified:
#       6 nov 2017, to perform BLAST for ScPMU1
# usage: sh blast.sh
# ---

# load BLAST
module load blast/2.2.29+-fasrc01

# download sequence and make database
cd ../db/features
wget http://www.saccharomycessensustricto.org/current/Smik/Smik.fsa
makeblastdb -in Smik.fsa -parse_seqids -dbtype nucl

wget http://www.saccharomycessensustricto.org/current/Sbay/Sbay.fsa
makeblastdb -in Sbay.fsa -parse_seqids -dbtype nucl

wget http://www.saccharomycessensustricto.org/current/Spar/Spar.fsa
makeblastdb -in Spar.fsa -parse_seqids -dbtype nucl

cd ../ultra-scaffolds
wget http://www.saccharomycessensustricto.org/current/Smik/Smik.ultrascaf
makeblastdb -in Smik.ultrascaf -parse_seqids -dbtype nucl

wget http://www.saccharomycessensustricto.org/current/Sbay/Sbay.ultrascaf
makeblastdb -in Sbay.ultrascaf -parse_seqids -dbtype nucl

wget http://www.saccharomycessensustricto.org/current/Spar/Spar.ultrascaf
makeblastdb -in Spar.ultrascaf -parse_seqids -dbtype nucl

cd ../other/
wget http://ygob.ucd.ie/ygob/data/v7-Aug2012/Lwaltii_sequence.fsa
makeblastdb -in Lwaltii_sequence.fsa -parse_seqids -dbtype nucl

# Perform tblastn
cd ../../

# PHO5
for i in Smik Spar Sbay
do
	tblastn -query data/Pho5.fa -db db/features/${i}.fsa -out result/Pho5_vs_${i}_features_db.txt
done

for i in Smik Spar Sbay
do
	tblastn -query data/Pho5.fa -db db/ultra-scaffolds/${i}.ultrascaf -out result/Pho5_vs_${i}_ultrascaf_db.txt
done

# PMU1
for i in Smik Spar Sbay
do
	tblastn -query data/Pmu1.fa -db db/features/${i}.fsa -out result/Pmu1_vs_${i}_features_db.txt
done

for i in Smik Spar Sbay
do
	tblastn -query data/Pmu1.fa -db db/ultra-scaffolds/${i}.ultrascaf -out result/Pmu1_vs_${i}_ultrascaf_db.txt
done

tblastn -query data/Pmu1.fa -db db/other/Lwaltii_sequence.fsa -out result/Pmu1_vs_Lwal_sequence.txt

# Extract sequences
grep "Smik\_2\.233\|Smik\_2\.234\|Smik\_2\.235" ./data/Smik.aa -A 1 > ./result/Smik_PHO5_ortholog.fa
grep "Spar\_8\.343\|Spar\_2\.251\|Spar\_2\.252\|Spar\_4\.254" ./data/Spar.aa -A 1 > ./result/Spar_PHO5_ortholog.fa
grep "Sbay\_4\.340\|Sbay\_4\.339\|Sbay\_9\.1\$\|Sbay\_4\.224" ./data/Sbay.aa -A 1 > ./result/Sbay_PHO5_ortholog.fa

# done
