set -e
set -x

cd ios && xcodebuild \
  -workspace supotore.xcworkspace \
  -allowProvisioningUpdates \
  -scheme supotore \
  -configuration Release \
  -UseModernBuildSystem=NO \
  clean archive \
  DEVELOPMENT_TEAM=Z642JF8X2H \
  -archivePath $PWD/build/supotore.xcarchive