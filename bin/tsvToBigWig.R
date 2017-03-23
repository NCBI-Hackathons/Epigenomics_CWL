#!/usr/bin/Rscript


# Outstanding issues:
# Test whether guessing seqlengths creates erroneous BigWIGs (do they load in IGV/GViz/whatever)


library(getopt)


spec <- matrix(c(
  'infile', 'i', 1, "character",
  'outdir'   , 'd', 1, "character"
), byrow=TRUE, ncol=4)

opt = getopt(spec)

in.file <- opt$infile
out.dir <- opt$outdir

if(is.null(in.file)|is.null(out.dir))
{
  message('Usage: tsvToBigWig.R -i input_file -o out_dir' )
  q(status=1)
}
  
library(data.table)
library(rtracklayer)

message(paste('Reading in', in.file, 'and writing BigWIGs to', out.dir))

# Guess the seqlengths of the genome; needed for BigWig indexing
guessSeqLengths <- function(in.grange)
{
  
  guessOne <- function(seq.lev)
  {
    this.starts <- start(in.grange)[which(seqnames(in.grange)==seq.lev)]
    return(max(this.starts) + 1)
  }
  return(sapply(seqlevels(in.grange), guessOne))
}

# Read in the file, noting that the format is as output by interconverter:

cpg.bed <- fread(in.file)
colnames(cpg.bed) <- c('chr', 'start', 'strand', 'type', 'meth_prop', 'cov')
cpg.bed$end <- cpg.bed$start+1
cpg.bed <- cpg.bed[which(cpg.bed$chr=="chr19_gl000208_random" )]

base.gr <- makeGRangesFromDataFrame(cpg.bed)
seqlengths(base.gr) <- guessSeqLengths(base.gr)


meth.gr <- base.gr
elementMetadata(meth.gr) <- data.frame(score=cpg.bed$meth_prop)
export.bw(meth.gr, file.path(out.dir, paste0(basename(in.file), '.prop_meth.bw')))

cov.gr <- base.gr
elementMetadata(cov.gr) <- data.frame(score=cpg.bed$cov)
export.bw(cov.gr, file.path(out.dir, paste0(basename(in.file), '.cov.bw')))

