@echo off
set "gma="
set "thumbnail="

set /p gma="Enter addon GMA path: "
set /p thumbnail="Enter addon THUMBNAIL path: "

"C:\Program Files (x86)\Steam\steamapps\common\garrysmod\bin\gmpublish.exe" create -addon %gma% -icon %thumbnail%
