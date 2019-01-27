set -e
set -x

# CREATE KEY CHAIN
# security delete-keychain ~/Library/Keychains/build-ios.keychain
# security create-keychain -p 123456789a build-ios.keychain
# security default-keychain -d user -s build-ios.keychain
# security unlock-keychain -p 123456789a build-ios.keychain
# security set-keychain-settings -t 3600 -l ~/Library/Keychains/build-ios.keychain
# # IMPORT ASSETS INTO KEY CHAIN
# security import scripts/ios/AppleWWDRCA.cer -k build-ios.keychain -A
# security import scripts/ios/Certificates.p12 -k build-ios.keychain -P 123456789a -A
# security set-key-partition-list -S apple-tool:,apple: -s -k 123456789a build-ios.keychain > /dev/null
# # PROVISIONING PROFILE
# mkdir -p ~/Library/MobileDevice/Provisioning\ Profiles
# cp "scripts/ios/kenkochan.mobileprovision" ~/Library/MobileDevice/Provisioning\ Profiles
# BUILD ARCHIVE
sh scripts/ios/ios-build.sh
# EXPORT ARCHIVE
sh scripts/ios/ios-patch-plist.sh
sh scripts/ios/ios-export.sh