cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  abnormal-urea-and-electrolytes-m1---primary:
    run: abnormal-urea-and-electrolytes-m1---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  urea-and-electrolytes-m1-serum---primary:
    run: urea-and-electrolytes-m1-serum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: abnormal-urea-and-electrolytes-m1---primary/output
  urea---primary:
    run: urea---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: urea-and-electrolytes-m1-serum---primary/output
  urea-and-electrolytes-m1-blood---primary:
    run: urea-and-electrolytes-m1-blood---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: urea---primary/output
  urea-and-electrolytes-m1-potassium---primary:
    run: urea-and-electrolytes-m1-potassium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: urea-and-electrolytes-m1-blood---primary/output
  urea-and-electrolytes-m1-raised---primary:
    run: urea-and-electrolytes-m1-raised---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: urea-and-electrolytes-m1-potassium---primary/output
  urea-and-electrolytes-m1-sodium---primary:
    run: urea-and-electrolytes-m1-sodium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: urea-and-electrolytes-m1-raised---primary/output
  urea-and-electrolytes-m1-chloride---primary:
    run: urea-and-electrolytes-m1-chloride---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: urea-and-electrolytes-m1-sodium---primary/output
  urea-and-electrolytes-m1-bicarbonate---primary:
    run: urea-and-electrolytes-m1-bicarbonate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: urea-and-electrolytes-m1-chloride---primary/output
  urea-and-electrolytes-m1-calcium---primary:
    run: urea-and-electrolytes-m1-calcium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: urea-and-electrolytes-m1-bicarbonate---primary/output
  inorganic-urea-and-electrolytes-m1---primary:
    run: inorganic-urea-and-electrolytes-m1---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: urea-and-electrolytes-m1-calcium---primary/output
  urea-and-electrolytes-m1-phosphate---primary:
    run: urea-and-electrolytes-m1-phosphate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: inorganic-urea-and-electrolytes-m1---primary/output
  urea-and-electrolytes-m1-anion---primary:
    run: urea-and-electrolytes-m1-anion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: urea-and-electrolytes-m1-phosphate---primary/output
  urea-and-electrolytes-m1-corrected---primary:
    run: urea-and-electrolytes-m1-corrected---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: urea-and-electrolytes-m1-anion---primary/output
  urea-and-electrolytes-m1-ionised---primary:
    run: urea-and-electrolytes-m1-ionised---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: urea-and-electrolytes-m1-corrected---primary/output
  urea-and-electrolytes-m1---primary:
    run: urea-and-electrolytes-m1---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: urea-and-electrolytes-m1-ionised---primary/output
  urea-and-electrolytes-m1-function---primary:
    run: urea-and-electrolytes-m1-function---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: urea-and-electrolytes-m1---primary/output
  urea-and-electrolytes-m1-creatinine---primary:
    run: urea-and-electrolytes-m1-creatinine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: urea-and-electrolytes-m1-function---primary/output
  urea-and-electrolytes-m1-osmolality---primary:
    run: urea-and-electrolytes-m1-osmolality---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: urea-and-electrolytes-m1-creatinine---primary/output
  renal-urea-and-electrolytes-m1---primary:
    run: renal-urea-and-electrolytes-m1---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: urea-and-electrolytes-m1-osmolality---primary/output
  urea-and-electrolytes-m1-excretion---primary:
    run: urea-and-electrolytes-m1-excretion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: renal-urea-and-electrolytes-m1---primary/output
  urea-and-electrolytes-m1-albumin---primary:
    run: urea-and-electrolytes-m1-albumin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: urea-and-electrolytes-m1-excretion---primary/output
  urea-and-electrolytes-m1-plasma---primary:
    run: urea-and-electrolytes-m1-plasma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: urea-and-electrolytes-m1-albumin---primary/output
  urea-and-electrolytes-m1-abbreviated---primary:
    run: urea-and-electrolytes-m1-abbreviated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: urea-and-electrolytes-m1-plasma---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: urea-and-electrolytes-m1-abbreviated---primary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
