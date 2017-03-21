# Interconvert Methylation Calls

## Description

As a bioinformatician, I would like to switch columns and convert DNA methylation calls as necessary in order for them to run in a given tool. 

## Notes

- Input: tsv-like files, in whatever layout the test data sets are in

- Output: the desired format for the tools we want to run (e.g. Bsmooth)

## ESTIMATE: 1

## PRIORITY: MUST

## LOG

interconverter.sh designed to convert GEO methylation counts specifically from Farlik et al. (2015) to methcounts format (chr coordinate strand context methylation_level coverage).
