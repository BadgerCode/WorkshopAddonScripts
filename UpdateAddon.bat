@echo off
set "gma="
set "thumbnail="
set "addonId="

set /p gma="Enter addon GMA path (empty = unchanged): "
set /p thumbnail="Enter addon THUMBNAIL path (empty = unchanged): "
set /p addonId="Enter the addon Id: "

IF "%addonId%"=="" (
  echo.
  echo Error- Addon Id missing
  EXIT /B 1
)

IF NOT "%gma%"=="" ( SET gma=-addon %gma% )
IF NOT "%thumbnail%"=="" ( SET thumbnail=-icon %thumbnail% )

echo.

"C:\Program Files (x86)\Steam\steamapps\common\garrysmod\bin\gmpublish.exe" update -id %addonId% %gma% %thumbnail%
