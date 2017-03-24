cwlVersion: v1.0
class: CommandLineTool
baseCommand: interconverter.sh
hints:
  - class: DockerRequirement
    dockerPull: "quay.io/neksa/screw-tool"
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
