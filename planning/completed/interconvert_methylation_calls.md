# Interconvert Methylation Calls

## Description

As a bioinformatician, I would like to switch columns and convert DNA methylation calls as necessary in order for them to run in a given tool. 

## Notes

- Input: tsv-like files, downloaded from the Farlik et al. (2015) GEO page.

Example run:

 `cwltool interconverter.cwl --toconvert test_data/GSM1589192_K562.1_2.txt`

- Output: the desired format for the tools we want to run (in this case, methcounts)

Example output: GSM1589192_K562.1_2.txt.meth
`chr19 89480 - CpG 1 1`

## ESTIMATE: 1

## PRIORITY: MUST

## LOG

A custom interconverter.sh script will likely need to be introduced for each single cell WGBS dataset deposited in GEO until a standardized format is determined for methylation call data. This is meant to be a prototype to display functionality using the Farlik et al. (2015) dataset and guideline for researchers looking to develop their own to analyze other single-cell WGBS datasets.

interconverter.sh designed to convert GEO methylation counts specifically from Farlik et al. (2015) to methcounts format (chr coordinate strand context methylation_level coverage).
