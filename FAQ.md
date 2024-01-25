# FAQ

Hier sammeln und beantworten wir häufig gestellte Fragen und geben Best-Practice Beispiele.

## Wie gebe ich ein Projekt als Entstehungszusammenhang einer Ressource an? (in Abgrenzung zu Förderinformationen) (siehe

OER entstehen häufig im Rahmen von Projekten, an denen mehrere Institutionen beteiligt sein können. In NRW – und soweit ich weiß auch in Niedersachsen – wurde angedacht, diese Projekte zu erfassen, ihnen also eigene Identifier und strukturierte Beschreibungen zu geben. Eine Anforderung wäre dann, in einem Projekt entstandene OER mit dem Projekt zu verlinken, um schließlich Materialien – etwa in OERSI – nach Projekt filtern zu können.
Nehmen wir als Beispiel [OER-Content.NRW](https://www.dh.nrw/kooperationen/OER-Content.nrw-42), wo Materialien durch Konsortien aus mindestens drei Organisationen erstellt werden. Das Projekt "Einführung in die Betriebswirtschaftslehre" (mit der beispielhaften URI `https://example.org/bwl-oer`) wird etwa von einem Konsortium aus sieben Organisationen durchgeführt.
Materialien sollen nach Herkunftsprojekt gefiltert werden, d.h. ich muss das Material in den Metadaten irgendwo einem Projekt zuordnen. Dafür würde sich etwa [`sdo:producer`](https://schema.org/producer) anbieten ([`sdo:Project`](https://schema.org/Project) ist derzeit als ein Untertyp von `Organization` in pending eingetragen, so dass es hier auch mit dem für `producer` erwarteten Typ `Organization` passen würde):

```json
{
    "@context": "http://schema.org",
    "id": "https://example.org/bwl-oer",
    "producer": [
        {
            "id": "http://example.org/bwl-projekt",
            "type": "Project",
            "name": "Einführung in die Betriebswirtschaftslehre"
        }
    ]
}
```

## Wie gebe ich Förderinformationen als Entstehungskontext einer Ressource an? (in Abgrenzung zu Projekt)

Angaben zu einer Förderung können über das Feld [`funder`](https://dini-ag-kim.github.io/amb/latest/#funder) hinterlegt werden.

```json
{
    "@context": [
        "https://w3id.org/kim/lrmi-profile/draft/context.jsonld",
        {
            "@language": "de"
        }
    ],
    "id": "https://example.org/course",
    "name": "Beispielkurs",
    "type": [
        "LearningResource",
        "Course"
    ],
    "funder": {
        "type": "FundingScheme",
        "id": "https://example.org/foerderprogramm",
        "name": "Förderprogramm A"
    }
}
```


## Wie gebe ich Serienzugehörigkeit an?

Die Serienzugehörigkeit kann über das Feld `isPartOf` abgebildet werden.

```json
{
   "id":"https://dabi.fwu.de/edu-sharing/components/render/bc26e99d-755b-4970-a22d-67fbc875a734",
   "name":"Deutsche Revolution 1848/49",
   "type":[
      "LearningResource",
      "VideoObject"
   ],
   "learningResourceType":[
      {
         "id":"https://w3id.org/kim/hcrt/video",
         "prefLabel":{
            "de":"Video",
            "en":"Video"
         }
      }
   ],
   "isPartOf":{
      "type":"CreativeWorkSeries",
      "name":"Geschichte interaktiv"
   }
}
```

## Wie erfasse ich die Metadatenersteller:in?

Informationen über die Metadaten einer Ressource können im Feld [`mainEntityOfPage`](https://dini-ag-kim.github.io/amb/latest/#mainentityofpage) angegeben werden.
Dort kann ein Attribut `creator` hinterlegt werden, in dem die Metadatenersteller:innen erfasst werden (s. auch [`creator`](https://dini-ag-kim.github.io/amb/latest/#creator) Attribut im AMB).

```json
{
   "id":"https://dabi.fwu.de/edu-sharing/components/render/bc26e99d-755b-4970-a22d-67fbc875a734",
   "name":"Deutsche Revolution 1848/49",
   "type":[
      "LearningResource",
      "VideoObject"
   ],
   "learningResourceType":[
      {
         "id":"https://w3id.org/kim/hcrt/video",
         "prefLabel":{
            "de":"Video",
            "en":"Video"
         }
      }
   ],
   "mainEntityOfPage": [
     {
       "id": "https://awesome-metadata.org"
       "creator": [
          {
            "name": "Maria Müller",
           "type": "Person"
          } 
       ]
     }
   ],
   "isPartOf":{
      "type":"CreativeWorkSeries",
      "name":"Geschichte interaktiv"
   }
}



```

