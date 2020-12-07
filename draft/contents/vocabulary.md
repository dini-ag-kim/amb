## Vokabular

Als Vokabular für eine Visitenkarte dienen [[!schema.org]] und [[!LRMI]]. Alle Einträge können auf standardisierte Typen und Properties abgebildet werden.

Im Folgenden wird die Struktur der Visitenkarte beschrieben. Nebst einer Kurzbeschreibung wird angegeben, ob der Wert eine Pflichtangabe ist und um welchen Typ es sich handelt. Wenn erforderlich wird der Wertebereich festgelegt und kurze Beispiele gegeben.

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

Die URL, durch den der Service identifiziert wird. Das ist in der Regel die Homepage. Auf dieser URL MUSS die Visitenkarte abrufbar sein.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>ja</dd>
    <dt>Typ</dt>
    <dd>`String` (URL)</dd>
</dl>

</section>

<section data-dfn-for="type">

### <dfn>type</dfn>

Art der Webseite. MUSS auf `https://schema.org/WebSite` und `https://schema.org/Service` gesetzt werden.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>ja</dd>
    <dt>Typ</dt>
    <dd>`String[]` (URL)</dd>
    <dt>Werte</dt>
    <dd>`https://schema.org/WebSite` und `https://schema.org/Service`</dd>
</dl>

</section>

<section data-dfn-for="name">

### <dfn>name</dfn>

Name des Dienstes.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>ja</dd>
    <dt>Typ</dt>
    <dd>`String`</dd>
</dl>

</section>

<section data-dfn-for="image">

### <dfn>image</dfn>

Icon des Dienstes. KANN genutzt werden, um beispielsweise Suchergebnisse zu kennzeichnen.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>nein</dd>
    <dt>Typ</dt>
    <dd>`String` (URL)</dd>
    <dt>Werte</dt>
    <dd>Dateiformat: `svg` oder `png`<br>Größe: 64x64px</dd>
</dl>

</section>

<section data-dfn-for="logo">

### <dfn>logo</dfn>

Logo des Dienstes.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>nein</dd>
    <dt>Typ</dt>
    <dd>`String` (URL)</dd>
</dl>

</section>

<section data-dfn-for="inLanguage">

### <dfn>inLanguage</dfn>

Sprache(n) des Hauptangebotes. MUSS den Sprachcodes gemäß [[!BCP47]] entsprechen.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>nein</dd>
    <dt>Typ</dt>
    <dd>`String[]`</dd>
    <dt>Werte</dt>
    <dd>[[!BCP47]]</dd>
</dl>

</section>

<section data-dfn-for="description">

### <dfn>description</dfn>

Beschreibung des Dienstes.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>nein</dd>
    <dt>Typ</dt>
    <dd>`String`</dd>
</dl>

</section>

<section data-dfn-for="serviceType">

### <dfn>serviceType</dfn>

Art des Services. KANN einen `Service`-Subtyp von [[schema.org]] enthalten. Die Angabe eigener Werte ist zulässig, ein kontrolliertes Vokabular wird angestrebt.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>ja</dd>
    <dt>Typ</dt>
    <dd>`String[]`</dd>
    <dt>Werte</dt>
    <dd><a href="http://schema.org/Service#subtypes">Subtyp von http://schema.org/Service</a>, `Repository`, `Referatory`, `Wiki`, `LMS` oder andere</dd>
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

<section data-dfn-for="about">

### <dfn>about</dfn>

Fach/Thema der Inhalte. KANN einen `Thing`-Subtyp von [[schema.org]] enthalten.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>nein</dd>
    <dt>Typ</dt>
    <dd>`String[]` (URI)</dd>
    <dt>Werte</dt>
    <dd><a href="http://schema.org/Thing#subtypes">Subtyp von http://schema.org/Thing</a> oder andere</dd>
</dl>

</section>

<section data-dfn-for="isAccessibleForFree">

### <dfn>isAccessibleForFree</dfn>

Sind Inhalte oder Dienste frei (ohne Authentifizierung) verfügbar?

<dl>
    <dt>Pflichtfeld</dt>
    <dd>nein</dd>
    <dt>Typ</dt>
    <dd>`Boolean`</dd>
</dl>

</section>

<section data-dfn-for="provider">

### <dfn>provider</dfn>

Anbieter des Dienstes. MUSS ein oder mehrere JSON-Objekte enthalten, die mindestens `type` und `name` Properties aufweisen. KANN weitere Properties enthalten, z. B. `email`, `location`, `url`.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>ja</dd>
    <dt>Typ</dd>
    <dd>`Object[]`</dd>
    <dt>Werte</dt>
    <dd>JSON-Objekt mit Properties `type` und `name`</dd>
</dl>

</section>

<section data-dfn-for="startDate">

### <dfn>startDate</dfn>

Launch-Datum des Dienstes. MUSS einem Datum gemäß [[!ISO8601]] entsprechen.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>nein</dd>
    <dt>Typ</dt>
    <dd>`Date`</dd>
    <dt>Werte</dt>
    <dd>[[!ISO8601]]</dd>
</dl>

</section>

<section data-dfn-for="availableChannel">

### <dfn>availableChannel</dfn>

Services, die angeboten werden. MUSS ein oder mehrere JSON-Objekte enthalten, die `ServiceChannel` und `WebAPI` gemäß [[!schema.org]] beschreiben.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>ja</dd>
    <dt>Typ</dt>
    <dd>`Object[]`</dd>
    <dt>Werte</dt>
    <dd>Objekt vom Typ <a href="https://schema.org/ServiceChannel">ServiceChannel</a> und <a href="https://schema.org/WebAPI">WebAPI</a></dd>
</dl>

</section>

<section data-dfn-for="schemaVersion">

### <dfn>schemaVersion</dfn>

Version des Schemas.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>ja</dd>
    <dt>Typ</dt>
    <dd>`String`</dd>
</dl>

</section>

<section data-dfn-for="dateModified">

### <dfn>dateModified</dfn>

Letztes Änderungsdatum der Visitenkarte. MUSS einem Datum gemäß [[!ISO8601]] entsprechen.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>ja</dd>
    <dt>Typ</dt>
    <dd>`Date`</dd>
    <dt>Werte</dt>
    <dd>[[!ISO8601]]</dd>
</dl>

</section>

<section data-dfn-for="license">

### <dfn>license</dfn>

Lizenz(en) der angebotenen Inhalte.

<dl>
    <dt>Pflichtfeld</dt>
    <dd>nein</dd>
    <dt>Date Type</dt>
    <dd>`String[]` (URL)</dd>
</dl>

</section>

<section data-dfn-for="sameAs">

### <dfn>sameAs</dfn>

Zugehörige Webseiten (GitHub, Docker, ...).

<dl>
    <dt>Pflichtfeld</dt>
    <dd>nein</dd>
    <dt>Typ</dt>
    <dd>`String[]` (URL)</dd>
</dl>

</section>
