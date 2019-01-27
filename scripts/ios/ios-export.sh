set -e
set -x

cd ios && xcodebuild \
  -exportArchive \
  -archivePath $PWD/build/supotore.xcarchive \
  -exportOptionsPlist $PWD/build/supotore.xcarchive/Info.plist \
  -exportPath $PWD/build