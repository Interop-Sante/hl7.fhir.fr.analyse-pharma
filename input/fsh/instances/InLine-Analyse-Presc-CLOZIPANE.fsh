Instance: InLine-Analyse-Presc-CLOZAPINE
InstanceOf: fr-inpatient-medicationrequest
Usage: #example
Description: "Prescription de CLOZAPINE pour exemple d'analyse pharmaceutique"
* meta.profile = Canonical(fr-inpatient-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "2 comprimés 2 fois par jour"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: CLOZAPINE 25 mg: 2 comprimés 2 fois par jour"
* medicationCodeableConcept = $Medicabase#MV00002429 "Clozapine 25 mg comprimé"
* subject.reference = "Patient/14602"
* authoredOn = "2026-03-20T16:31:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-20260320163100"
* dosageInstruction.timing.repeat.frequency = 2
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.doseAndRate.doseQuantity = 2 $EDQM#15054000 "Comprimé"