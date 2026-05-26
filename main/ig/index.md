# Accueil - Guide d'implémentation de l'analyse pharmaceutique v0.1.0

* [**Table of Contents**](toc.md)
* **Accueil**

## Accueil

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/analyse-pharma/ImplementationGuide/hl7.fhir.fr.analyse-pharma | *Version*:0.1.0 |
| Draft as of 2026-05-26 | *Computable Name*:APH |

### Introduction

>  **Attention !** Cet Implementation Guide n'est pas la version courante. La version courante sera accessible via l'URL canonique (https://hl7.fr/ig/fhir/medication) lorsque celui-ci sera publié. 

Ce guide d’implémentation (IG) a pour vocation à spécifier les flux d’information autour de l’analyse pharmaceutique pour un patient dans un contexte hospitalier dans un premier temps.

1. [L’analyse pharmaceutique](analyse-Intro.md)

Ce domaine est pris en charge par le GT Pharmacie d’HL7 France au sein de l’association [Interop’Santé](https://www.interopsante.org/). L’historique des versions et des travaux est détaillé dans la page de [suivi des travaux](suivitravaux.md).

Cet IG est en développement continu. Certaines sections n’ont pas encore été complètement développées dans cette version. Ces sections sont néanmoins identifiées pour référence.

L’IG intègre également une partie indiquant [comment passer de flux PN13 à des ressources FHIR](transformation-PN13-vers-FHIR-AnalysePharma.md) et inversement.

#### Dépendances







#### Propriété intellectuelle

Certaines ressources sémantiques de ce guide sont protégées par des droits de propriété intellectuelle couverte par les déclarations ci-dessous. L’utilisation de ces ressources est soumise à l’acceptation et au respect des conditions précisées dans la licence d’utilisation de chacune d’entre elle.

* ISO maintains the copyright on the country codes, and controls its use carefully. For further details see the ISO 3166 web page: [https://www.iso.org/iso-3166-country-codes.html](https://www.iso.org/iso-3166-country-codes.html)

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](http://terminology.hl7.org/6.0.2/CodeSystem-ISO3166Part1.html): [APH](index.md), [FRInpatientPharmaceuticalAnalysisResultProfile](StructureDefinition-fr-inpatient-pharmaceutical-analysis-result.md)... Show 13 more, [FRInpatientPharmaceuticalInterventionSuggestionProfile](StructureDefinition-fr-inpatient-pharmaceutical-intervention-suggestion.md), [FrAnalysePharmaceutiqueLogical](StructureDefinition-fr-analyse-pharmaceutique-logical.md), [FrPN13FHIRPharmaceuticalAnalysisInterventionSansPropositionConceptMap](ConceptMap-PN13-FHIR-analpharm-interv-sans-prop-conceptmap.md), [FrPN13FHIRPharmaceuticalAnalysisValidationConceptMap](ConceptMap-PN13-FHIR-analpharm-val-conceptmap.md), [FrPharmaceuticalAnalysisPerformerTypeValueSet](ValueSet-fr-pharmaceutical-analysis-perfomer-type-value-set.md), [FrPharmaceuticalAnalysisResultCode](CodeSystem-fr-pharmaceutical-analysis-result-code.md), [FrPharmaceuticalAnalysisResultCodeValueSet](ValueSet-fr-pharmaceutical-analysis-result-code-value-set.md), [FrPharmaceuticalInterventionDevenirCode](CodeSystem-fr-pharmaceutical-intervention-devenir-code.md), [FrPharmaceuticalInterventionDevenirCodeValueSet](ValueSet-fr-pharmaceutical-intervention-devenir-code-value-set.md), [FrPharmaceuticalInterventionProblemCode](CodeSystem-fr-pharmaceutical-intervention-problem-code.md), [FrPharmaceuticalInterventionProblemCodeValueSet](ValueSet-fr-pharmaceutical-intervention-problem-code-value-set.md), [FrPharmaceuticalInterventionTypeCode](CodeSystem-fr-pharmaceutical-intervention-type-code.md) and [FrPharmaceuticalInterventionTypeCodeValueSet](ValueSet-fr-pharmaceutical-intervention-type-code-value-set.md)


* The UCUM codes, UCUM table (regardless of format), and UCUM Specification are copyright 1999-2009, Regenstrief Institute, Inc. and the Unified Codes for Units of Measures (UCUM) Organization. All rights reserved. [https://ucum.org/trac/wiki/TermsOfUse](https://ucum.org/trac/wiki/TermsOfUse)

* [Unified Code for Units of Measure (UCUM)](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/CodeSystem-v3-ucum.html): [Bundle/MultiLine-Presc-Sucralfate-Paracetamol](Bundle-MultiLine-Presc-Sucralfate-Paracetamol.md), [Medication/InLine-DOLIPRANE](Medication-InLine-DOLIPRANE.md)... Show 14 more, [Medication/InLine-med-EFFERALGAN](Medication-InLine-med-EFFERALGAN.md), [MedicationRequest/InLine-Analyse-Presc-CETAFEN-INJ](MedicationRequest-InLine-Analyse-Presc-CETAFEN-INJ.md), [MedicationRequest/InLine-Analyse-Presc-NEFOPAM](MedicationRequest-InLine-Analyse-Presc-NEFOPAM.md), [MedicationRequest/InLine-Analyse-Presc-Paracetamol](MedicationRequest-InLine-Analyse-Presc-Paracetamol.md), [MedicationRequest/InLine-Analyse-Presc-Paracetamol-Si-Douleur](MedicationRequest-InLine-Analyse-Presc-Paracetamol-Si-Douleur.md), [MedicationRequest/InLine-Inter-Arret-Paracetamol-Si-Douleur](MedicationRequest-InLine-Inter-Arret-Paracetamol-Si-Douleur.md), [MedicationRequest/InLine-Trad-PN13-FHIR-Analyse-Intervention-Proposition](MedicationRequest-InLine-Trad-PN13-FHIR-Analyse-Intervention-Proposition.md), [MedicationRequest/InLine-Trad-PN13-FHIR-Analyse-Intervention-Substitution](MedicationRequest-InLine-Trad-PN13-FHIR-Analyse-Intervention-Substitution.md), [MedicationRequest/InLine-Trad-PN13-FHIR-Analyse-Presc-Paracetamol](MedicationRequest-InLine-Trad-PN13-FHIR-Analyse-Presc-Paracetamol.md), [MedicationRequest/InLine-Trad-PN13-FHIR-Analyse-Validation-Proposition](MedicationRequest-InLine-Trad-PN13-FHIR-Analyse-Validation-Proposition.md), [MedicationRequest/InLine-presc-Paracetamol1](MedicationRequest-InLine-presc-Paracetamol1.md), [MedicationRequest/InLine-presc-Paracetamol2](MedicationRequest-InLine-presc-Paracetamol2.md), [Observation/InLine-Observation-poids-Avion](Observation-InLine-Observation-poids-Avion.md) and [Observation/InLine-observation-taille-Avion](Observation-InLine-observation-taille-Avion.md)


* This material contains content from [LOINC](http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the [license](http://loinc.org/license). LOINC® is a registered United States trademark of Regenstrief Institute, Inc.

* [LOINC](http://terminology.hl7.org/6.0.2/CodeSystem-v3-loinc.html): [Observation/InLine-Observation-poids-Avion](Observation-InLine-Observation-poids-Avion.md) and [Observation/InLine-observation-taille-Avion](Observation-InLine-observation-taille-Avion.md)


* This material contains content that is copyright of SNOMED International. Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact [https://www.snomed.org/get-snomed](https://www.snomed.org/get-snomed) or [info@snomed.org](mailto:info@snomed.org).

* [SNOMED Clinical Terms&reg; (SNOMED CT&reg;)](http://hl7.org/fhir/R4/codesystem-snomedct.html): [MedicationRequest/InLine-Analyse-Presc-Paracetamol-Si-Douleur](MedicationRequest-InLine-Analyse-Presc-Paracetamol-Si-Douleur.md), [MedicationRequest/InLine-Inter-Arret-Paracetamol-Si-Douleur](MedicationRequest-InLine-Inter-Arret-Paracetamol-Si-Douleur.md) and [MedicationRequest/InLine-Trad-PN13-FHIR-Analyse-Presc-Paracetamol](MedicationRequest-InLine-Trad-PN13-FHIR-Analyse-Presc-Paracetamol.md)


* Unless otherwise indicated, reproduction of material posted on Council of Europe websites, and reproduction of photographs for which the Council of Europe holds copyright – see legal notice \“photo credits\” – is authorised for private use and for informational and educational uses relating to the Council of Europe’s work. This authorisation is subject to the condition that the source be indicated and no charge made for reproduction. Persons wishing to make some other use than those specified above, including commercial use, of information and text posted on these sites are asked to apply for prior written authorisation to the Council of Europe, Directorate of Communication.

* [EDQM Standard Terms](http://tx.fhir.org/r4/ValueSet/edqm): [Bundle/MultiLine-Presc-METFORMINE-GLICLAZIDE](Bundle-MultiLine-Presc-METFORMINE-GLICLAZIDE.md), [Bundle/MultiLine-Presc-METHOTREXATE-LEDERFOLINE](Bundle-MultiLine-Presc-METHOTREXATE-LEDERFOLINE.md)... Show 37 more, [Bundle/MultiLine-Presc-Sucralfate-Paracetamol](Bundle-MultiLine-Presc-Sucralfate-Paracetamol.md), [Medication/InLine-DOLIPRANE](Medication-InLine-DOLIPRANE.md), [Medication/InLine-med-EFFERALGAN](Medication-InLine-med-EFFERALGAN.md), [MedicationRequest/InLine-Analyse-Presc-BINOCRIT](MedicationRequest-InLine-Analyse-Presc-BINOCRIT.md), [MedicationRequest/InLine-Analyse-Presc-CALCIDOSE](MedicationRequest-InLine-Analyse-Presc-CALCIDOSE.md), [MedicationRequest/InLine-Analyse-Presc-CELLUVISC](MedicationRequest-InLine-Analyse-Presc-CELLUVISC.md), [MedicationRequest/InLine-Analyse-Presc-CETAFEN-CPR](MedicationRequest-InLine-Analyse-Presc-CETAFEN-CPR.md), [MedicationRequest/InLine-Analyse-Presc-CETAFEN-INJ](MedicationRequest-InLine-Analyse-Presc-CETAFEN-INJ.md), [MedicationRequest/InLine-Analyse-Presc-COTAREG](MedicationRequest-InLine-Analyse-Presc-COTAREG.md), [MedicationRequest/InLine-Analyse-Presc-DOSTINEX](MedicationRequest-InLine-Analyse-Presc-DOSTINEX.md), [MedicationRequest/InLine-Analyse-Presc-Diazepam](MedicationRequest-InLine-Analyse-Presc-Diazepam.md), [MedicationRequest/InLine-Analyse-Presc-ELIQUIS-25](MedicationRequest-InLine-Analyse-Presc-ELIQUIS-25.md), [MedicationRequest/InLine-Analyse-Presc-ELIQUIS-50](MedicationRequest-InLine-Analyse-Presc-ELIQUIS-50.md), [MedicationRequest/InLine-Analyse-Presc-ESIDREX](MedicationRequest-InLine-Analyse-Presc-ESIDREX.md), [MedicationRequest/InLine-Analyse-Presc-ESOMEPRAZOLE](MedicationRequest-InLine-Analyse-Presc-ESOMEPRAZOLE.md), [MedicationRequest/InLine-Analyse-Presc-EZETIMIBE](MedicationRequest-InLine-Analyse-Presc-EZETIMIBE.md), [MedicationRequest/InLine-Analyse-Presc-INEGY](MedicationRequest-InLine-Analyse-Presc-INEGY.md), [MedicationRequest/InLine-Analyse-Presc-INNOHEP](MedicationRequest-InLine-Analyse-Presc-INNOHEP.md), [MedicationRequest/InLine-Analyse-Presc-LACRIFLUID](MedicationRequest-InLine-Analyse-Presc-LACRIFLUID.md), [MedicationRequest/InLine-Analyse-Presc-LANSOPRAZOLE](MedicationRequest-InLine-Analyse-Presc-LANSOPRAZOLE.md), [MedicationRequest/InLine-Analyse-Presc-LEVOTHYROX](MedicationRequest-InLine-Analyse-Presc-LEVOTHYROX.md), [MedicationRequest/InLine-Analyse-Presc-LOXAPAC](MedicationRequest-InLine-Analyse-Presc-LOXAPAC.md), [MedicationRequest/InLine-Analyse-Presc-MACROGOL](MedicationRequest-InLine-Analyse-Presc-MACROGOL.md), [MedicationRequest/InLine-Analyse-Presc-METFORMINE](MedicationRequest-InLine-Analyse-Presc-METFORMINE.md), [MedicationRequest/InLine-Analyse-Presc-Morphine](MedicationRequest-InLine-Analyse-Presc-Morphine.md), [MedicationRequest/InLine-Analyse-Presc-NEFOPAM](MedicationRequest-InLine-Analyse-Presc-NEFOPAM.md), [MedicationRequest/InLine-Analyse-Presc-Paracetamol](MedicationRequest-InLine-Analyse-Presc-Paracetamol.md), [MedicationRequest/InLine-Analyse-Presc-SIMVASTATINE](MedicationRequest-InLine-Analyse-Presc-SIMVASTATINE.md), [MedicationRequest/InLine-Analyse-Presc-TAREG](MedicationRequest-InLine-Analyse-Presc-TAREG.md), [MedicationRequest/InLine-Presc-EFFERALGAN](MedicationRequest-InLine-Presc-EFFERALGAN.md), [MedicationRequest/InLine-Trad-PN13-FHIR-Analyse-Intervention-Proposition](MedicationRequest-InLine-Trad-PN13-FHIR-Analyse-Intervention-Proposition.md), [MedicationRequest/InLine-Trad-PN13-FHIR-Analyse-Intervention-Substitution](MedicationRequest-InLine-Trad-PN13-FHIR-Analyse-Intervention-Substitution.md), [MedicationRequest/InLine-Trad-PN13-FHIR-Analyse-Presc-Paracetamol](MedicationRequest-InLine-Trad-PN13-FHIR-Analyse-Presc-Paracetamol.md), [MedicationRequest/InLine-Trad-PN13-FHIR-Analyse-Validation-Proposition](MedicationRequest-InLine-Trad-PN13-FHIR-Analyse-Validation-Proposition.md), [MedicationRequest/InLine-presc-EFFERALGAN2](MedicationRequest-InLine-presc-EFFERALGAN2.md), [MedicationRequest/InLine-presc-Paracetamol1](MedicationRequest-InLine-presc-Paracetamol1.md) and [MedicationRequest/InLine-presc-Paracetamol2](MedicationRequest-InLine-presc-Paracetamol2.md)




## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "hl7.fhir.fr.analyse-pharma",
  "url" : "https://hl7.fr/ig/fhir/analyse-pharma/ImplementationGuide/hl7.fhir.fr.analyse-pharma",
  "version" : "0.1.0",
  "name" : "APH",
  "title" : "Guide d'implémentation de l'analyse pharmaceutique",
  "status" : "draft",
  "date" : "2026-05-26T09:10:26+00:00",
  "publisher" : "Interop'Santé",
  "contact" : [{
    "name" : "Interop'Santé",
    "telecom" : [{
      "system" : "url",
      "value" : "http://interopsante.org/"
    }]
  }],
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "packageId" : "hl7.fhir.fr.analyse-pharma",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [{
    "id" : "hl7tx",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
    }],
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r4",
    "version" : "7.1.0"
  },
  {
    "id" : "hl7ext",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
    }],
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.3.0"
  },
  {
    "id" : "hl7_fhir_fr_core",
    "uri" : "https://hl7.fr/ig/fhir/core/ImplementationGuide/hl7.fhir.fr.core",
    "packageId" : "hl7.fhir.fr.core",
    "version" : "2.1.0"
  },
  {
    "id" : "hl7_fhir_uv_xver_r5_r4",
    "uri" : "http://hl7.org/fhir/uv/xver/ImplementationGuide/hl7.fhir.uv.xver-r5.r4",
    "packageId" : "hl7.fhir.uv.xver-r5.r4",
    "version" : "0.1.0"
  },
  {
    "id" : "ans_fhir_fr_eprescription",
    "uri" : "https://interop.esante.gouv.fr/ig/fhir/eprescription/ImplementationGuide/ans.fhir.fr.eprescription",
    "packageId" : "ans.fhir.fr.eprescription",
    "version" : "current"
  }],
  "definition" : {
    "extension" : [{
      "extension" : [{
        "url" : "code",
        "valueString" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2020+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "ci-build"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "shownav"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-expansion-params"
      },
      {
        "url" : "value",
        "valueString" : "../../expansion-params.json"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "pin-canonicals"
      },
      {
        "url" : "value",
        "valueString" : "pin-multiples"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://hl7.fr/ig/fhir/analyse-pharma/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/expansion-parameters",
      "valueReference" : {
        "reference" : "Parameters/expansion-parameters"
      }
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r4#1.1.2"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2020+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "ci-build"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "shownav"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-expansion-params"
      },
      {
        "url" : "value",
        "valueString" : "../../expansion-params.json"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "pin-canonicals"
      },
      {
        "url" : "value",
        "valueString" : "pin-multiples"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://hl7.fr/ig/fhir/analyse-pharma/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      }],
      "reference" : {
        "reference" : "Task/Analyse-Intervention-Acceptee"
      },
      "name" : "Analyse-Intervention-Acceptee",
      "description" : "Acceptation de l'arrêt de paracétamol proposé par l'intervention pharmaceutique",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/analyse-pharma/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      }],
      "reference" : {
        "reference" : "Task/Analyse-Intervention-Commentaire-Trad-PN13-FHIR"
      },
      "name" : "Analyse-Intervention-Commentaire-Trad-PN13-FHIR",
      "description" : "Intervention pharmaceutique avec commentaire pour exemple traduction PN13-FHIR de resultats d'analyse pharmaceutique",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/analyse-pharma/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      }],
      "reference" : {
        "reference" : "Task/Analyse-Intervention-Liee-Validation-Trad-PN13-FHIR"
      },
      "name" : "Analyse-Intervention-Liee-Validation-Trad-PN13-FHIR",
      "description" : "Intervention pharmaceutique associée à une validation pour exemple traduction PN13-FHIR de resultats d'analyse pharmaceutique",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/analyse-pharma/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      }],
      "reference" : {
        "reference" : "Task/Analyse-Intervention-NonAcceptee"
      },
      "name" : "Analyse-Intervention-NonAcceptee",
      "description" : "Validation d'un dosage dont l'intervention pharmaceutique demandait confirmation",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/analyse-pharma/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      }],
      "reference" : {
        "reference" : "Task/Analyse-Intervention-Proposition-Trad-PN13-FHIR"
      },
      "name" : "Analyse-Intervention-Proposition-Trad-PN13-FHIR",
      "description" : "Intervention pharmaceutique avec proposition pour exemple traduction PN13-FHIR de resultats d'analyse pharmaceutique",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/analyse-pharma/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      }],
      "reference" : {
        "reference" : "Task/Analyse-Intervention-Substitution-Trad-PN13-FHIR"
      },
      "name" : "Analyse-Intervention-Substitution-Trad-PN13-FHIR",
      "description" : "Intervention pharmaceutique avec proposition de substitution pour exemple traduction PN13-FHIR de resultats d'analyse pharmaceutique",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/analyse-pharma/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      }],
      "reference" : {
        "reference" : "Task/Analyse-Intervention-Type1-DOSTINEX"
      },
      "name" : "Analyse-Intervention-Type1-DOSTINEX",
      "description" : "Intervention pharmaceutique Type: 1 Ajout (prescription nouvelle) - Problème: 9 Traitement non reçu",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/analyse-pharma/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      }],
      "reference" : {
        "reference" : "Task/Analyse-Intervention-Type1-MACROGOL"
      },
      "name" : "Analyse-Intervention-Type1-MACROGOL",
      "description" : "Intervention pharmaceutique Type: 1 Ajout (prescription nouvelle) - Problème: 7 Effet indésirable",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/analyse-pharma/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      }],
      "reference" : {
        "reference" : "Task/Analyse-Intervention-Type1-METFORMINE"
      },
      "name" : "Analyse-Intervention-Type1-METFORMINE",
      "description" : "Intervention pharmaceutique Type: 1 Ajout (prescription nouvelle) - Problème: 2 Indication non traitée",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/analyse-pharma/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      }],
      "reference" : {
        "reference" : "Task/Analyse-Intervention-Type2-Arret-Paracetamol"
      },
      "name" : "Analyse-Intervention-Type2-Arret-Paracetamol",
      "description" : "Intervention pharmaceutique Type 2: Arrêt - Problème 5: Médicament non indiqué",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/analyse-pharma/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      }],
      "reference" : {
        "reference" : "Task/Analyse-Intervention-Type3-Demande-Substitution-NEFOPAM"
      },
      "name" : "Analyse-Intervention-Type3-Demande-Substitution-NEFOPAM",
      "description" : "Intervention pharmaceutique Type: 3 Substitution/Echange - Problème: 6.3 Interaction - Association déconseillée",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/analyse-pharma/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      }],
      "reference" : {
        "reference" : "Task/Analyse-Intervention-Type3-ELIQUIS"
      },
      "name" : "Analyse-Intervention-Type3-ELIQUIS",
      "description" : "Intervention pharmaceutique Type: 7 Adaptation posologique - Problème: 4 Surdosage",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/analyse-pharma/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      }],
      "reference" : {
        "reference" : "Task/Analyse-Intervention-Type3-ESOMEPRAZOLE"
      },
      "name" : "Analyse-Intervention-Type3-ESOMEPRAZOLE",
      "description" : "Intervention pharmaceutique Type: 3 Substitution/Echange - Problème: 1 Non conformité aux référentiels",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/analyse-pharma/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      }],
      "reference" : {
        "reference" : "Task/Analyse-Intervention-Type3-Remplacement1pour2-INEGY"
      },
      "name" : "Analyse-Intervention-Type3-Remplacement1pour2-INEGY",
      "description" : "Intervention pharmaceutique Type: 3 Substitution/Echange - Problème: 1 Non conformité aux référentiels",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/analyse-pharma/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      }],
      "reference" : {
        "reference" : "Task/Analyse-Intervention-Type3-Remplacement2pour1-COTAREG"
      },
      "name" : "Analyse-Intervention-Type3-Remplacement2pour1-COTAREG",
      "description" : "Intervention pharmaceutique Type: 3 Substitution/Echange - Problème: 1 Non conformité aux référentiels",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/analyse-pharma/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      }],
      "reference" : {
        "reference" : "Task/Analyse-Intervention-Type4-CETAFEN-INJ"
      },
      "name" : "Analyse-Intervention-Type4-CETAFEN-INJ",
      "description" : "Intervention pharmaceutique Type: 4 Choix de la voie d'administration - Problème: 8 Voie/administration inappropriée",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/analyse-pharma/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      }],
      "reference" : {
        "reference" : "Task/Analyse-Intervention-Type5-DOSTINEX"
      },
      "name" : "Analyse-Intervention-Type5-DOSTINEX",
      "description" : "Intervention pharmaceutique Type: 5 Suivi thérapeutique - Problème: 7 Effet indésirable",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/analyse-pharma/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      }],
      "reference" : {
        "reference" : "Task/Analyse-Intervention-Type5-INNOHEP"
      },
      "name" : "Analyse-Intervention-Type5-INNOHEP",
      "description" : "Intervention pharmaceutique Type: 5 Suivi thérapeutique - Problème: 10 Monitorage à suivre",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/analyse-pharma/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      }],
      "reference" : {
        "reference" : "Task/Analyse-Intervention-Type6-CALCIDOSE"
      },
      "name" : "Analyse-Intervention-Type6-CALCIDOSE",
      "description" : "Intervention pharmaceutique Type: 6 Optimisation modalités d'administration - Problème: 6.2 Interaction - Précaution d'emploi",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/analyse-pharma/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      }],
      "reference" : {
        "reference" : "Task/Analyse-Intervention-Type6-LOXAPAC"
      },
      "name" : "Analyse-Intervention-Type6-LOXAPAC",
      "description" : "Intervention pharmaceutique Type: 6 Optimisation modalités d'administration - Problème: 8 Voie/administration inappropriée",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/analyse-pharma/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      }],
      "reference" : {
        "reference" : "Task/Analyse-Intervention-Type7-BINOCRIT"
      },
      "name" : "Analyse-Intervention-Type7-BINOCRIT",
      "description" : "Intervention pharmaceutique Type: 7 Adaptation posologique - Problème: 3 Sous-dosage",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/analyse-pharma/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      }],
      "reference" : {
        "reference" : "Task/Analyse-Validation-Ajout-Morphine"
      },
      "name" : "Analyse-Validation-Ajout-Morphine",
      "description" : "Validation d'une prescription de morphine avec proposition d'ajout",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/analyse-pharma/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      }],
      "reference" : {
        "reference" : "Task/Analyse-Validation-Commentaire-Diazepam"
      },
      "name" : "Analyse-Validation-Commentaire-Diazepam",
      "description" : "Validation d'une prescription de diazépam avec commentaire",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/analyse-pharma/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      }],
      "reference" : {
        "reference" : "Task/Analyse-Validation-Commentaire-LACRIFLUID"
      },
      "name" : "Analyse-Validation-Commentaire-LACRIFLUID",
      "description" : "Validation d'une prescription de LACRIFLUID avec commentaire",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/analyse-pharma/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      }],
      "reference" : {
        "reference" : "Task/Analyse-Validation-Commentaire-Morphine"
      },
      "name" : "Analyse-Validation-Commentaire-Morphine",
      "description" : "Validation d'une prescription de morphine avec commentaire",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/analyse-pharma/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      }],
      "reference" : {
        "reference" : "Task/Analyse-Validation-Commentaire-Trad-PN13-FHIR"
      },
      "name" : "Analyse-Validation-Commentaire-Trad-PN13-FHIR",
      "description" : "Validation pharmaceutique avec commentaire pour exemple traduction PN13-FHIR de resultats d'analyse pharmaceutique",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/analyse-pharma/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      }],
      "reference" : {
        "reference" : "Task/Analyse-Validation-Intervention-Liee-Trad-PN13-FHIR"
      },
      "name" : "Analyse-Validation-Intervention-Liee-Trad-PN13-FHIR",
      "description" : "Validation pharmaceutique associée à une intervention pharmaceutique pour exemple traduction PN13-FHIR de resultats d'analyse pharmaceutique",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/analyse-pharma/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      }],
      "reference" : {
        "reference" : "Task/Analyse-Validation-Sans-Commentaire-Trad-PN13-FHIR"
      },
      "name" : "Analyse-Validation-Sans-Commentaire-Trad-PN13-FHIR",
      "description" : "Validation pharmaceutique sans commentaire pour exemple traduction PN13-FHIR de resultats d'analyse pharmaceutique",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/analyse-pharma/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      }],
      "reference" : {
        "reference" : "Task/Analyse-Validation-Simple-paracetamol"
      },
      "name" : "Analyse-Validation-Simple-paracetamol",
      "description" : "Validation simple d'une prescription de paracétamol",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/analyse-pharma/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/fr-pharmaceutical-intervention-devenir-code"
      },
      "name" : "code system d'Interop'Santé - Codes de devenir de l'intervention pharmaceutique",
      "description" : "Le système de codage pour le typage du devenir l'intervention pharmaceutique.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/fr-pharmaceutical-analysis-result-code"
      },
      "name" : "code system d'Interop'Santé - Codes de résultat d'analyse pharmaceutique",
      "description" : "Le système de codage pour le typage du résultat d'analyse pharmaceutique.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/fr-pharmaceutical-intervention-problem-code"
      },
      "name" : "code system d'Interop'Santé - Codes du problème identifié dans l'intervention pharmaceutique",
      "description" : "Le système de codage pour le typage du problème identifié dans l'intervention pharmaceutique.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/fr-pharmaceutical-intervention-type-code"
      },
      "name" : "code system d'Interop'Santé - Codes du type d'intervention pharmaceutique",
      "description" : "Le système de codage pour le typage de l'intervention pharmaceutique.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      }],
      "reference" : {
        "reference" : "ConceptMap/PN13-FHIR-analpharm-interv-sans-prop-conceptmap"
      },
      "name" : "Conversion PN13 vers FHIR pour le résultat d'une analyse pharmaceutique de type intervention pharmaceutique sans proposition",
      "description" : "ConceptMap pour la conversion PN13 vers FHIR d'un résultat d'une analyse pharmaceutique de type intervention pharmaceutique sans proposition",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      }],
      "reference" : {
        "reference" : "ConceptMap/PN13-FHIR-analpharm-interv-avec-prop-conceptmap"
      },
      "name" : "Conversion PN13 vers FHIR pour le résultat d'une analyse pharmaceutiquede type intervention pharmaceutique avec proposition",
      "description" : "ConceptMap pour la conversion PN13 vers FHIR d'un résultat d'une analyse pharmaceutique de type intervention pharmaceutique avec proposition",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      }],
      "reference" : {
        "reference" : "ConceptMap/PN13-FHIR-analpharm-val-conceptmap"
      },
      "name" : "Conversion PN13 vers FHIR pour le résultat d'une analyse pharmaceutiquede type validation",
      "description" : "ConceptMap pour la conversion PN13 vers FHIR d'un résultat d'une analyse pharmaceutique de type validation",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"
      },
      "name" : "FR Pharmaceutical Analysis Result",
      "description" : "French Pharmaceutical Analysis Result profile",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fr-inpatient-pharmaceutical-intervention-suggestion"
      },
      "name" : "FR Pharmaceutical Intervention Suggestion",
      "description" : "Profile de proposition d'évolution de ligne de prescritpion dans le cadre d'une intervention pharmaceutique",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/InLine-Analyse-Presc-BINOCRIT"
      },
      "name" : "InLine-Analyse-Presc-BINOCRIT",
      "description" : "Prescription de BINOCRIT pour exemple d'analyse pharmaceutique",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/InLine-Analyse-Presc-CALCIDOSE"
      },
      "name" : "InLine-Analyse-Presc-CALCIDOSE",
      "description" : "Prescription de CALCIDOSE pour exemple d'analyse pharmaceutique",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/InLine-Analyse-Presc-CELLUVISC"
      },
      "name" : "InLine-Analyse-Presc-CELLUVISC",
      "description" : "Prescription de CELLUVISC pour exemple d'analyse pharmaceutique",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/analyse-pharma/StructureDefinition/fr-inpatient-pharmaceutical-intervention-suggestion"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/InLine-Analyse-Presc-CETAFEN-CPR"
      },
      "name" : "InLine-Analyse-Presc-CETAFEN-CPR",
      "description" : "Prescription de CETAFEN en comprimé pour exemple d'intervention pharmaceutique",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/analyse-pharma/StructureDefinition/fr-inpatient-pharmaceutical-intervention-suggestion"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/InLine-Analyse-Presc-CETAFEN-INJ"
      },
      "name" : "InLine-Analyse-Presc-CETAFEN-INJ",
      "description" : "Prescription de CETAFEN en perfusion pour exemple d'intervention pharmaceutique",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/InLine-Analyse-Presc-COTAREG"
      },
      "name" : "InLine-Analyse-Presc-COTAREG",
      "description" : "Prescription de COTAREG pour exemple d'analyse pharmaceutique",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/InLine-Analyse-Presc-Diazepam"
      },
      "name" : "InLine-Analyse-Presc-Diazepam",
      "description" : "Prescription de Diazépam pour exemple d'analyse pharmaceutique",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/InLine-Analyse-Presc-DOSTINEX"
      },
      "name" : "InLine-Analyse-Presc-DOSTINEX",
      "description" : "Prescription de DOSTINEX pour exemple d'analyse pharmaceutique",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/InLine-Analyse-Presc-ELIQUIS-25"
      },
      "name" : "InLine-Analyse-Presc-ELIQUIS-25",
      "description" : "Prescription de ELIQUS 2,5 MG pour exemple d'analyse pharmaceutique",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/analyse-pharma/StructureDefinition/fr-inpatient-pharmaceutical-intervention-suggestion"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/InLine-Analyse-Presc-ELIQUIS-50"
      },
      "name" : "InLine-Analyse-Presc-ELIQUIS-50",
      "description" : "Prescription de ELIQUIS 5MG pour exemple d'analyse pharmaceutique",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/InLine-Analyse-Presc-ESIDREX"
      },
      "name" : "InLine-Analyse-Presc-ESIDREX",
      "description" : "Prescription d'ESIDREX pour exemple d'analyse pharmaceutique",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/analyse-pharma/StructureDefinition/fr-inpatient-pharmaceutical-intervention-suggestion"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/InLine-Analyse-Presc-ESOMEPRAZOLE"
      },
      "name" : "InLine-Analyse-Presc-ESOMEPRAZOLE",
      "description" : "Prescription de ESOMEPTAZOLE pour exemple d'analyse pharmaceutique",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/InLine-Analyse-Presc-EZETIMIBE"
      },
      "name" : "InLine-Analyse-Presc-EZETIMIBE",
      "description" : "Prescription de EZETIMIBE pour exemple d'analyse pharmaceutique",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/InLine-Analyse-Presc-INEGY"
      },
      "name" : "InLine-Analyse-Presc-INEGY",
      "description" : "Prescription de INEGY pour exemple d'analyse pharmaceutique",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/analyse-pharma/StructureDefinition/fr-inpatient-pharmaceutical-intervention-suggestion"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/InLine-Analyse-Presc-INNOHEP"
      },
      "name" : "InLine-Analyse-Presc-INNOHEP",
      "description" : "Prescription de INNOHEP pour exemple d'analyse pharmaceutique",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/InLine-Analyse-Presc-LACRIFLUID"
      },
      "name" : "InLine-Analyse-Presc-LACRIFLUID",
      "description" : "Prescription de LACRIFLUID pour exemple d'analyse pharmaceutique",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/InLine-Analyse-Presc-LANSOPRAZOLE"
      },
      "name" : "InLine-Analyse-Presc-LANSOPRAZOLE",
      "description" : "Prescription de LANSOPRAZOLE pour exemple d'analyse pharmaceutique",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/analyse-pharma/StructureDefinition/fr-inpatient-pharmaceutical-intervention-suggestion"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/InLine-Analyse-Presc-LEVOTHYROX"
      },
      "name" : "InLine-Analyse-Presc-LEVOTHYROX",
      "description" : "Prescription de LACRIFLUID pour exemple d'analyse pharmaceutique",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/InLine-Analyse-Presc-LOXAPAC"
      },
      "name" : "InLine-Analyse-Presc-LOXAPAC",
      "description" : "Prescription de LOXAPAC pour exemple d'analyse pharmaceutique",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/InLine-Analyse-Presc-MACROGOL"
      },
      "name" : "InLine-Analyse-Presc-MACROGOL",
      "description" : "Prescription de MACROGOL pour exemple d'analyse pharmaceutique",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/analyse-pharma/StructureDefinition/fr-inpatient-pharmaceutical-intervention-suggestion"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/InLine-Analyse-Presc-METFORMINE"
      },
      "name" : "InLine-Analyse-Presc-METFORMINE",
      "description" : "Prescription de METFORMINE pour exemple d'analyse pharmaceutique",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/InLine-Analyse-Presc-Morphine"
      },
      "name" : "InLine-Analyse-Presc-Morphine",
      "description" : "Prescription de Paracétamol pour exemple d'analyse pharmaceutique",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/InLine-Analyse-Presc-NEFOPAM"
      },
      "name" : "InLine-Analyse-Presc-NEFOPAM",
      "description" : "Prescription de NEFOPMA pour exemple d'intervention pharmaceutique",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/InLine-Analyse-Presc-Paracetamol"
      },
      "name" : "InLine-Analyse-Presc-Paracetamol",
      "description" : "Prescription de Paracétamol pour exemple de vaidation pharmaceutique",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/InLine-Analyse-Presc-Paracetamol-Si-Douleur"
      },
      "name" : "InLine-Analyse-Presc-Paracetamol-Si-Douleur",
      "description" : "Prescription de Paracétamol pour exemple d'intervention pharmaceutique",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/InLine-Analyse-Presc-SIMVASTATINE"
      },
      "name" : "InLine-Analyse-Presc-SIMVASTATINE",
      "description" : "Prescription de SIMVASTATINE pour exemple d'analyse pharmaceutique",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/InLine-Analyse-Presc-TAREG"
      },
      "name" : "InLine-Analyse-Presc-TAREG",
      "description" : "Prescription de TAREG pour exemple d'analyse pharmaceutique",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/analyse-pharma/StructureDefinition/fr-inpatient-pharmaceutical-intervention-suggestion"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Medication"
      }],
      "reference" : {
        "reference" : "Medication/InLine-DOLIPRANE"
      },
      "name" : "InLine-DOLIPRANE",
      "description" : "Medication DOLIPRANE® pour exemple de dispensation",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/InLine-Inter-Arret-Paracetamol-Si-Douleur"
      },
      "name" : "InLine-Inter-Arret-Paracetamol-Si-Douleur",
      "description" : "Proposition d'arrêt dans le cadre d'un intervention pharmaceutique",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/analyse-pharma/StructureDefinition/fr-inpatient-pharmaceutical-intervention-suggestion"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Medication"
      }],
      "reference" : {
        "reference" : "Medication/InLine-med-EFFERALGAN"
      },
      "name" : "InLine-med-EFFERALGAN",
      "description" : "Medication EFFERALGAN® pour exemple de dispensation",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Medication"
      }],
      "reference" : {
        "reference" : "Medication/InLine-med-Paracetamol"
      },
      "name" : "InLine-med-Paracetamol",
      "description" : "Medication Paracétamol pour exemple de dispensation",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/InLine-Observation-poids-Avion"
      },
      "name" : "InLine-Observation-poids-Avion",
      "description" : "Poids du patient pour exemples traduction PN13-FHIR de resultats d'analyse pharmaceutique",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/InLine-observation-taille-Avion"
      },
      "name" : "InLine-observation-taille-Avion",
      "description" : "Taille du patient pour exemples traduction PN13-FHIR de resultats d'analyse pharmaceutique",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/InLine-patient-Avion"
      },
      "name" : "InLine-patient-Avion",
      "description" : "Patient pour exemples traduction PN13-FHIR de resultats d'analyse pharmaceutique",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Group"
      }],
      "reference" : {
        "reference" : "Group/InLine-patient-group-01"
      },
      "name" : "InLine-patient-group-01",
      "description" : "Groupe de patient pour exemple de délivrance reglobalisée",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      }],
      "reference" : {
        "reference" : "Practitioner/InLine-practitioner-Luiggi"
      },
      "name" : "InLine-practitioner-Luiggi",
      "description" : "Practitioner prescripteur pour exemples traduction PN13-FHIR de resultats d'analyse pharmaceutique",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/InLine-Presc-EFFERALGAN"
      },
      "name" : "InLine-Presc-EFFERALGAN",
      "description" : "Prescription d'EFFERALGAN® pour exemple de dispensation",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/InLine-presc-EFFERALGAN2"
      },
      "name" : "InLine-presc-EFFERALGAN2",
      "description" : "Prescription d'EFFERALGAN® pour exemple de dispensation",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/InLine-presc-Paracetamol1"
      },
      "name" : "InLine-presc-Paracetamol1",
      "description" : "Prescription de Paracétamol pour exemple de dispensation",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/InLine-presc-Paracetamol2"
      },
      "name" : "InLine-presc-Paracetamol2",
      "description" : "Prescription de Paracétamol pour exemple de dispensation",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/InLine-Trad-PN13-FHIR-Analyse-Intervention-Proposition"
      },
      "name" : "InLine-Trad-PN13-FHIR-Analyse-Intervention-Proposition",
      "description" : "Proposition associée à intervention pharmaceutique pour exemple traduction PN13-FHIR de resultats d'analyse pharmaceutique",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/analyse-pharma/StructureDefinition/fr-inpatient-pharmaceutical-intervention-suggestion"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/InLine-Trad-PN13-FHIR-Analyse-Intervention-Substitution"
      },
      "name" : "InLine-Trad-PN13-FHIR-Analyse-Intervention-Substitution",
      "description" : "Proposition de substitution associée à intervention pharmaceutique pour exemple traduction PN13-FHIR de resultats d'analyse pharmaceutique",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/analyse-pharma/StructureDefinition/fr-inpatient-pharmaceutical-intervention-suggestion"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/InLine-Trad-PN13-FHIR-Analyse-Presc-Paracetamol"
      },
      "name" : "InLine-Trad-PN13-FHIR-Analyse-Presc-Paracetamol",
      "description" : "Prescription initale pour exemples traduction PN13-FHIR de resultats d'analyse pharmaceutique",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/InLine-Trad-PN13-FHIR-Analyse-Validation-Proposition"
      },
      "name" : "InLine-Trad-PN13-FHIR-Analyse-Validation-Proposition",
      "description" : "Proposition associée à validation pharmaceutique pour exemple traduction PN13-FHIR de resultats d'analyse pharmaceutique",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/analyse-pharma/StructureDefinition/fr-inpatient-pharmaceutical-intervention-suggestion"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/fr-pharmaceutical-intervention-devenir-code-value-set"
      },
      "name" : "Jeu de valeurs Interop'Santé - Codes de devenir de l'intervention pharmaceutique",
      "description" : "Codes représentant le devenir de l'intervention pharmaceutique",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/fr-pharmaceutical-analysis-perfomer-type-value-set"
      },
      "name" : "Jeu de valeurs Interop'Santé - Codes de résultat d'analyse pharmaceutique",
      "description" : "Codes représentant le type de résultat de l'analyse pharmaceutique",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/fr-pharmaceutical-analysis-result-code-value-set"
      },
      "name" : "Jeu de valeurs Interop'Santé - Codes de résultat d'analyse pharmaceutique",
      "description" : "Codes représentant le type de résultat de l'analyse pharmaceutique",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/fr-pharmaceutical-intervention-problem-code-value-set"
      },
      "name" : "Jeu de valeurs Interop'Santé - Codes du problème identifié dans l'intervention pharmaceutique",
      "description" : "Codes représentant le problème identifié dans l'intervention pharmaceutique",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/fr-pharmaceutical-intervention-type-code-value-set"
      },
      "name" : "Jeu de valeurs Interop'Santé - Codes du type d'intervention pharmaceutique",
      "description" : "Codes représentant le type d'intervention pharmaceutique",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/MultiLine-Presc-METFORMINE-GLICLAZIDE"
      },
      "name" : "MultiLine-Presc-METFORMINE-GLICLAZIDE",
      "description" : "METFORMINE® ou GLICLAZIDE® en cas d'intolérance digestive à la METFORMINE",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/MultiLine-Presc-METHOTREXATE-LEDERFOLINE"
      },
      "name" : "MultiLine-Presc-METHOTREXATE-LEDERFOLINE",
      "description" : "METHOTREX® et LEDERFOLINE® à prendre en même temps",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/MultiLine-Presc-Sucralfate-Paracetamol"
      },
      "name" : "MultiLine-Presc-Sucralfate-Paracetamol",
      "description" : "Paracetamol 2h après Sucralfate",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fr-analyse-pharmaceutique-logical"
      },
      "name" : "Résultat d'analyse pharmaceutique",
      "description" : "Structure du résultat d'analyse pharmaceutique (validation ou intervention pharmacetique)",
      "exampleBoolean" : false
    }],
    "page" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
        "valueUrl" : "toc.html"
      }],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "index.html"
        }],
        "nameUrl" : "index.html",
        "title" : "Accueil",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "analyse-Intro.html"
        }],
        "nameUrl" : "analyse-Intro.html",
        "title" : "L'analyse pharmaceutique - Introduction",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "analyse-VueEnsemble.html"
        }],
        "nameUrl" : "analyse-VueEnsemble.html",
        "title" : "L'analyse pharmaceutique - Vue d'ensemble",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "analyse-CasUsage.html"
        }],
        "nameUrl" : "analyse-CasUsage.html",
        "title" : "L'analyse pharmaceutique - Cas d'usage",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "analyse-Exemples.html"
        }],
        "nameUrl" : "analyse-Exemples.html",
        "title" : "L'analyse pharmaceutique - Exemples",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "transformation-PN13-vers-FHIR-AnalysePharma.html"
        }],
        "nameUrl" : "transformation-PN13-vers-FHIR-AnalysePharma.html",
        "title" : "Tranformation d'un message PN13 compte-rendu d'analyse pharmaceutique en FHIR",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "PN13-exemples-AnalysePharma-Intro.html"
        }],
        "nameUrl" : "PN13-exemples-AnalysePharma-Intro.html",
        "title" : "Exemples PN13 de CR d'analyse pharmaceutique - Introduction",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "PN13-prescription-pour-exemple-analyse-pharma.html"
        }],
        "nameUrl" : "PN13-prescription-pour-exemple-analyse-pharma.html",
        "title" : "Prescription initale PN13 pour exemples de resultats d'analyse pharmaceutique",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "PN13-validation-pharma-sans-commentaire.html"
        }],
        "nameUrl" : "PN13-validation-pharma-sans-commentaire.html",
        "title" : "Validation pharmaceutique PN13 sans commentaire",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "PN13-validation-pharma-avec-commentaire.html"
        }],
        "nameUrl" : "PN13-validation-pharma-avec-commentaire.html",
        "title" : "Validation pharmaceutique PN13 avec commentaire",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "PN13-validation-pharma-intervention-liee.html"
        }],
        "nameUrl" : "PN13-validation-pharma-intervention-liee.html",
        "title" : "Validation pharmaceutique PN13 et intervention liée",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "PN13-intervention-pharma-avec-commentaire.html"
        }],
        "nameUrl" : "PN13-intervention-pharma-avec-commentaire.html",
        "title" : "Intervention pharmaceutique PN13 avec commentaire",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "PN13-intervention-pharma-avec-modification.html"
        }],
        "nameUrl" : "PN13-intervention-pharma-avec-modification.html",
        "title" : "Intervention pharmaceutique PN13 avec proposition de modification",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "PN13-intervention-pharma-avec-substitution.html"
        }],
        "nameUrl" : "PN13-intervention-pharma-avec-substitution.html",
        "title" : "Intervention pharmaceutique PN13 avec proposition de substitution",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "downloads.html"
        }],
        "nameUrl" : "downloads.html",
        "title" : "Téléchargements et usages",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "suivitravaux.html"
        }],
        "nameUrl" : "suivitravaux.html",
        "title" : "Historique des travaux",
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : "path-resource",
      "value" : "input/capabilities"
    },
    {
      "code" : "path-resource",
      "value" : "input/examples"
    },
    {
      "code" : "path-resource",
      "value" : "input/extensions"
    },
    {
      "code" : "path-resource",
      "value" : "input/models"
    },
    {
      "code" : "path-resource",
      "value" : "input/operations"
    },
    {
      "code" : "path-resource",
      "value" : "input/profiles"
    },
    {
      "code" : "path-resource",
      "value" : "input/resources"
    },
    {
      "code" : "path-resource",
      "value" : "input/vocabulary"
    },
    {
      "code" : "path-resource",
      "value" : "input/maps"
    },
    {
      "code" : "path-resource",
      "value" : "input/testing"
    },
    {
      "code" : "path-resource",
      "value" : "input/history"
    },
    {
      "code" : "path-resource",
      "value" : "fsh-generated/resources"
    },
    {
      "code" : "path-pages",
      "value" : "template/config"
    },
    {
      "code" : "path-pages",
      "value" : "input/images"
    },
    {
      "code" : "path-tx-cache",
      "value" : "input-cache/txcache"
    }]
  }
}

```
