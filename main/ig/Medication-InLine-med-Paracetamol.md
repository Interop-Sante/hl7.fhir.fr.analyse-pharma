# InLine-med-Paracetamol - Guide d'implémentation de l'analyse pharmaceutique v0.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InLine-med-Paracetamol**

## Example Medication: InLine-med-Paracetamol

Profil: [FR Medication](https://interop.esante.gouv.fr/ig/fhir/eprescription/1.1.0-ballot/StructureDefinition-fr-medication.html)

**code**: PARACETAMOL



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "InLine-med-Paracetamol",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/eprescription/StructureDefinition/fr-medication"]
  },
  "code" : {
    "coding" : [{
      "system" : "http://data.esante.gouv.fr/ansm/medicament/codeSMS",
      "code" : "100000090270",
      "display" : "paracétamol"
    }],
    "text" : "PARACETAMOL"
  }
}

```
