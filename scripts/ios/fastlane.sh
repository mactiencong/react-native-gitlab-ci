set -e
set -x

export LANG=en_US.UTF-8
npm install
cd ios
pod install
fastlane env
fastlane release
# fastlane pilot upload -u enzi.itdev@gmail.com --skip_submission