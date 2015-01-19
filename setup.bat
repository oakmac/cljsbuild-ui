@echo off

echo. & echo Installing node dependencies...
call npm install

echo. & echo Installing grunt...
call npm install -g grunt-cli

echo. & echo Installing winresourcer...
call npm install -g winresourcer

echo. & echo Installing Leiningen jar...
call grunt curl

echo. & echo Installing Atom Shell...
call grunt download-atom-shell

echo. & echo Building lein profile tool...
call build-lein-profile-tool.bat

echo. & echo Building Cuttle locally...
call grunt less
call lein cljsbuild once

echo. & echo Cuttle setup complete.
