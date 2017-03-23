cwlVersion: v1.0
class: CommandLineTool
baseCommand: tool2.sh
inputs:
    infile: File
outputs:
    out:
        type: File
        outputBinding:
          glob: tool2_output.txt
