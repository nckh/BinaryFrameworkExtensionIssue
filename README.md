# Steps to reproduce issue

1. Run `sh build-xcframework.sh`
2. Open `BinaryFrameworkExtensionIssue.xcworkspace`
3. Archive "BinaryFrameworkExtensionIssue" > "Any iOS Device (arm64, armv7)"
4. In Organizer:
    1. Select "Distribute App"
    2. Select "Ad Hoc", "Enterprise," or "Development"
    3. Keep "App Thinning: None", and "Rebuild from Bitcode" and "Strip Swift symbols" checked
    4. "Next"
    5. "Automatically manage signing"
5. "Compiling Bitcode..." will stop after a few seconds with "IPA processing failed"

Steps that fix the error

* Removing the Share Extension
* Uncheck "Rebuild from Bitcode"

# Environment

macOS Big Sur 11.1 Intel
Xcode 12.3
