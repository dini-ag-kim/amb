## Einführung

Metadaten sind beschreibende Daten, das Auffinden von relevanten Wissensressourcen erleichtern sollen. Metadaten für Bildungsressourcen sollen das Finden und den Austausch von im Web verfügbaren Lehr- und Lernressourcen erleichtern. 

Es existieren bereits eine Menge unterschiedlicher Metadatenschemas für die  Beschreibung von Webressourcen, prominente Beispiele sind [[!DC-Terms]] oder [[!schema.org]]. Diese Schemas sind oft sehr allgemein gehalten, damit sie von einer Vielzahl von Angeboten sinnvoll nutzbar sind. Community- oder anwendungsspezifische Konkretisierungen, Erweiterungen oder auch Kombinationen von Metadatenschemas werden in sogenannten Metadatenprofilen (Englisch "metadata profiles", häufig auch "application profiles" genannt) festgehalten.

Metadatenprofile beschreiben also die Art und Weise der Nachnutzung existierender Metadatenschemas, indem sie folgende Informationen angeben:

- Welche Properties (Metadatenfelder) und Typen aus welchen Metadatenschemas werden benutzt?
- Welche zusätzlichen Einschränkungen bei der Nutzung sind festgelegt, z.B. Pflichtfelder, Wiederholbarkeit eines Feldes, Formatvorgaben für Werte, genutzte kontrollierte Vokabulare?

### Bildungsbereiche

Diese Spezifikation des Profils ist so allgemein gehalten, dass sie sowohl den Schul- als auch den Hochschulbereich abdeckt. Bei Unterschiede in beiden Bildungsbereichen (fachliche Zuordnung, Ressourcentyp) wird auf bereichsspezifische Best Practices verwiesen.

### Basis-Metadatenschemas

Dieses Profil baut hauptsächlich auf [[!schema.org]] auf und nutzt eine Untermenge von Typen und Properties von https://schema.org/CreativeWork. Viele der hier genutzten Elemente wurden durch die Learning Resource Metadata Intitiative in [[!schema.org]] ergänzt.

Zudem verlangt das Profil die Nutzung kontrollierter Vokabulare, die [[!SKOS]]-konform veröffentlicht wurden, weshalb auch einige wenige SKOS-Properties enthalten sind. 

### Beziehung zu HS-OER-LOM

Mit diesem Metadatenprofil veröffentlicht das Kompetenzzentrum Interoperable Metadaten (KIM) eine zweite Spezifikation zur Auszeichnung von Lehr- und Lernressourcen mit Metadaten. Mit [[!HS-OER-LOM]] wurde Anfang 2020 bereits ein LOM-basiertes Metadatenprofil veröffentlicht, das auf den Hochschulbereich zugeschnitten ist.

Die Profile unterscheiden sich in folgenden Hinsichten:

|   |   HS-OER-LOM    |   LRMI-Profil    |
|  ---  |  ---  |  ---  |
| Quell-Schema  | LOM  | schema.org  |
| Format  |  XML  |  JSON-LD |
| Linked-Data-kompatibel  |  nein  |  ja  |
| Bildungsbereich  |  Hochschule  |  Schule & Hochschule  |

Beide Profile nutzen dieselben Werte für die Ausweisung des Ressourcentyps und die Zuweisung einer Ressource zu einem Fach. Die Werte kommen aus kontrollierten Vokabularen, die ebenfalls von KIM bereitgestellt werden: die [[!Hochschulfächersystematik]] und das Ressourcentypen-Vokabular [[!HCRT]]. Damit wird die Metadatenprofile weitestgehend interoperabel sein.