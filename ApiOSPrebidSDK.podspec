
Pod::Spec.new do |spec|

  spec.name         = "ApiOSPrebidSDK"
  spec.version      = "1.0.1"
  spec.summary      = "ApiOSPrebidSDK provides full screen ad formats such as Smart Rewarded and Smart Interstitial ads for the iOS apps"
  spec.description  = "ApiOSPrebidSDK is easy to implement SDK provides full screen ad formats such as Smart Rewarded and Smart Interstitial ads for the iOS apps."
  spec.homepage     = "https://github.com/adpushup/ApiOSPrebidSDK"
  spec.license      = { :type => "Proprietary", :text => "LICENSE" }
  spec.author       = [{ "AdPushup" => "rishabh.tripathi@adpushup.com" }]
  spec.platform     = :ios, "15.0"
  spec.source       = { :git => "https://github.com/adpushup/ApiOSPrebidSDK.git", :tag => spec.version.to_s }
  spec.readme = 'https://github.com/adpushup/ApiOSPrebidSDK/blob/master/README.md'
  spec.swift_version = "5.0"
  spec.vendored_frameworks = "Sources/ApiOSPrebidSDK/ApPrebidModule.xcframework"
  spec.source_files = "Sources/ApiOSPrebidSDK/Placeholder.swift"
  spec.dependency 'Google-Mobile-Ads-SDK', '~> 11.13'
  spec.dependency 'PrebidMobile', '~> 3.1'
  spec.static_framework = true

end
