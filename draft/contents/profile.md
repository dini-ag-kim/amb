## Profil

Als Basis-Metadatenschema für die Beschreibung einer Educational Resource dient [[!schema.org]].
Ergänzt wird schema.org durch [[!SKOS]] (Simple Knowledge Organization System) für die Beschreibung referenzierter Werte eines kontrollierten Vokabulars.

Im Folgenden wird die Struktur eines OER-Metadatensatzes beschrieben.
Nebst einer Kurzbeschreibung wird angegeben, ob der Wert eine Pflichtangabe ist und um welchen Typ es sich handelt.
Wenn erforderlich wird der Wertebereich festgelegt und es werden kurze Beispiele gegeben.

<section data-dfn-for="@context">

### <dfn>@context</dfn>

Die `@context`-Property enthält einen Array mit einem URI-String zur Referenzierung des [JSON-LD-Kontext](https://www.w3.org/TR/json-ld/#the-context) des Profils: `https://w3id.org/kim/lrmi-profile/draft/context.jsonld` und außerdem mit einem JSON-Objekt zur Angabe der im JSON-Dokument genutzten Sprache mittels dem JSON-LD-Keyword `@language` und einem [[?BCP47]] Sprachcode als Wert.

Für ein deutschsprachiges Metadatendokument sieht es z.B. wie folgt aus:

```json
{
  "@context": [
    "https://w3id.org/kim/lrmi-profile/draft/context.jsonld",
    {
      "@language": "de"
    }
  ],
}
```

<dl>
    <dt>Pflichtfeld</dt>
    <dd>ja</dd>
    <dt>Typ</dt>
    <dd>`array`</dd>
    <dt>Werte</dt>
    <dd>`https://w3id.org/kim/lrmi-profile/draft/context.jsonld`</dd>
    <dd>`object`</dd>
    <dt>Validierung</dt>
    <dd><a href="https://dini-ag-kim.github.io/lrmi-profile/draft/schemas/context-schema.json">JSON Schema</a></dd>
</dl>

</section>

<section data-dfn-for="id">

### <dfn>id</dfn>

Die URL, durch den die Ressource identifiziert wird.
Auf dieser URL MUSS die Ressource abrufbar sein.
Es SOLL keine URL sein, von der aus nur auf die Ressource verwiesen wird.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>ja</dd>
    <dt>Typ</dt>
    <dd>`string` (URI)</dd>
    <dt>Validierung</dt>
    <dd><a href="https://dini-ag-kim.github.io/lrmi-profile/draft/schemas/id.json">JSON Schema</a></dd>
</dl>

</section>

<section data-dfn-for="type">

### <dfn>type</dfn>

Art der Ressource. MUSS den Wert `LearningResource` enthalten. KANN weitere Werte aus den Unterklassen von `https://schema.org/CreativeWork` enthalten.


<dl>
    <dt>Pflichtfeld</dt>
    <dd>ja</dd>
    <dt>Typ</dt>
    <dd>`string[]`</dd>
    <dt>Werte</dt>
    <dd>`LearningResource` und Unterklassen von CreativeWork</dd>
    <dt>Validierung</dt>
    <dd><a href="https://dini-ag-kim.github.io/lrmi-profile/draft/schemas/type.json">JSON Schema</a></dd>
</dl>

</section>

<section data-dfn-for="name">

### <dfn>name</dfn>

Titel der Ressource.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>ja</dd>
    <dt>Typ</dt>
    <dd>`string`</dd>
    <dt>Validierung</dt>
    <dd><a href="https://dini-ag-kim.github.io/lrmi-profile/draft/schemas/name.json">JSON Schema</a></dd>
</dl>

</section>

<section data-dfn-for="creator">

### <dfn>creator</dfn>

Urheber:innen der Ressource. MUSS ein oder mehrere JSON-Objekte enthalten, die wiederum `type` und `name` Properties aufweisen MÜSSEN und `id` – mit einer URI-Referenz zu [[?ORCID]], [[?GND]], [[?Wikidata]] oder [[?ROR]] – aufweisen SOLLEN sowie weitere Properties enthalten KÖNNEN, z. B. `email`, `location`, `url`.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>nein</dd>
    <dt>Typ</dd>
    <dd>`object[]`</dd>
    <dt>Werte</dt>
    <dd>JSON-Objekt mit Properties `type` und `name`</dd>
    <dt>Validierung</dt>
    <dd><a href="https://dini-ag-kim.github.io/lrmi-profile/draft/schemas/creator.json">JSON Schema</a></dd>
</dl>

</section>

<section data-dfn-for="description">

### <dfn>contributor</dfn>

Sonstige Beitragende zu der Ressource. MUSS ein oder mehrere JSON-Objekte enthalten, die wiederum `type` und `name` Properties aufweisen MÜSSEN und `id` – mit einer URI-Referenz zu [[?ORCID]], [[?GND]], [[?Wikidata]] oder [[?ROR]] – aufweisen SOLLEN sowie weitere Properties enthalten KÖNNEN, z. B. `email`, `location`, `url`.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>nein</dd>
    <dt>Typ</dd>
    <dd>`object[]`</dd>
    <dt>Werte</dt>
    <dd>JSON-Objekt mit Properties `type` und `name`</dd>
    <dt>Validierung</dt>
    <dd><a href="https://dini-ag-kim.github.io/lrmi-profile/draft/schemas/contributor.json">JSON Schema</a></dd>
</dl>

</section>

<section data-dfn-for="description">


### <dfn>description</dfn>

Beschreibung der Ressource.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>nein</dd>
    <dt>Typ</dt>
    <dd>`string`</dd>
    <dt>Validierung</dt>
    <dd><a href="https://dini-ag-kim.github.io/lrmi-profile/draft/schemas/description.json">JSON Schema</a></dd>
</dl>

</section>

<section data-dfn-for="about">

### <dfn>about</dfn>

Fach/Thema der Inhalte.
MUSS einen Wert aus der Destatis Fächerklassifikation (https://w3id.org/kim/hochschulfaechersystematik/scheme) ODER aus der OpenEduHub-Fächersystematik für den Schulbereich (http://w3id.org/openeduhub/vocabs/discipline) enthalten.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>nein</dd>
    <dt>Typ</dt>
    <dd>`string[]` (URI)</dd>
    <dt>Werte</dt>
    <dd>Werte aus <a href="https://w3id.org/kim/hochschulfaechersystematik/scheme">Destatis Fächerklassifikation</a> oder <a href= "http://w3id.org/openeduhub/vocabs/discipline">OpenEduHub-Fächersystematik</a></dd>
    <dt>Validierung</dt>
    <dd><a href="https://dini-ag-kim.github.io/lrmi-profile/draft/schemas/about.json">JSON Schema</a></dd>
</dl>

</section>

<section data-dfn-for="keywords">

### <dfn>keywords</dfn>

Schlagworte zur Beschreibung des Inhalts der Ressource.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>nein</dd>
    <dt>Typ</dt>
    <dd>`string[]`</dd>
    <dt>Validierung</dt>
    <dd><a href="https://dini-ag-kim.github.io/lrmi-profile/draft/schemas/keywords.json">JSON Schema</a></dd>
</dl>

</section>

<section data-dfn-for="license">

### <dfn>license</dfn>

Lizenz der Ressource. Wert MUSS eine URI der entsprechenden CC-Lizenz sein.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>nein</dd>
    <dt>Typ</dt>
    <dd>`string[]` (URL entsprechend dem RegEx-Muster `^https:\/\/creativecommons.org\/(licenses|licences|publicdomain)\/.*`)</dd>
    <dt>Validierung</dt>
    <dd><a href="https://dini-ag-kim.github.io/lrmi-profile/draft/schemas/license.json">JSON Schema</a></dd>
</dl>

</section>

<section data-dfn-for="image">

### <dfn>image</dfn>

Thumbnail der Ressource.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>nein</dd>
    <dt>Typ</dt>
    <dd>`string` (URI)</dd>
    <dt>Werte</dt>
    <dt>Validierung</dt>
    <dd><a href="https://dini-ag-kim.github.io/lrmi-profile/draft/schemas/image.json">JSON Schema</a></dd>
    <dd></dd>
</dl>

</section>

<section data-dfn-for="dateCreated">

### <dfn>dateCreated</dfn>

Erscheinungsdatum des Dienstes. MUSS einem Datum gemäß [[!ISO8601]] entsprechen.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>nein</dd>
    <dt>Typ</dt>
    <dd>`Date`</dd>
    <dt>Werte</dt>
    <dd>[[!ISO8601]]</dd>
    <dt>Validierung</dt>
    <dd><a href="https://dini-ag-kim.github.io/lrmi-profile/draft/schemas/dateCreated.json">JSON Schema</a></dd>
</dl>

</section>

<section data-dfn-for="inLanguage">

### <dfn>inLanguage</dfn>

Sprache(n) der Ressource. MUSS den Sprachcodes gemäß [[!BCP47]] entsprechen.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>nein</dd>
    <dt>Typ</dt>
    <dd>`string[]`</dd>
    <dt>Werte</dt>
    <dd>[[!BCP47]]</dd>
    <dt>Validierung</dt>
    <dd><a href="https://dini-ag-kim.github.io/lrmi-profile/draft/schemas/inLanguage.json">JSON Schema</a></dd>
</dl>

</section>

<section data-dfn-for="learningResourceType">

### <dfn>learningResourceType</dfn>

Art des OER-Lernmittels. MUSS ein oder mehrere JSON-Objekte enthalten, die eine Property `id` mit einem URI aus dem Vokabluar der Hochschulcampus Ressourcentypen (https://w3id.org/kim/hcrt/) ODER den OpenEduHub Ressourcentypen (http://w3id.org/openeduhub/vocabs/learningResourceType/) als URI enthalten MÜSSEN.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>ja</dd>
    <dt>Typ</dt>
    <dd>`object[]`</dd>
    <dt>Werte</dt>
    <dd>JSON-Object mit `id`-Wert aus <a href=" https://w3id.org/kim/hcrt/">Hochschulcampus Ressourcentypen</a> oder <a href="http://w3id.org/openeduhub/vocabs/learningResourceType/">OpenEduHub Ressourcentypen</a></dd>
    <dt>Validierung</dt>
    <dd><a href="https://dini-ag-kim.github.io/lrmi-profile/draft/schemas/learningResourceType.json">JSON Schema</a></dd>
</dl>

</section>

<section data-dfn-for="provider">

### <dfn>publisher</dfn>

Die Organisation, über die die OER veröffentlicht wurde. MUSS ein oder mehrere JSON-Objekte enthalten, die mindestens `type` mit value `Organization` und `name` Properties aufweisen. KANN weitere Properties enthalten, z. B. `email`, `location`, `url`.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>ja</dd>
    <dt>Typ</dd>
    <dd>`object[]`</dd>
    <dt>Werte</dt>
    <dd>JSON-Objekt mit Properties `type` und `name`</dd>
    <dt>Validierung</dt>
    <dd><a href="https://dini-ag-kim.github.io/lrmi-profile/draft/schemas/publisher.json">JSON Schema</a></dd>
</dl>

</section>

<section data-dfn-for="audience">

### <dfn>audience</dfn>

Zielgruppe(n) des Angebotes. MUSS einer *Educational Audience Role* von [[!LRMI]] entsprechen.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>nein</dd>
    <dt>Typ</dt>
    <dd>`string[]` (URI)</dd>
    <dt>Werte</dt>
    <dd><a href="http://purl.org/dcx/lrmi-vocabs/educationalAudienceRole/">LRMI Educational Audience Roles</a></dd>
    <dt>Validierung</dt>
    <dd><a href="https://dini-ag-kim.github.io/lrmi-profile/draft/schemas/audience.json">JSON Schema</a></dd>
</dl>

</section>

<section data-dfn-for="isBasedOn">

### <dfn>isBasedOn</dfn>

Verweis auf andere Ressource, von der die beschriebene Ressource ein Derivat ist.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>nein</dd>
    <dt>Typ</dt>
    <dd>`string[]` (URI)</dd>
    <dt>Validierung</dt>
    <dd><a href="https://dini-ag-kim.github.io/lrmi-profile/draft/schemas/isBasedOn.json">JSON Schema</a></dd>
</dl>

</section>

<section data-dfn-for="isPartOf">

### <dfn>isPartOf</dfn>

Verweis auf andere Ressource(n), von der/denen die beschriebene Ressource ein Teil ist. MUSS ein oder mehrere JSON-Objekte enthalten, die `id` Property aufweisen MÜSSEN und weitere Properties enthalten KÖNNEN.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>nein</dd>
    <dt>Typ</dt>
    <dd>`object[]`</dd>
    <dt>Werte</dt>
    <dd>JSON-Objekt mit Property `id`</dd>
    <dt>Validierung</dt>
    <dd><a href="https://dini-ag-kim.github.io/lrmi-profile/draft/schemas/isPartOf.json">JSON Schema</a></dd>
</dl>

</section>

<section data-dfn-for="hasPart">

### <dfn>hasPart</dfn>

Verweis auf andere Ressource(n), die von der die beschriebene Ressource ein Teil ist/sind. MUSS ein oder mehrere JSON-Objekte enthalten, die `id` Property aufweisen MÜSSEN und weitere Properties enthalten KÖNNEN.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>nein</dd>
    <dt>Typ</dt>
    <dd>`object[]`</dd>
    <dt>Werte</dt>
    <dd>JSON-Objekt mit Property `id`</dd>
    <dt>Validierung</dt>
    <dd><a href="https://dini-ag-kim.github.io/lrmi-profile/draft/schemas/hasPart.json">JSON Schema</a></dd>
</dl>

</section>

<section data-dfn-for="mainEntityOfPage">

### <dfn>mainEntityOfPage</dfn>

In diesem Feld können die Struktur-Metadaten ausgeführt werden, welche den eingebetten Strukturkontext der bereitgestellten Metadaten erfassen:

- `id` zur Angabe der Landing-Page der Metadaten
- `provider` zur Angabe des Metadaten-Providers mit einem dazugehörigen Objekt, das `id`,`type` und `name` des Providers angibt
- `dateCreated` zur Angabe des Erstellungsdatums der Metadaten
- `dateModified` zur Angabe des Änderungsdatum der Metadaten

<dl>
    <dt>Pflichtfeld</dt>
    <dd>nein</dd>
    <dt>Typ</dt>
    <dd>`object[]` (URI)</dd>
    <dt>Validierung</dt>
    <dd><a href="https://dini-ag-kim.github.io/lrmi-profile/draft/schemas/mainEntityOfPage.json">JSON Schema</a></dd>
</dl>

</section>
