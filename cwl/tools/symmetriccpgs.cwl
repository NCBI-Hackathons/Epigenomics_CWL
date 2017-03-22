cwlVersion: v1.0
class: CommandLineTool
baseCommand: symmetriccpgs.sh
arguments: ["-d", $(runtime.outdir)]
inputs:
  toCombine:
    type: File
    inputBinding:
      prefix: -i
outputs:
  combined:
    type: File
    outputBinding:
      glob: "*.sym"
