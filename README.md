# amman.fotobe.ch Docker

docker-compose-port von amman.fotobe.ch

## Installation

Alles installieren und starten: `make`<br>
Dies geht davon aus dass alle web-sourcen unter
`source/web/` und ein Datenbankdump unter `source/db_import/amman.sql` liegt.

Diese Daten können zuvor mit `make fetch-sources` vom prod-server
geholt werden.

## Ports

Die Webapp ist unter Port `8081` und MariaDB unter Port `13307` verfügbar.


## Konfiguration

Alle Relevanten Einstellungen können im File `settings.env` angepasst werden.
