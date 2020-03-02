@echo off
set "folder="

set /p folder="Enter addon path: "

"C:\Program Files (x86)\Steam\steamapps\common\garrysmod\bin\gmad.exe" create -folder %folder% -warninvalid
