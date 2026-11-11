Instance: Analyse-Intervention-Type5-CLOZIPANE
InstanceOf: FRInpatientPharmaceuticalAnalysisResultProfile
Usage: #example
Description: "Intervention pharmaceutique Problème: 7 Effet indésirable - Type: 5 Suivi thérapeutique"
* groupIdentifier.value = "Presc-20260320163100"
* status = #completed
* intent = #proposal
* authoredOn = "2026-03-20T17:26:00+01:00"
* performerType = $TRE-G15-ProfessionSante#21 "Pharmacien"
* owner.reference = "Practitioner/smart-Practitioner-27865023"
* input.type.text = "ligne de prescription analysée"
* input.valueReference.reference = "MedicationRequest/InLine-Analyse-Presc-CLOZIPANE"
* output[0].type.text = "résultat de l'analyse"
* output[=].valueCode = #INTERVENTION
* output[+].type.text = "commentaire"
* output[=].valueString = "La clozapine est un médicament pouvant entraîner des agranulocytoses. Il nécessite une surveillance des polynucléaires neutrophiles. Les modalités de surveillance sont les suivantes : une surveillance par semaine durant les 18 premières semaines puis 1 fois par mois pendant les 34 semaines suivantes."
* output[+].type.text = "type d'intervention"
* output[=].valueCodeableConcept = #5 "Suivi thérapeutique"
* output[+].type.text = "type de problème"
* output[=].valueCodeableConcept = #7 "Effet indésirable"
