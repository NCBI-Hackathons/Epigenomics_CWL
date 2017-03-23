cwlVersion: v1.0
class: Workflow

inputs:
  toConvert: File


outputs:
  converted: 
    type: File
    outputSource: convertMethylation/converted
  combined: 
    type: File
    outputSource: mergeSymmetric/combined


steps:
  convertMethylation:
    run: interconverter.cwl
    in:
      toConvert: toConvert
    out: [converted]
  mergeSymmetric:
    run: symmetriccpgs.cwl
    in:
      toCombine: convertMethylation/converted
    out: [combined]
