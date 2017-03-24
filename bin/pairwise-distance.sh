#!/bin/bash
while getopts ":d:i:" opt; do
  case ${opt} in
    d )
    outdir=$OPTARG
    ;;
    i )
    indir=$OPTARG
    ;;
  esac
done

cd ${indir};
for i in *.sym; do
printf "%s\t" $(basename ${i} .meth.sym);
done
echo;
for i in *.sym; do
  awk '{print $1 ":" $2 "\t" $5}' ${i} | sort -k 1b,1 > ${i}.tojoin;
  printf "%s\t" $(basename ${i} .meth.sym);
  for j in *.sym; do
    awk '{print $1 ":" $2 "\t" $5}' ${j} | sort -k 1b,1 > ${j}.tojoin;
    join ${i}.tojoin ${j}.tojoin > temp;
    x=$(awk 'BEGIN{distance=0}{distance+=($3-$2)^2;}END{print sqrt(distance)}' temp);
    printf "%s\t" ${x};
  done
  printf "\n";
done;

rm *.tojoin;
rm temp;
