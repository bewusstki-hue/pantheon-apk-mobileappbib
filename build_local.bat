@echo off
echo [PANTHEON OS] Lokaler Build (Android SDK + Node.js benoetigt)
call npm install
call npx cap add android
call npx cap sync android
cd android
call gradlew assembleDebug
echo.
echo APK: android\app\build\outputs\apk\debug\app-debug.apk
pause