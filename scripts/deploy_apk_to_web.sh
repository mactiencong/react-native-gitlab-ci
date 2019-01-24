#!/bin/bash
DATE=`date '+%Y-%m-%d-%H-%M-%S'`
cp android/app/build/outputs/apk/debug/app-debug.apk ${ANDROID_APK_DOWNLOAD_PATH}/${DATE}-debug.apk
cp android/app/build/outputs/apk/release/app-release.apk ${ANDROID_APK_DOWNLOAD_PATH}/${DATE}-release.apk