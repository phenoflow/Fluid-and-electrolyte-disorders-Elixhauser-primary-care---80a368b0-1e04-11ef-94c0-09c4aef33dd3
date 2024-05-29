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
  fluid-and-electrolyte-disorders-elixhauser-primary-care-hyponatraemia---primary:
    run: fluid-and-electrolyte-disorders-elixhauser-primary-care-hyponatraemia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  fluid-and-electrolyte-disorders-elixhauser-primary-care-specified---primary:
    run: fluid-and-electrolyte-disorders-elixhauser-primary-care-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: fluid-and-electrolyte-disorders-elixhauser-primary-care-hyponatraemia---primary/output
  fluid-and-electrolyte-disorders-elixhauser-primary-care-hypercalcaemia---primary:
    run: fluid-and-electrolyte-disorders-elixhauser-primary-care-hypercalcaemia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: fluid-and-electrolyte-disorders-elixhauser-primary-care-specified---primary/output
  fluid-and-electrolyte-disorders-elixhauser-primary-care-metabolism---primary:
    run: fluid-and-electrolyte-disorders-elixhauser-primary-care-metabolism---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: fluid-and-electrolyte-disorders-elixhauser-primary-care-hypercalcaemia---primary/output
  fluid-and-electrolyte-disorders-elixhauser-primary-care-hypokalaemia---primary:
    run: fluid-and-electrolyte-disorders-elixhauser-primary-care-hypokalaemia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: fluid-and-electrolyte-disorders-elixhauser-primary-care-metabolism---primary/output
  fluid-and-electrolyte-disorders-elixhauser-primary-care-level---primary:
    run: fluid-and-electrolyte-disorders-elixhauser-primary-care-level---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: fluid-and-electrolyte-disorders-elixhauser-primary-care-hypokalaemia---primary/output
  fluid-and-electrolyte-disorders-elixhauser-primary-care-respiratory---primary:
    run: fluid-and-electrolyte-disorders-elixhauser-primary-care-respiratory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: fluid-and-electrolyte-disorders-elixhauser-primary-care-level---primary/output
  fluid-and-electrolyte-disorders-elixhauser-primary-care-hyperchloraemia---primary:
    run: fluid-and-electrolyte-disorders-elixhauser-primary-care-hyperchloraemia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: fluid-and-electrolyte-disorders-elixhauser-primary-care-respiratory---primary/output
  fluid-and-electrolyte-disorders-elixhauser-primary-care-calcium---primary:
    run: fluid-and-electrolyte-disorders-elixhauser-primary-care-calcium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: fluid-and-electrolyte-disorders-elixhauser-primary-care-hyperchloraemia---primary/output
  fluid-and-electrolyte-disorders-elixhauser-primary-care-deficiency---primary:
    run: fluid-and-electrolyte-disorders-elixhauser-primary-care-deficiency---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: fluid-and-electrolyte-disorders-elixhauser-primary-care-calcium---primary/output
  fluid-and-electrolyte-disorders-elixhauser-primary-care-hypochloraemia---primary:
    run: fluid-and-electrolyte-disorders-elixhauser-primary-care-hypochloraemia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: fluid-and-electrolyte-disorders-elixhauser-primary-care-deficiency---primary/output
  idiopathic-fluid-and-electrolyte-disorders-elixhauser-primary-care---primary:
    run: idiopathic-fluid-and-electrolyte-disorders-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: fluid-and-electrolyte-disorders-elixhauser-primary-care-hypochloraemia---primary/output
  fluid-and-electrolyte-disorders-elixhauser-primary-care-raised---primary:
    run: fluid-and-electrolyte-disorders-elixhauser-primary-care-raised---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: idiopathic-fluid-and-electrolyte-disorders-elixhauser-primary-care---primary/output
  fluid-and-electrolyte-disorders-elixhauser-primary-care-alkalaemia---primary:
    run: fluid-and-electrolyte-disorders-elixhauser-primary-care-alkalaemia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: fluid-and-electrolyte-disorders-elixhauser-primary-care-raised---primary/output
  electrolyte---primary:
    run: electrolyte---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: fluid-and-electrolyte-disorders-elixhauser-primary-care-alkalaemia---primary/output
  fluid-and-electrolyte-disorders-elixhauser-primary-care-depletion---primary:
    run: fluid-and-electrolyte-disorders-elixhauser-primary-care-depletion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: electrolyte---primary/output
  fluid-and-electrolyte-disorders-elixhauser-primary-care-alkalosis---primary:
    run: fluid-and-electrolyte-disorders-elixhauser-primary-care-alkalosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: fluid-and-electrolyte-disorders-elixhauser-primary-care-depletion---primary/output
  fluid-and-electrolyte-disorders-elixhauser-primary-care-balance---primary:
    run: fluid-and-electrolyte-disorders-elixhauser-primary-care-balance---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: fluid-and-electrolyte-disorders-elixhauser-primary-care-alkalosis---primary/output
  fluid-and-electrolyte-disorders-elixhauser-primary-care-acidosis---primary:
    run: fluid-and-electrolyte-disorders-elixhauser-primary-care-acidosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: fluid-and-electrolyte-disorders-elixhauser-primary-care-balance---primary/output
  fluid-and-electrolyte-disorders-elixhauser-primary-care-hypovolaemia---primary:
    run: fluid-and-electrolyte-disorders-elixhauser-primary-care-hypovolaemia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: fluid-and-electrolyte-disorders-elixhauser-primary-care-acidosis---primary/output
  abnormal-fluid-and-electrolyte-disorders-elixhauser-primary-care---primary:
    run: abnormal-fluid-and-electrolyte-disorders-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: fluid-and-electrolyte-disorders-elixhauser-primary-care-hypovolaemia---primary/output
  fluid-and-electrolyte-disorders-elixhauser-primary-care-hyperkalaemia---primary:
    run: fluid-and-electrolyte-disorders-elixhauser-primary-care-hyperkalaemia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: abnormal-fluid-and-electrolyte-disorders-elixhauser-primary-care---primary/output
  fluid-and-electrolyte-disorders-elixhauser-primary-care-potassium---primary:
    run: fluid-and-electrolyte-disorders-elixhauser-primary-care-potassium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: fluid-and-electrolyte-disorders-elixhauser-primary-care-hyperkalaemia---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: fluid-and-electrolyte-disorders-elixhauser-primary-care-potassium---primary/output
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
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
