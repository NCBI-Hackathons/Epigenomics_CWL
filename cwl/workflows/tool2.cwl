cwlVersion: v1.0
class: CommandLineTool
baseCommand: tool2.sh
inputs:
  - id: infile
    type: File
    inputBinding:
      position: 1
outputs:
    out:
        type: File
        outputBinding:
          glob: tool2_output.txt
