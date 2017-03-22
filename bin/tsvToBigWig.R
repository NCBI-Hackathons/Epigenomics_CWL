library(GenomeInfoDb)
library(optparse)
library(data.table)
library(rtracklayer)


in.dir <- ''

species <- 'Homo_sapiens'

chr.names <- genomeStyles(species)$UCSC
