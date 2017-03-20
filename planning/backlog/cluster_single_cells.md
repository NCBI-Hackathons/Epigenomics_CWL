# Cluster Single Cells Based on their DNA Methylation Profiles

## Description

As a bioinformatician, I would like to cluster a set of cells, to see if any have common DNA methylation patterns.

## Notes

- Input: DNA methylation profiles per cell, in tsv-like format

- Output: cluster labels and a distance matrix, in csv/tsv

There are a few ways of doing this, and it's not clear which is best. 

- The base case is to cluster on a per-CpG basis. In this case, the data is very lossy, and the distance matrix needs to be generated pairwise based on the CpGs that overlap between samples. 
	- Building on this, we can cluster per-CpG, but using a regional subset (e.g. promoters with CpG Islands, or regulatory regions determined by CHiP-seq on similar tissue)
	- We could also try to use imputed per-CpG data, using Angermeuler's DeepCpG tool

- An alternate method would be to average methylation within individual regions (e.g. individual promoters) and cluster based on that. 
