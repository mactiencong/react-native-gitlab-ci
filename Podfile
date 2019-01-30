platform :ios, '9.0'

target 'supotore' do
    post_install do |installer|
        installer.pods_project.targets.each do |target|
    
          # The following is needed to ensure the "archive" step works in XCode.
          # It removes React & Yoga from the Pods project, as it is already included in the main project.
          # Without this, you'd see errors when you archive like:
          # "Multiple commands produce ... libReact.a"
          # "Multiple commands produce ... libyoga.a"
    
          targets_to_ignore = %w(React yoga)
          
          if targets_to_ignore.include? target.name
            target.remove_from_project
          end
    
        end
    end
    # Required by RNFirebase
    pod 'Firebase/Core'
    
    # [OPTIONAL PODS] - comment out pods for firebase products you won't be using.
    pod 'Firebase/Auth'
    pod 'Firebase/Database'
    # pod 'Firebase/DynamicLinks'
    # pod 'Firebase/Performance'
    pod 'Firebase/Firestore'
    # pod 'Firebase/Messaging'
    # pod 'Firebase/RemoteConfig'
    pod 'Firebase/Storage'
    
	pod 'React', :path => '../node_modules/react-native', :subspecs => [
		'RCTImage', # <-- Add RCTImage
	]
    
	pod 'yoga', path: '../node_modules/react-native/ReactCommon/yoga'
	pod 'BVLinearGradient', :path => '../node_modules/react-native-linear-gradient'
	pod 'RNVectorIcons', :path => '../node_modules/react-native-vector-icons'
	pod 'RNSVG', :path => '../node_modules/react-native-svg'
	pod 'RNGestureHandler', :path => '../node_modules/react-native-gesture-handler'
	pod 'RNI18n', :path => '../node_modules/react-native-i18n'
end
