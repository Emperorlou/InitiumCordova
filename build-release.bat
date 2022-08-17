cmd /c cordova build android --release

del initium.apk

zipalign -f 4 platforms/android/app/build/outputs/apk/release/app-release-unsigned.apk initium.apk

apksigner sign --ks initium.keystore --ks-pass file:my-passfile.txt --v1-signing-enabled true --v2-signing-enabled true initium.apk

pause