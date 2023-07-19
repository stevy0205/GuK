
@echo off
rem Navigiere in das richtige Unterverzeichnis
cd build/web
rem Starte den Server
npx http-server

explorer  "" "http://127.0.0.1:8081"