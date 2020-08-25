# LRMI-Profil für Hochschul-OER im deutschsprachigen Raum

---

**English description**

A schema.org/LRMI-based profile for describing OER developed and published as JSON Schema: https://dini-ag-kim.github.io/lrmi-profile/draft/schemas/schema.json. This currently is the default schema for [SkoHub Editor](https://skohub.io/editor/). The profile might be published as a HTML spec in the future.

---

Ein schema.org-/LRMI-basiertes Metadatenprofil für die Beschreibung von OER mit Fokus auf den deutschsprachigen Raum, zunächst entwickelt als JSON Schema: https://dini-ag-kim.github.io/lrmi-profile/draft/schemas/schema.json. Es ist das Default-Schema für das Webformular im [SkoHub Editor](https://skohub.io/editor/). 

Das Schema wird im Projekt "[OERSI – OER Search Index](https://gitlab.com/oersi)" verwendet, das gemeinsam von der Technischen Informationsbibliothek Hannover (TIB) und dem Hochschulbibliothekszentrum des Landes Nordrhein-Westfalen (hbz) durchgeführt wird.
Zum Hintergrund siehe auch die Folien unter [http://slides.lobid.org/kim-ws-2020/](http://slides.lobid.org/kim-ws-2020/).

Es ist geplant, eine HTML-Spezifikation zu ergänzen, wenn das Schema in einer ersten stabilen Version publiziert wurde.

## Zum Entwicklungsprozess

Siehe auch die [StöberSpecs-Prozesse](https://github.com/dini-ag-kim/oer-stoeberspecs), die vor allem bei der Entwicklung der HTML-Spezifikation eine Rolle spielen. In diesem Projekt wird zunächst das JSON Schema entwickelt.

### Beteiligte Personen

- Adrian Pohl (hbz & KIM), [@acka47](https://github.com/acka47) ([GitLab](https://gitlab.com/acka47))
- Axel Klinger (TIB), [@axel-klinger](https://github.com/axel-klinger) ([GitLab](https://gitlab.com/axel-klinger))
- Fabian Steeg (hbz), [@fsteeg](https://github.com/fsteeg) ([GitLab](https://gitlab.com/fsteeg))
- Mirjan Hoffmann (TIB), ([GitLab](https://gitlab.com/mirjan))
- *Ergänze dich selbst, wenn du Interesse hast mitzumachen*

### Tests

Schema-Tests werden gegen valide ([draft/examples/valid](https://github.com/dini-ag-kim/lrmi-profile/tree/master/draft/examples/valid)) und invalide ([draft/examples/invalid](https://github.com/dini-ag-kim/lrmi-profile/tree/master/draft/examples/invalid)) Beispiel-Dateien durchgeführt. Lokal können die Tests mit `$ bash test.sh` ausgeführt werden. Durch die inkrementelle Ergänzung von invaliden Beispielen soll das Schema stetig genauer werden, um in der Praxis die Einhaltung des Profils zu gewährleisten.
