#!/bin/bash
export ANDROID_HOME=/android-sdk-linux
export PATH=$PATH:/android-sdk-linux/platform-tools/
npm install
chmod +x android/gradlew
echo fs.inotify.max_user_watches=524288 | tee -a /etc/sysctl.conf && sysctl -p