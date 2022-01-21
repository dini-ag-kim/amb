# Allgemeines Metadatenprofil für Bildungsressourcen

---

**English description**

A schema.org/LRMI-based profile for describing learning resources.

- GitHub Repo: <https://github.com/dini-ag-kim/amb>
- draft HTML specification: <https://w3id.org/kim/amb/draft/>
- JSON Schema: <https://w3id.org/kim/amb/draft/schemas/schema.json>

---

Ein schema.org-/LRMI-basiertes Metadatenprofil für die Beschreibung von Lehr- und Lernressourcen mit Fokus auf den deutschsprachigen Raum.

- GitHub Repo: <https://github.com/dini-ag-kim/amb>
- HTML-Spezifikation: <https://w3id.org/kim/amb/draft/>
- JSON Schema: <https://w3id.org/kim/amb/draft/schemas/schema.json>.

### Status

Entwurf

## Zum Entwicklungsprozess

Siehe auch die [StöberSpecs-Prozesse](https://github.com/dini-ag-kim/oer-stoeberspecs).

### Beteiligte Personen

- Adrian Pohl (hbz & KIM), [@acka47](https://github.com/acka47) ([GitLab](https://gitlab.com/acka47))
- Axel Klinger (TIB), [@axel-klinger](https://github.com/axel-klinger) ([GitLab](https://gitlab.com/axel-klinger)
- Fabian Steeg (hbz), [@fsteeg](https://github.com/fsteeg) ([GitLab](https://gitlab.com/fsteeg))
- Mirjan Hoffmann (TIB), [@mirjan-hoffmann](https://github.com/mirjan-hoffmann), ([GitLab](https://gitlab.com/mirjan))
- Steffen Roertgen (GWDG), [@sroertgen](https://github.com/sroertgen)
- Tobias Bülte (hbz), [@TobiasNx](https://github.com/TobiasNx) ([GitLab](https://gitlab.com/TobiasNx))
- _Ergänze dich selbst, wenn du Interesse hast mitzumachen_

### Lokales Setup

#### Ansicht der HTML-Spezifikation im Browser

Um die `index.html`-Datei lokal editieren und anzeigen zu können, klone das Repo und wechsle in das `amb`-Verzeichnis:

`git clone git@github.com:dini-ag-kim/amb.git ; cd amb`

Lasse einen Server im `amb`-Verzeichnis laufen:

`python3 -m http.server`

Dann lässt sich die Spezifikation im Web-Browser anschauen unter [http://localhost:8000](http://localhost:8000).

#### Tests

Schema-Tests werden gegen valide ([draft/examples/valid](https://github.com/dini-ag-kim/amb/tree/master/draft/examples/valid)) und invalide ([draft/examples/invalid](https://github.com/dini-ag-kim/amb/tree/master/draft/examples/invalid)) Beispiel-Dateien durchgeführt. Lokal können die Tests mit `$ bash test.sh` ausgeführt werden. Durch die inkrementelle Ergänzung von invaliden Beispielen soll das Schema stetig genauer werden, um in der Praxis die Einhaltung des Profils zu gewährleisten.

Um die Tests laufen lassen zu können, müssen die NPM Packete [`ajv-cli`](https://www.npmjs.com/package/ajv-cli) und [`ajv-formats`](https://www.npmjs.com/package/ajv-formats) installiert sein:

```
npm install -g ajv-cli
npm install -g ajv-formats
```

### Weiterführende Informationen

- ["Entwicklung eines Profils für OER-Metadaten mit JSON Schema & SkoHub"](http://slides.lobid.org/kim-ws-2020/), Adrian Pohl. Präsentation beim DINI-KIM-Workshop 2020, WWW.
