cwlVersion: v1.0
class: CommandLineTool
baseCommand: hmr
inputs:
  infile: File
outputs:
  out:
    type: File
    outputBinding:
      glob: tool1_out.txt