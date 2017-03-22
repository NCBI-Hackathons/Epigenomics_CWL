cwlVersion: v1.0
class: CommandLineTool
baseCommand: pairwise-distance.sh
stdout: pairwise-euc.txt
inputs:
  pairDirectory:
    type: Directory
    inputBinding:
      prefix: -i
outputs:
  table:
    type: File
    outputBinding:
      glob: "pairwise-euc.txt"
