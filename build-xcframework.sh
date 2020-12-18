rm -r LibSPM/Lib.xcframework

xcodebuild archive -project BinaryFrameworkExtensionIssue.xcodeproj -scheme Lib -configuration Release \
  -destination "generic/platform=iOS" \
  -archivePath Archives/Lib-iphoneos.xcarchive \
  SKIP_INSTALL=NO \
  BUILD_LIBRARY_FOR_DISTRIBUTION=YES

xcodebuild archive -project BinaryFrameworkExtensionIssue.xcodeproj -scheme Lib -configuration Release \
  -destination "generic/platform=iOS Simulator" \
  -archivePath Archives/Lib-iphonesimulator.xcarchive \
  SKIP_INSTALL=NO \
  BUILD_LIBRARY_FOR_DISTRIBUTION=YES


xcodebuild -create-xcframework \
  -framework 'Archives/Lib-iphoneos.xcarchive/Products/Library/Frameworks/Lib.framework' \
  -framework 'Archives/Lib-iphonesimulator.xcarchive/Products/Library/Frameworks/Lib.framework' \
  -output 'Archives/Lib.xcframework'

mv Archives/Lib.xcframework LibSPM/
