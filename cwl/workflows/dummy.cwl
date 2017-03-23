cwlVersion: v1.0
class: Workflow
inputs:
  mainInput: File

# requirements:

hints:
  - class: DockerRequirement
    dockerPull: "quay.io/neksa/screw-tool"

outputs:
  result:
    type: File
    outputSource: tool2/out

steps:
  tool1:
    run: tool1.cwl
    in:
      infile: mainInput
    out: [out]

  tool2:
    run: tool2.cwl
    in:
      infile: tool1/out
    out: [out]