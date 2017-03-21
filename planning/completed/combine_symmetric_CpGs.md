# Combine symmetric CpGs

## Description

As a bioinformatician, I would like to combine the + and - CpG/GpC pairs to increase the amount of comparable CpG sites between sparsely covered single cell WGBS datasets, since we know that symmetric sites almost always show the same methylation state.

## Notes

- Input: Methcounts files, the output of `interconvert`.

Example run:

 `cwltool symmetric_cpgs.cwl --tocombine test_data/GSM1589192_K562.1_2.txt`

- Output: Methcounts file with all symmetric sites combined.

Example input: GSM1589192_K562.1_2.txt.meth
`chr19 89480 + CpG 1 1`
`chr19 89481 - CpG 0 1`

Example output: GSM1589192_K562.1_2.txt.meth.sym
`chr19 89480 + CpG 0.5 2`

## ESTIMATE: 2

## PRIORITY: MUST

## LOG

In order to do this, I wrote a CWL wrapper to call `symmetric-cpgs`, a C++ program that is a part of the `methpipe` pipeline.
