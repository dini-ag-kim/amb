# Metadatenprofil für Lehr-und Lernmaterialien im deutschsprachigen Raum

---

**English description**

A metadata profile based on schema.org/LRMI and SKOS for describing (Open) Educational Resources.

JSON Schema: <https://dini-ag-kim.github.io/lrmi-profile/draft/schemas/schema.json> (See also the [SkoHub Editor](https://skohub.io/editor/) which is currently built from this schema.)

 The profile will be published as a HTML spec in the near future.

---

Ein auf schema.org-/LRMI und SKOS basierendes Metadatenprofil für die Beschreibung von (Open) Educational Resources mit Fokus auf den deutschsprachigen Raum.

JSON Schema: <https://dini-ag-kim.github.io/lrmi-profile/draft/schemas/schema.json>. (Siehe auch das Webformular im [SkoHub Editor](https://skohub.io/editor/), das auf Basis des Schemas generiert wird.)

Das Schema wird im Projekt "[OERSI – OER Search Index](https://gitlab.com/oersi)" verwendet, das gemeinsam von der Technischen Informationsbibliothek Hannover (TIB) und dem Hochschulbibliothekszentrum des Landes Nordrhein-Westfalen (hbz) durchgeführt wird.
Zum Hintergrund siehe auch die Folien unter [http://slides.lobid.org/kim-ws-2020/](http://slides.lobid.org/kim-ws-2020/).

Es ist geplant, bald eine erste offizielle Version inklusive HTML-Spezifikation zu publizieren.

## Zum Entwicklungsprozess

Siehe auch die [StöberSpecs-Prozesse](https://github.com/dini-ag-kim/oer-stoeberspecs).

### Beteiligte Personen

- Adrian Pohl (hbz & KIM), [@acka47](https://github.com/acka47) ([GitLab](https://gitlab.com/acka47))
- Axel Klinger (TIB), [@axel-klinger](https://github.com/axel-klinger) ([GitLab](https://gitlab.com/axel-klinger))
- Fabian Steeg (hbz), [@fsteeg](https://github.com/fsteeg) ([GitLab](https://gitlab.com/fsteeg))
- Mirjan Hoffmann (TIB), ([GitLab](https://gitlab.com/mirjan))
- Steffen Rörtgen (GWDG), [@sroertgen](https://github.com/sroertgen)
- Tobias Bülte (hbz), [@TobiasNx](https://github.com/tobiasnx)
- *Ergänze dich selbst, wenn du Interesse hast mitzumachen*

### Tests

Schema-Tests werden gegen valide ([draft/examples/valid](https://github.com/dini-ag-kim/lrmi-profile/tree/master/draft/examples/valid)) und invalide ([draft/examples/invalid](https://github.com/dini-ag-kim/lrmi-profile/tree/master/draft/examples/invalid)) Beispiel-Dateien durchgeführt. Lokal können die Tests mit `$ bash test.sh` ausgeführt werden. Durch die inkrementelle Ergänzung von invaliden Beispielen soll das Schema stetig genauer werden, um in der Praxis die Einhaltung des Profils zu gewährleisten.
