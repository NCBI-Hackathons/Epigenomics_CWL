cwlVersion: v1.0
class: CommandLineTool
baseCommand: symmetriccpgs.sh
arguments: ["-d", $(runtime.outdir)]
hints:
  - class: DockerRequirement
    dockerPull: "quay.io/neksa/screw-tool"

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
