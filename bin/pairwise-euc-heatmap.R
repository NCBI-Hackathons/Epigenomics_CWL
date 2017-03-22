#!/usr/bin/Rscript

library(optparse)
library(pheatmap)
library(RColorBrewer)

 option_list = list(
   make_option(c("-i", "--pairwiseTable"), action="store",
               type="character", default=NA, help="dataset file name"),
 	make_option(c("-a", "--annotation"), action="store", type="character",
              default=NA, help="Annotation file for coloring heatmap
              margins by label."));

opt_parser<-OptionParser(option_list=option_list);
opt<-parse_args(opt_parser);

pairwiseDistances<-read.table(opt$pairwiseTable, header=TRUE)

if(!is.na(opt$annotation)){
  annotations<-read.table(opt$annotation,row.names=1,header=TRUE)
}

col.pal <- brewer.pal(9,"Blues")
diag(pairwiseDistances)<-NA

pdf("pairwise-euc-heatmap.pdf",onefile=FALSE)
if(!is.na(opt$annotation)){
  pheatmap(pairwiseDistances,annotation_col=annotations,col=col.pal)
} else{
  pheatmap(pairwiseDistances,col=col.pal)
}
dev.off()
