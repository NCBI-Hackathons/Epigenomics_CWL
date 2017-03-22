cwlVersion: v1.0
class: CommandLineTool
baseCommand: pairwise-euc-heatmap.R
inputs:
  pairwiseTable:
    type: File
    inputBinding:
      position: 1
      prefix: -i
  annotation:
    type: File?
    inputBinding:
      position: 2
      prefix: -a
outputs:
  table:
    type: File
    outputBinding:
      glob: "*.pdf"
