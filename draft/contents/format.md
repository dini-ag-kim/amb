## Format

Die Metadaten einer OER-Ressource werden durch ein JSON-Objekt repräsentiert. Neben allgemeinen Informationen zur Applikation werden auch die speziellen Services mitgeteilt, die extern nutzbar sind (z. B. Suche, Harvesting, Tools).

Dieses JSON-Objekt MUSS einige obligatorische und KANN zusätzlich optionale Schlüssel/Werte-Paare des <a href="#vocabulary">Vokabulars</a> beinhalten.

Der Metadaten-Satz einer OER-Ressource MUSS im JSON-LD-Format bereitgestellt werden, entweder als eigenes JSON-Dokument oder eingebettet in die Startseite. Die URL, hinter der sich das Dokument befindet, kann dann abgefragt und die resultierenden Inhalte ausgewertet werden.

Werden die Metadaten als JSON-Dokument angeboten, MUSS der `Content-Type` Header auf `application/ld+json` gesetzt werden:

```
Content-Type: application/ld+json
```

Die Datensatz MUSS auf eine der folgenden Arten in die Webseite eingebunden werden:

1. Ein `script` Element mit dem JSON der Visitenkarte MUSS in den `head`-Bereich der Webseite eingebettet werden:

   ```
   <script type="application/ld+json">[...]</script>
   ```

ODER

2. Ein `link` Element, das das JSON-Dokument referenziert, MUSS in den `head`-Bereich der Webseite eingebettet werden:

   ```
   <link rel="meta" type="application/ld+json" href="[...]" title="Service-Description" />
   ```

ODER

3. Ein `Link` Header, der das JSON-Dokument referenziert, MUSS gemeinsam mit der Webseite ausgeliefert werden:

   ```
   HTTP/1.1 200 OK
   Link: <[...]>; rel="meta"
   ```
