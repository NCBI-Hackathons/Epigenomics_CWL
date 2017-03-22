# Generate Report for Clustering Results

## Description

As a biologist, I would like to see a plot of the results of clustering a series of cells, in order to know which, if any, share similar methylation patterns.

## Notes

- Input: cluster labels and distance matrix from earlier clustering.

- Output: HTML/Rmd report with plot(s) of clustering (heatmap, scatterplot)

- Depends on Clustering BL

## Estimate: 1

## Priority: MUST

## Log

Input is the data matrix output from the pairwise-distance.cwl/pairwise-distance.sh run, as well as an optional  whitespace-delimited annotation file for labeling of the heatmap.

Output is a PDF with a heatmap generated from the pheatmap package.
