@echo off

rem Navigiere in das richtige Unterverzeichnis
cd build/web

rem Starte den Server
start /B npx http-server

rem Warte für eine bestimmte Zeit, z. B. 5 Sekunden
timeout /t 6

rem Öffne die Webseite
start http://192.168.56.1:8081/
