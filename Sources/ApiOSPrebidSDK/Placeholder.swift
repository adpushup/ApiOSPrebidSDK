// xcodebuild archive \
//  -workspace ApPrebidModule.xcworkspace \
//  -scheme ApPrebidModule \
//  -destination "generic/platform=iOS" \
//  -archivePath "./build/iOS" \
//  -sdk iphoneos \
//  SKIP_INSTALL=NO \
//  BUILD_LIBRARY_FOR_DISTRIBUTION=YES

//  xcodebuild archive \
//  -workspace ApPrebidModule.xcworkspace \
//  -scheme ApPrebidModule \
//  -destination "generic/platform=iOS Simulator" \
//  -archivePath "./build/iOSSimulator" \
//  -sdk iphonesimulator \
//  SKIP_INSTALL=NO \
//  BUILD_LIBRARY_FOR_DISTRIBUTION=YES


//  xcodebuild -create-xcframework \
//      -framework "./build/iOS.xcarchive/Products/Library/Frameworks/ApPrebidModule.framework" \
//      -framework "./build/iOSSimulator.xcarchive/Products/Library/Frameworks/ApPrebidModule.framework" \
//      -output "./build/ApPrebidModule.xcframework"


//  zip -r "./build/ApPrebidModule.xcframework.zip" "./build/ApPrebidModule.xcframework"

// # FINAL SCRIPT - This solves both problems:
// # 1. It removes the problematic script phase.
// # 2. It FORCES the build setting required for a distributable XCFramework.
// post_install do |installer|
//   # --- Start of script ---
//   require 'xcodeproj'

//   project_path = 'ApPrebidModule.xcodeproj'
//   project = Xcodeproj::Project.open(project_path)
//   target = project.targets.find { |t| t.name == 'ApPrebidModule' }

//   if target
//     # --- Part 1: Remove the Copy Pods Resources script ---
//     phase = target.shell_script_build_phases.find { |p| p.name == '[CP] Copy Pods Resources' }
//     if phase
//       puts "✅ Found and removed '[CP] Copy Pods Resources' from target '#{target.name}'."
//       phase.remove_from_project
//     else
//       puts "✅ '[CP] Copy Pods Resources' phase not found, nothing to do."
//     end

//     # --- Part 2: Force the Build Library for Distribution setting ---
//     puts "✅ Forcing 'BUILD_LIBRARY_FOR_DISTRIBUTION' to YES for all configurations."
//     target.build_configurations.each do |config|
//       config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
//     end
//   end

//   project.save
//   # --- End of script ---
// end