# Generate Summary

## Description

As a bioinformatician, I would like to generate an automated summary of methylation levels in various genomic regions of interest, in order better understand the biological system of interest.

## Notes

- Input will be tsv-like DNA methylation calls, and can be converted to a standard format via Interconvert Methylation Calls

- Output should be one R Markdown webpage consisting of histograms for each single cell showing the regional distribution of methylation levels in gene promoters, gene bodies, retrotransposons, and intergenic regions.


- Make the plot a violin plot of each cell's methylation, averaged across every CpG in a given region type

- Another useful plot would be the counts of coverage at each CpG (just a barplot, maybe pooled across all cells, probably on a log scale) 

## ESTIMATE: ?

## PRIORITY: SHOULD
