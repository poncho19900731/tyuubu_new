@echo off
chcp 65001 > nul
powershell -NoProfile -Command "$f = Get-ChildItem -Filter *.kml | ForEach-Object { '\"' + $_.Name + '\"' }; '[' + ($f -join ',') + ']' | Out-File -Encoding utf8 list.json"
echo list.json を作成しました
pause