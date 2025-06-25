@echo off
title Forlinx Docs Preview Server
cd D:\Documents\GitHub\forlinx\forlinx-online-docs

echo [INFO] Starting MkDocs local preview server...
start "" http://127.0.0.1:8000
start "" cmd /c "mkdocs serve"
