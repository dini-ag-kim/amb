## Vokabular

Als Basis-Vokabular für die Beschreibung einer Educational Resource dient [[!schema.org]]. Ergänzt wird schema.org durch SKOS (Simple Knowledge Organization System) für die Beschreibung referenzierter Werte eine kontrollierten Vokabulars.

Im Folgenden wird die Struktur eines OER-Metadatensatz beschrieben. Nebst einer Kurzbeschreibung wird angegeben, ob der Wert eine Pflichtangabe ist und um welchen Typ es sich handelt. Wenn erforderlich wird der Wertebereich festgelegt und kurze Beispiele gegeben.

<section data-dfn-for="@context">

### <dfn>@context</dfn>

Der Link zum JSON-LD-Kontext für das Dokument. MUSS auf `https://schema.org/` gesetzt werden.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>ja</dd>
    <dt>Typ</dt>
    <dd>`String` (URL)</dd>
    <dt>Werte</dt>
    <dd>`https://schema.org/`</dd>
</dl>

</section>

<section data-dfn-for="id">

### <dfn>id</dfn>

Die URL, durch den die OER-Ressource identifiziert Auf dieser URL MUSS die OER-Ressource abrufbar sein. Es SOLL nicht eine URL sein, von der aus nur auf die OER-Ressource verwiesen wird.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>ja</dd>
    <dt>Typ</dt>
    <dd>`String` (URL)</dd>
</dl>

</section>

<section data-dfn-for="type">

### <dfn>type</dfn>

Art der OER-Ressource. MUSS den Wert `LearningResource` enthalten. KANN weitere Werte aus den Unterklassen von `https://schema.org/CreativeWork` enthalten.


<dl>
    <dt>Pflichtfeld</dt>
    <dd>ja</dd>
    <dt>Typ</dt>
    <dd>`string[]`</dd>
    <dt>Werte</dt>
    <dd>`LearningResource` und Unterklassen von CreativeWork</dd>
</dl>

<section id="type-example">
<h2>Beispiel</h2>
<pre class="example" data-include="draft/examples/valid/learningResourceType.json" data-include-format="text"></pre>
</section>

</section>

<section data-dfn-for="name">

### <dfn>name</dfn>

Titel der OER-Ressource.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>ja</dd>
    <dt>Typ</dt>
    <dd>`String`</dd>
</dl>

</section>

<section data-dfn-for="creator">

### <dfn>creator</dfn>

Urheber:innen der OER-Ressource. MUSS ein oder mehrere JSON-Objekte enthalten, die mindestens `type` und `name` Properties aufweisen. KANN weitere Properties enthalten, z. B. `email`, `location`, `url`.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>ja</dd>
    <dt>Typ</dd>
    <dd>`Object[]`</dd>
    <dt>Werte</dt>
    <dd>JSON-Objekt mit Properties `type` und `name`</dd>
</dl>

</section>

<section data-dfn-for="description">

### <dfn>description</dfn>

Beschreibung der OER-Ressource.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>nein</dd>
    <dt>Typ</dt>
    <dd>`String`</dd>
</dl>

</section>

<section data-dfn-for="about">

### <dfn>about</dfn>

Fach/Thema der Inhalte. MUSS einen Wert aus der Destatis Fächerklassifikation https://w3id.org/kim/hochschulfaechersystematik/scheme ODER aus SCHULBEREICH enthalten.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>nein</dd>
    <dt>Typ</dt>
    <dd>`String[]` (URI)</dd>
    <dt>Werte</dt>
    <dd>Werte aus `https://w3id.org/kim/hochschulfaechersystematik/scheme`</dd>
</dl>

</section>

<section data-dfn-for="license">

### <dfn>license</dfn>

Lizenz der OER-Ressource. Wert MUSS URI der entsprechenden CC-Lizenz nutzen.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>nein</dd>
    <dt>Date Type</dt>
    <dd>`String[]` (URL)</dd>
</dl>

</section>

<section data-dfn-for="image">

### <dfn>image</dfn>

Thumbnail der OER-Ressource.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>nein</dd>
    <dt>Typ</dt>
    <dd>`String` (URL)</dd>
    <dt>Werte</dt>
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
</dl>

</section>

<section data-dfn-for="inLanguage">

### <dfn>inLanguage</dfn>

Sprache(n) der OER-Ressource. MUSS den Sprachcodes gemäß [[!BCP47]] entsprechen.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>nein</dd>
    <dt>Typ</dt>
    <dd>`String[]`</dd>
    <dt>Werte</dt>
    <dd>[[!BCP47]]</dd>
</dl>

</section>

<section data-dfn-for="provider">

### <dfn>publisher</dfn>

Die Organisation, über die die OER veröffentlicht wurde. MUSS ein oder mehrere JSON-Objekte enthalten, die mindestens `type` mit value 	`Organization` und `name` Properties aufweisen.  KANN weitere Properties enthalten, z. B. `email`, `location`, `url`.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>ja</dd>
    <dt>Typ</dd>
    <dd>`Object[]`</dd>
    <dt>Werte</dt>
    <dd>JSON-Objekt mit Properties `type` und `name`</dd>
</dl>

</section>

<section data-dfn-for="learningResourceType">

### <dfn>learningResourceType</dfn>

Art des OER-Lernmittels. MUSS Wert aus dem Vokabluar der Hochschulcampus Ressourcentypen sein (https://w3id.org/kim/hcrt/)

<dl>
    <dt>Pflichtfeld</dt>
    <dd>ja</dd>
    <dt>Typ</dt>
    <dd>`String[]`</dd>
    <dt>Werte</dt>
    <dd><a href=" https://w3id.org/kim/hcrt/">Wert aus Hochschulcampus Ressourcentypen</a></dd>
</dl>

</section>

<section data-dfn-for="audience">

### <dfn>audience</dfn>

Zielgruppe(n) des Angebotes. MUSS einer *Educational Audience Role* von [[!LRMI]] entsprechen.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>nein</dd>
    <dt>Typ</dt>
    <dd>`String[]` (URI)</dd>
    <dt>Werte</dt>
    <dd><a href="http://purl.org/dcx/lrmi-vocabs/educationalAudienceRole/">LRMI Educational Audience Roles</a></dd>
</dl>

</section>

<section data-dfn-for="isBasedOn">

### <dfn>isBasedOn</dfn>

Verweis auf andere Ressource, von die beschriebene Ressource ein Derivat ist.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>nein</dd>
    <dt>Typ</dt>
    <dd>`String[]` (URL)</dd>
</dl>

</section>

<section data-dfn-for="mainEntityOfPage">

### <dfn>mainEntityOfPage</dfn>

In diesem Feld können die Struktur-Metadaten ausgeführt werden, welche den eingebetten Strukturkontext der bereitgestellten Metadaten erfasst, wie `id` der Landing-Page der Metadaten, Angaben zum Metadaten-Provider `provider`, wie `id`,`type` und `name`, Erstellungsdatum der Metadaten `dateCreated` und Änderungsdatum der Metadaten `dateModified

<dl>
    <dt>Pflichtfeld</dt>
    <dd>nein</dd>
    <dt>Typ</dt>
    <dd>`Object[]` (URL)</dd>
</dl>

<section id="mainEntityOfPage-example">
<h2>Beispiel</h2>
<pre class="example" data-include="examples/valid/mainEntityOf.json" data-include-format="text"></pre>
</section>

</section>

<section data-dfn-for="keyword">

### <dfn>keyword</dfn>

Schlagworte zur Beschreibung des Inhalts der OER-Ressource.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>nein</dd>
    <dt>Typ</dt>
    <dd>`String[]` (URL)</dd>
</dl>

</section>