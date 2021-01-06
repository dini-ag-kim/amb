## Format und Bereitstellung

Die Metadaten einer Ressource werden durch ein JSON-Dokument repräsentiert. Dieses JSON-Dokument MUSS einige obligatorische und KANN zusätzlich optionale Schlüssel/Werte-Paare des <a href="#profile">Profils</a> beinhalten.

Das Metadatendokument einer Ressource MUSS im JSON-LD-Format bereitgestellt werden, entweder als eigenständige Webressource oder eingebettet in die Bildungsressource selbst bzw. in ihre HTML-Beschreibungsseite.

Werden die Metadaten als Webressource unter einer eigenständigen URL angeboten, MUSS der `Content-Type` Header auf `application/ld+json` gesetzt werden:

```
Content-Type: application/ld+json
```

Der Datensatz MUSS auf eine der folgenden Arten in die Bildungsressource oder ihre Beschreibungsseite eingebunden werden:

1. Ein `script` Element mit dem JSON-Dokument MUSS in den `head`-Bereich der Webseite eingebettet werden:

   ```
   <script type="application/ld+json">[...]</script>
   ```

ODER

2. Ein `link` Element, das das JSON-Dokument referenziert, MUSS in den `head`-Bereich der Webseite eingebettet werden:

   ```
   <link rel="meta" type="application/ld+json" href="[...]" title="Resource metadata" />
   ```

ODER

3. Ein `Link` Header, der das JSON-Dokument referenziert, MUSS gemeinsam mit der Webseite ausgeliefert werden:

   ```
   HTTP/1.1 200 OK
   Link: <[...]>; rel="meta"
   ```
