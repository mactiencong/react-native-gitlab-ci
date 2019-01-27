sed -i.bak -E '/^\<dict\>/a\
<key>compileBitcode</key>\
<false/>\
<key>provisioningProfiles</key>\
<dict>\
  <key>com.enzi.com.enzi.supotore</key>\
  <string>matico</string>\
</dict>\
' ios/build/supotore.xcarchive/Info.plist