cwlVersion: v1.0
class: CommandLineTool
baseCommand: pairwise-distance.sh
hints:
  - class: DockerRequirement
    dockerPull: "quay.io/neksa/screw-tool"
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
