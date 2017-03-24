#!/bin/bash
while getopts ":d:i:" opt; do
  case ${opt} in
    d )
    outdir=$OPTARG
    ;;
    i )
    infile=$OPTARG
    ;;
  esac
done

awk -F "\t" '{
  if($6 == "CG"){
    print $1, $2, $3, "CpG", $4/($4+$5), ($4+$5);
  }
}' $infile > $outdir/$(basename $infile).meth
