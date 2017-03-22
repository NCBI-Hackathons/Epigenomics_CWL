cwlVersion: v1.0
class: CommandLineTool
baseCommand: tool1.sh
inputs:
  - id: infile
    type: File
    inputBinding:
      position: 1
outputs:
  out:
    type: File
    outputBinding:
      glob: tool1_out.txt