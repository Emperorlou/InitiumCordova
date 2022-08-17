cmd /c cordova build android

del initium-debug.apk

zipalign -f 4 platforms\android\app\build\outputs\apk\debug\app-debug.apk initium-debug.apk

apksigner sign --ks initium.keystore --ks-pass file:my-passfile.txt --v1-signing-enabled true --v2-signing-enabled true initium-debug.apk

pause