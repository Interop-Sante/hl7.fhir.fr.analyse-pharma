Instance: InLine-Analyse-Presc-Paracetamol-4g
InstanceOf: fr-inpatient-medicationrequest
Usage: #example
Description: "Prescription de Paracétamol pour exemple de validation pharmaceutique avec commentaire"
* status = #active
* intent = #order
* medicationCodeableConcept = $Medicabase#MV00002414 "Paracétamol 1 g comprimé"
* subject.reference = "Patient/14602"
* authoredOn = "2025-07-23T10:33:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-3965"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-07-13T08:48:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-07-18T08:47:59Z"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 6
* dosageInstruction.timing.repeat.periodUnit = #h
* dosageInstruction.route = $EDQM#20053000 "Voie orale"
* dosageInstruction.doseAndRate.doseQuantity.value = 1
* dosageInstruction.doseAndRate.doseQuantity.unit = "comprimé"
* dosageInstruction.doseAndRate.doseQuantity.system = $EDQM
* dosageInstruction.doseAndRate.doseQuantity.code = #15054000