Instance: InLine-Analyse-Presc-Paracetamol-INJ
InstanceOf: fr-inpatient-medicationrequest
Usage: #example
Description: "Prescription de Paracétamol en perfusion pour exemple d'intervention pharmaceutique"
* meta.profile = Canonical(fr-inpatient-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "1 g toutes les 8 h en 20 minutes"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: paracétamol 10 mg/ml : 1 g toutes les 8 h en 20 minutes"
* medicationCodeableConcept = $Medicabase#MV00002789 "paracétamol 10 mg/ml"
* subject.reference = "Patient/25678"
* authoredOn = "2026-03-20T17:46:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-20260320174600"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 8
* dosageInstruction.timing.repeat.periodUnit = #h
* dosageInstruction.route = $EDQM#20045000 "Voie intraveineuse"
* dosageInstruction.doseAndRate.rateRatio.numerator = 1 $unitsofmeasure#g "g"
* dosageInstruction.doseAndRate.rateRatio.denominator = 20 $unitsofmeasure#min "min"