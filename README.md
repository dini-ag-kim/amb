# Metadatenprofil für Lehr-und Lernmaterialien im deutschsprachigen Raum

---

**English description**

A schema.org/LRMI-based profile for describing OER developed and published as JSON Schema: <https://dini-ag-kim.github.io/lrmi-profile/draft/schemas/schema.json>. This is currently the default schema for [SkoHub Editor](https://skohub.io/editor/). An HTML specification is in development, see [draft](https://w3id.org/kim/lrmi-profile/draft/).

---

Ein schema.org-/LRMI-basiertes Metadatenprofil für die Beschreibung von OER mit Fokus auf den deutschsprachigen Raum, zunächst entwickelt als JSON Schema: <https://dini-ag-kim.github.io/lrmi-profile/draft/schemas/schema.json>. Es ist zur Zeit das Default-Schema für das Webformular im [SkoHub Editor](https://skohub.io/editor/). Eine HTML-Spezifikation ist in Entwicklung, siehe [draft](https://w3id.org/kim/lrmi-profile/draft/).

## Zum Entwicklungsprozess

Siehe auch die [StöberSpecs-Prozesse](https://github.com/dini-ag-kim/oer-stoeberspecs).

### Beteiligte Personen

- Adrian Pohl (hbz & KIM), [@acka47](https://github.com/acka47) ([GitLab](https://gitlab.com/acka47))
- Axel Klinger (TIB), [@axel-klinger](https://github.com/axel-klinger) ([GitLab](https://gitlab.com/axel-klinger)
- Fabian Steeg (hbz), [@fsteeg](https://github.com/fsteeg) ([GitLab](https://gitlab.com/fsteeg))
- Mirjan Hoffmann (TIB), [@mirjan-hoffmann](https://github.com/mirjan-hoffmann), ([GitLab](https://gitlab.com/mirjan))
- Steffen Roertgen (GWDG), [@sroertgen](https://github.com/sroertgen)
- Tobias Bülte (hbz), [@TobiasNx](https://github.com/TobiasNx) ([GitLab](https://gitlab.com/TobiasNx))
- *Ergänze dich selbst, wenn du Interesse hast mitzumachen*

### Lokales Setup

#### Ansicht der HTML-Spezifikation im Browser


Um die `index.html`-Datei lokal editieren und anzeigen zu können, klone das Repo und wechsle in das `lrmi-profile`-Verzeichnis:

`git clone git@github.com:dini-ag-kim/lrmi-profile.git ; cd lrmi-profile`

Lasse einen Server im `lrmi-profile`-Verzeichnis laufen (for [`data-include`](https://github.com/w3c/respec/wiki/ReSpec-Editor's-Guide#inclusions--transformations) support):

`python3 -m http.server`

Dann lässt sich die Spezifikation im Web-Browser anschauen unter [http://localhost:8000](http://localhost:8000).

#### Tests

Schema-Tests werden gegen valide ([draft/examples/valid](https://github.com/dini-ag-kim/lrmi-profile/tree/master/draft/examples/valid)) und invalide ([draft/examples/invalid](https://github.com/dini-ag-kim/lrmi-profile/tree/master/draft/examples/invalid)) Beispiel-Dateien durchgeführt. Lokal können die Tests mit `$ bash test.sh` ausgeführt werden. Durch die inkrementelle Ergänzung von invaliden Beispielen soll das Schema stetig genauer werden, um in der Praxis die Einhaltung des Profils zu gewährleisten.

### Weiterführende Informationen

- ["Entwicklung eines Profils für OER-Metadaten mit JSON Schema & SkoHub"](http://slides.lobid.org/kim-ws-2020/), Adrian Pohl. Präsentation beim DINI-KIM-Workshop 2020, WWW.
