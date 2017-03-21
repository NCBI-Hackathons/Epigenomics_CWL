cwlVersion: v1.0
class: CommandLineTool
baseCommand: interconverter.sh
arguments: ["-d", $(runtime.outdir)]
inputs:
  toConvert:
    type: File
    inputBinding:
      prefix: -i
outputs:
  converted:
    type: File
    outputBinding:
      glob: "*.meth"
