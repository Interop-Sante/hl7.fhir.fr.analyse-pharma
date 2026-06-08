
### Introduction

{% if site.data.info.releaselabel == 'ci-build' %}
  <div style="width: 65%">
      <blockquote class="stu-note">
      <p>
      <b>Attention !</b> Cet Implementation Guide n'est pas la version courante. La version courante sera accessible via l'URL canonique (https://hl7.fr/ig/fhir/analyse-pharma) lorsque celui-ci sera publié.
      </p>
      </blockquote>
  </div>
{% endif %}

Ce guide d'implémentation (IG) a pour vocation à spécifier les flux d'information autour de l'analyse pharmaceutique pour un patient dans un contexte hospitalier dans un premier temps.

1. [L'analyse pharmaceutique](analyse-Intro.html)


Ce domaine est pris en charge par le GT Pharmacie d'HL7 France au sein de l'association [Interop’Santé](https://www.interopsante.org/). L'historique des versions et des travaux est détaillé dans la page de [suivi des travaux](suivitravaux.html).

Cet IG est en développement continu. Certaines sections n’ont pas encore été complètement développées dans cette version. Ces sections sont néanmoins identifiées pour référence.

L'IG intègre également une partie indiquant [comment passer de flux PN13 à des ressources FHIR](transformation-PN13-vers-FHIR-AnalysePharma.html) et inversement.

#### Dépendances

{% include dependency-table.xhtml %}

#### Propriété intellectuelle

{% include ip-statements.xhtml %}
