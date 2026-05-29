# Artifacts Summary - Guide d'implémentation de l'analyse pharmaceutique v0.1.0-ballot

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [Résultat d'analyse pharmaceutique](StructureDefinition-fr-analyse-pharmaceutique-logical.md) | Structure du résultat d’analyse pharmaceutique (validation ou intervention pharmacetique) |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [FR Pharmaceutical Analysis Result](StructureDefinition-fr-inpatient-pharmaceutical-analysis-result.md) | French Pharmaceutical Analysis Result profile |
| [FR Pharmaceutical Intervention Suggestion](StructureDefinition-fr-inpatient-pharmaceutical-intervention-suggestion.md) | Profile de proposition d’évolution de ligne de prescritpion dans le cadre d’une intervention pharmaceutique |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Jeu de valeurs Interop'Santé - Codes de devenir de l'intervention pharmaceutique](ValueSet-fr-pharmaceutical-intervention-devenir-code-value-set.md) | Codes représentant le devenir de l’intervention pharmaceutique |
| [Jeu de valeurs Interop'Santé - Codes de résultat d'analyse pharmaceutique](ValueSet-fr-pharmaceutical-analysis-perfomer-type-value-set.md) | Codes représentant le type de résultat de l’analyse pharmaceutique |
| [Jeu de valeurs Interop'Santé - Codes de résultat d'analyse pharmaceutique](ValueSet-fr-pharmaceutical-analysis-result-code-value-set.md) | Codes représentant le type de résultat de l’analyse pharmaceutique |
| [Jeu de valeurs Interop'Santé - Codes du problème identifié dans l'intervention pharmaceutique](ValueSet-fr-pharmaceutical-intervention-problem-code-value-set.md) | Codes représentant le problème identifié dans l’intervention pharmaceutique |
| [Jeu de valeurs Interop'Santé - Codes du type d'intervention pharmaceutique](ValueSet-fr-pharmaceutical-intervention-type-code-value-set.md) | Codes représentant le type d’intervention pharmaceutique |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [code system d'Interop'Santé - Codes de devenir de l'intervention pharmaceutique](CodeSystem-fr-pharmaceutical-intervention-devenir-code.md) | Le système de codage pour le typage du devenir l’intervention pharmaceutique. |
| [code system d'Interop'Santé - Codes de résultat d'analyse pharmaceutique](CodeSystem-fr-pharmaceutical-analysis-result-code.md) | Le système de codage pour le typage du résultat d’analyse pharmaceutique. |
| [code system d'Interop'Santé - Codes du problème identifié dans l'intervention pharmaceutique](CodeSystem-fr-pharmaceutical-intervention-problem-code.md) | Le système de codage pour le typage du problème identifié dans l’intervention pharmaceutique. |
| [code system d'Interop'Santé - Codes du type d'intervention pharmaceutique](CodeSystem-fr-pharmaceutical-intervention-type-code.md) | Le système de codage pour le typage de l’intervention pharmaceutique. |

### Terminology: Concept Maps 

These define transformations to convert between codes by systems conforming with this implementation guide.

| | |
| :--- | :--- |
| [Conversion PN13 vers FHIR pour le résultat d'une analyse pharmaceutique de type intervention pharmaceutique sans proposition](ConceptMap-PN13-FHIR-analpharm-interv-sans-prop-conceptmap.md) | ConceptMap pour la conversion PN13 vers FHIR d’un résultat d’une analyse pharmaceutique de type intervention pharmaceutique sans proposition |
| [Conversion PN13 vers FHIR pour le résultat d'une analyse pharmaceutiquede type intervention pharmaceutique avec proposition](ConceptMap-PN13-FHIR-analpharm-interv-avec-prop-conceptmap.md) | ConceptMap pour la conversion PN13 vers FHIR d’un résultat d’une analyse pharmaceutique de type intervention pharmaceutique avec proposition |
| [Conversion PN13 vers FHIR pour le résultat d'une analyse pharmaceutiquede type validation](ConceptMap-PN13-FHIR-analpharm-val-conceptmap.md) | ConceptMap pour la conversion PN13 vers FHIR d’un résultat d’une analyse pharmaceutique de type validation |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Analyse-Intervention-Acceptee](Task-Analyse-Intervention-Acceptee.md) | Acceptation de l’arrêt de paracétamol proposé par l’intervention pharmaceutique |
| [Analyse-Intervention-Commentaire-Trad-PN13-FHIR](Task-Analyse-Intervention-Commentaire-Trad-PN13-FHIR.md) | Intervention pharmaceutique avec commentaire pour exemple traduction PN13-FHIR de resultats d’analyse pharmaceutique |
| [Analyse-Intervention-Liee-Validation-Trad-PN13-FHIR](Task-Analyse-Intervention-Liee-Validation-Trad-PN13-FHIR.md) | Intervention pharmaceutique associée à une validation pour exemple traduction PN13-FHIR de resultats d’analyse pharmaceutique |
| [Analyse-Intervention-NonAcceptee](Task-Analyse-Intervention-NonAcceptee.md) | Validation d’un dosage dont l’intervention pharmaceutique demandait confirmation |
| [Analyse-Intervention-Proposition-Trad-PN13-FHIR](Task-Analyse-Intervention-Proposition-Trad-PN13-FHIR.md) | Intervention pharmaceutique avec proposition pour exemple traduction PN13-FHIR de resultats d’analyse pharmaceutique |
| [Analyse-Intervention-Substitution-Trad-PN13-FHIR](Task-Analyse-Intervention-Substitution-Trad-PN13-FHIR.md) | Intervention pharmaceutique avec proposition de substitution pour exemple traduction PN13-FHIR de resultats d’analyse pharmaceutique |
| [Analyse-Intervention-Type1-DOSTINEX](Task-Analyse-Intervention-Type1-DOSTINEX.md) | Intervention pharmaceutique Type: 1 Ajout (prescription nouvelle) - Problème: 9 Traitement non reçu |
| [Analyse-Intervention-Type1-MACROGOL](Task-Analyse-Intervention-Type1-MACROGOL.md) | Intervention pharmaceutique Type: 1 Ajout (prescription nouvelle) - Problème: 7 Effet indésirable |
| [Analyse-Intervention-Type1-METFORMINE](Task-Analyse-Intervention-Type1-METFORMINE.md) | Intervention pharmaceutique Type: 1 Ajout (prescription nouvelle) - Problème: 2 Indication non traitée |
| [Analyse-Intervention-Type2-Arret-Paracetamol](Task-Analyse-Intervention-Type2-Arret-Paracetamol.md) | Intervention pharmaceutique Type 2: Arrêt - Problème 5: Médicament non indiqué |
| [Analyse-Intervention-Type3-Demande-Substitution-NEFOPAM](Task-Analyse-Intervention-Type3-Demande-Substitution-NEFOPAM.md) | Intervention pharmaceutique Type: 3 Substitution/Echange - Problème: 6.3 Interaction - Association déconseillée |
| [Analyse-Intervention-Type3-ELIQUIS](Task-Analyse-Intervention-Type3-ELIQUIS.md) | Intervention pharmaceutique Type: 7 Adaptation posologique - Problème: 4 Surdosage |
| [Analyse-Intervention-Type3-ESOMEPRAZOLE](Task-Analyse-Intervention-Type3-ESOMEPRAZOLE.md) | Intervention pharmaceutique Type: 3 Substitution/Echange - Problème: 1 Non conformité aux référentiels |
| [Analyse-Intervention-Type3-Remplacement1pour2-INEGY](Task-Analyse-Intervention-Type3-Remplacement1pour2-INEGY.md) | Intervention pharmaceutique Type: 3 Substitution/Echange - Problème: 1 Non conformité aux référentiels |
| [Analyse-Intervention-Type3-Remplacement2pour1-COTAREG](Task-Analyse-Intervention-Type3-Remplacement2pour1-COTAREG.md) | Intervention pharmaceutique Type: 3 Substitution/Echange - Problème: 1 Non conformité aux référentiels |
| [Analyse-Intervention-Type4-CETAFEN-INJ](Task-Analyse-Intervention-Type4-CETAFEN-INJ.md) | Intervention pharmaceutique Type: 4 Choix de la voie d’administration - Problème: 8 Voie/administration inappropriée |
| [Analyse-Intervention-Type5-DOSTINEX](Task-Analyse-Intervention-Type5-DOSTINEX.md) | Intervention pharmaceutique Type: 5 Suivi thérapeutique - Problème: 7 Effet indésirable |
| [Analyse-Intervention-Type5-INNOHEP](Task-Analyse-Intervention-Type5-INNOHEP.md) | Intervention pharmaceutique Type: 5 Suivi thérapeutique - Problème: 10 Monitorage à suivre |
| [Analyse-Intervention-Type6-CALCIDOSE](Task-Analyse-Intervention-Type6-CALCIDOSE.md) | Intervention pharmaceutique Type: 6 Optimisation modalités d’administration - Problème: 6.2 Interaction - Précaution d’emploi |
| [Analyse-Intervention-Type6-LOXAPAC](Task-Analyse-Intervention-Type6-LOXAPAC.md) | Intervention pharmaceutique Type: 6 Optimisation modalités d’administration - Problème: 8 Voie/administration inappropriée |
| [Analyse-Intervention-Type7-BINOCRIT](Task-Analyse-Intervention-Type7-BINOCRIT.md) | Intervention pharmaceutique Type: 7 Adaptation posologique - Problème: 3 Sous-dosage |
| [Analyse-Validation-Ajout-Morphine](Task-Analyse-Validation-Ajout-Morphine.md) | Validation d’une prescription de morphine avec proposition d’ajout |
| [Analyse-Validation-Commentaire-Diazepam](Task-Analyse-Validation-Commentaire-Diazepam.md) | Validation d’une prescription de diazépam avec commentaire |
| [Analyse-Validation-Commentaire-LACRIFLUID](Task-Analyse-Validation-Commentaire-LACRIFLUID.md) | Validation d’une prescription de LACRIFLUID avec commentaire |
| [Analyse-Validation-Commentaire-Morphine](Task-Analyse-Validation-Commentaire-Morphine.md) | Validation d’une prescription de morphine avec commentaire |
| [Analyse-Validation-Commentaire-Trad-PN13-FHIR](Task-Analyse-Validation-Commentaire-Trad-PN13-FHIR.md) | Validation pharmaceutique avec commentaire pour exemple traduction PN13-FHIR de resultats d’analyse pharmaceutique |
| [Analyse-Validation-Intervention-Liee-Trad-PN13-FHIR](Task-Analyse-Validation-Intervention-Liee-Trad-PN13-FHIR.md) | Validation pharmaceutique associée à une intervention pharmaceutique pour exemple traduction PN13-FHIR de resultats d’analyse pharmaceutique |
| [Analyse-Validation-Sans-Commentaire-Trad-PN13-FHIR](Task-Analyse-Validation-Sans-Commentaire-Trad-PN13-FHIR.md) | Validation pharmaceutique sans commentaire pour exemple traduction PN13-FHIR de resultats d’analyse pharmaceutique |
| [Analyse-Validation-Simple-paracetamol](Task-Analyse-Validation-Simple-paracetamol.md) | Validation simple d’une prescription de paracétamol |
| [InLine-Analyse-Presc-BINOCRIT](MedicationRequest-InLine-Analyse-Presc-BINOCRIT.md) | Prescription de BINOCRIT pour exemple d’analyse pharmaceutique |
| [InLine-Analyse-Presc-CALCIDOSE](MedicationRequest-InLine-Analyse-Presc-CALCIDOSE.md) | Prescription de CALCIDOSE pour exemple d’analyse pharmaceutique |
| [InLine-Analyse-Presc-CELLUVISC](MedicationRequest-InLine-Analyse-Presc-CELLUVISC.md) | Prescription de CELLUVISC pour exemple d’analyse pharmaceutique |
| [InLine-Analyse-Presc-CETAFEN-CPR](MedicationRequest-InLine-Analyse-Presc-CETAFEN-CPR.md) | Prescription de CETAFEN en comprimé pour exemple d’intervention pharmaceutique |
| [InLine-Analyse-Presc-CETAFEN-INJ](MedicationRequest-InLine-Analyse-Presc-CETAFEN-INJ.md) | Prescription de CETAFEN en perfusion pour exemple d’intervention pharmaceutique |
| [InLine-Analyse-Presc-COTAREG](MedicationRequest-InLine-Analyse-Presc-COTAREG.md) | Prescription de COTAREG pour exemple d’analyse pharmaceutique |
| [InLine-Analyse-Presc-DOSTINEX](MedicationRequest-InLine-Analyse-Presc-DOSTINEX.md) | Prescription de DOSTINEX pour exemple d’analyse pharmaceutique |
| [InLine-Analyse-Presc-Diazepam](MedicationRequest-InLine-Analyse-Presc-Diazepam.md) | Prescription de Diazépam pour exemple d’analyse pharmaceutique |
| [InLine-Analyse-Presc-ELIQUIS-25](MedicationRequest-InLine-Analyse-Presc-ELIQUIS-25.md) | Prescription de ELIQUS 2,5 MG pour exemple d’analyse pharmaceutique |
| [InLine-Analyse-Presc-ELIQUIS-50](MedicationRequest-InLine-Analyse-Presc-ELIQUIS-50.md) | Prescription de ELIQUIS 5MG pour exemple d’analyse pharmaceutique |
| [InLine-Analyse-Presc-ESIDREX](MedicationRequest-InLine-Analyse-Presc-ESIDREX.md) | Prescription d’ESIDREX pour exemple d’analyse pharmaceutique |
| [InLine-Analyse-Presc-ESOMEPRAZOLE](MedicationRequest-InLine-Analyse-Presc-ESOMEPRAZOLE.md) | Prescription de ESOMEPTAZOLE pour exemple d’analyse pharmaceutique |
| [InLine-Analyse-Presc-EZETIMIBE](MedicationRequest-InLine-Analyse-Presc-EZETIMIBE.md) | Prescription de EZETIMIBE pour exemple d’analyse pharmaceutique |
| [InLine-Analyse-Presc-INEGY](MedicationRequest-InLine-Analyse-Presc-INEGY.md) | Prescription de INEGY pour exemple d’analyse pharmaceutique |
| [InLine-Analyse-Presc-INNOHEP](MedicationRequest-InLine-Analyse-Presc-INNOHEP.md) | Prescription de INNOHEP pour exemple d’analyse pharmaceutique |
| [InLine-Analyse-Presc-LACRIFLUID](MedicationRequest-InLine-Analyse-Presc-LACRIFLUID.md) | Prescription de LACRIFLUID pour exemple d’analyse pharmaceutique |
| [InLine-Analyse-Presc-LANSOPRAZOLE](MedicationRequest-InLine-Analyse-Presc-LANSOPRAZOLE.md) | Prescription de LANSOPRAZOLE pour exemple d’analyse pharmaceutique |
| [InLine-Analyse-Presc-LEVOTHYROX](MedicationRequest-InLine-Analyse-Presc-LEVOTHYROX.md) | Prescription de LACRIFLUID pour exemple d’analyse pharmaceutique |
| [InLine-Analyse-Presc-LOXAPAC](MedicationRequest-InLine-Analyse-Presc-LOXAPAC.md) | Prescription de LOXAPAC pour exemple d’analyse pharmaceutique |
| [InLine-Analyse-Presc-MACROGOL](MedicationRequest-InLine-Analyse-Presc-MACROGOL.md) | Prescription de MACROGOL pour exemple d’analyse pharmaceutique |
| [InLine-Analyse-Presc-METFORMINE](MedicationRequest-InLine-Analyse-Presc-METFORMINE.md) | Prescription de METFORMINE pour exemple d’analyse pharmaceutique |
| [InLine-Analyse-Presc-Morphine](MedicationRequest-InLine-Analyse-Presc-Morphine.md) | Prescription de Paracétamol pour exemple d’analyse pharmaceutique |
| [InLine-Analyse-Presc-NEFOPAM](MedicationRequest-InLine-Analyse-Presc-NEFOPAM.md) | Prescription de NEFOPMA pour exemple d’intervention pharmaceutique |
| [InLine-Analyse-Presc-Paracetamol](MedicationRequest-InLine-Analyse-Presc-Paracetamol.md) | Prescription de Paracétamol pour exemple de vaidation pharmaceutique |
| [InLine-Analyse-Presc-Paracetamol-Si-Douleur](MedicationRequest-InLine-Analyse-Presc-Paracetamol-Si-Douleur.md) | Prescription de Paracétamol pour exemple d’intervention pharmaceutique |
| [InLine-Analyse-Presc-SIMVASTATINE](MedicationRequest-InLine-Analyse-Presc-SIMVASTATINE.md) | Prescription de SIMVASTATINE pour exemple d’analyse pharmaceutique |
| [InLine-Analyse-Presc-TAREG](MedicationRequest-InLine-Analyse-Presc-TAREG.md) | Prescription de TAREG pour exemple d’analyse pharmaceutique |
| [InLine-DOLIPRANE](Medication-InLine-DOLIPRANE.md) | Medication DOLIPRANE® pour exemple de dispensation |
| [InLine-Inter-Arret-Paracetamol-Si-Douleur](MedicationRequest-InLine-Inter-Arret-Paracetamol-Si-Douleur.md) | Proposition d’arrêt dans le cadre d’un intervention pharmaceutique |
| [InLine-Observation-poids-Avion](Observation-InLine-Observation-poids-Avion.md) | Poids du patient pour exemples traduction PN13-FHIR de resultats d’analyse pharmaceutique |
| [InLine-Presc-EFFERALGAN](MedicationRequest-InLine-Presc-EFFERALGAN.md) | Prescription d’EFFERALGAN® pour exemple de dispensation |
| [InLine-Trad-PN13-FHIR-Analyse-Intervention-Proposition](MedicationRequest-InLine-Trad-PN13-FHIR-Analyse-Intervention-Proposition.md) | Proposition associée à intervention pharmaceutique pour exemple traduction PN13-FHIR de resultats d’analyse pharmaceutique |
| [InLine-Trad-PN13-FHIR-Analyse-Intervention-Substitution](MedicationRequest-InLine-Trad-PN13-FHIR-Analyse-Intervention-Substitution.md) | Proposition de substitution associée à intervention pharmaceutique pour exemple traduction PN13-FHIR de resultats d’analyse pharmaceutique |
| [InLine-Trad-PN13-FHIR-Analyse-Presc-Paracetamol](MedicationRequest-InLine-Trad-PN13-FHIR-Analyse-Presc-Paracetamol.md) | Prescription initale pour exemples traduction PN13-FHIR de resultats d’analyse pharmaceutique |
| [InLine-Trad-PN13-FHIR-Analyse-Validation-Proposition](MedicationRequest-InLine-Trad-PN13-FHIR-Analyse-Validation-Proposition.md) | Proposition associée à validation pharmaceutique pour exemple traduction PN13-FHIR de resultats d’analyse pharmaceutique |
| [InLine-med-EFFERALGAN](Medication-InLine-med-EFFERALGAN.md) | Medication EFFERALGAN® pour exemple de dispensation |
| [InLine-med-Paracetamol](Medication-InLine-med-Paracetamol.md) | Medication Paracétamol pour exemple de dispensation |
| [InLine-observation-taille-Avion](Observation-InLine-observation-taille-Avion.md) | Taille du patient pour exemples traduction PN13-FHIR de resultats d’analyse pharmaceutique |
| [InLine-patient-Avion](Patient-InLine-patient-Avion.md) | Patient pour exemples traduction PN13-FHIR de resultats d’analyse pharmaceutique |
| [InLine-patient-group-01](Group-InLine-patient-group-01.md) | Groupe de patient pour exemple de délivrance reglobalisée |
| [InLine-practitioner-Luiggi](Practitioner-InLine-practitioner-Luiggi.md) | Practitioner prescripteur pour exemples traduction PN13-FHIR de resultats d’analyse pharmaceutique |
| [InLine-presc-EFFERALGAN2](MedicationRequest-InLine-presc-EFFERALGAN2.md) | Prescription d’EFFERALGAN® pour exemple de dispensation |
| [InLine-presc-Paracetamol1](MedicationRequest-InLine-presc-Paracetamol1.md) | Prescription de Paracétamol pour exemple de dispensation |
| [InLine-presc-Paracetamol2](MedicationRequest-InLine-presc-Paracetamol2.md) | Prescription de Paracétamol pour exemple de dispensation |
| [MultiLine-Presc-METFORMINE-GLICLAZIDE](Bundle-MultiLine-Presc-METFORMINE-GLICLAZIDE.md) | METFORMINE® ou GLICLAZIDE® en cas d’intolérance digestive à la METFORMINE |
| [MultiLine-Presc-METHOTREXATE-LEDERFOLINE](Bundle-MultiLine-Presc-METHOTREXATE-LEDERFOLINE.md) | METHOTREX® et LEDERFOLINE® à prendre en même temps |
| [MultiLine-Presc-Sucralfate-Paracetamol](Bundle-MultiLine-Presc-Sucralfate-Paracetamol.md) | Paracetamol 2h après Sucralfate |

