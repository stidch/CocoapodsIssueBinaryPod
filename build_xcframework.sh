rm -Rf out/BinaryPod/BinaryPod.xcframework

xcodebuild archive \
    -workspace BinaryPod/BinaryPod.xcodeproj/project.xcworkspace \
    -scheme BinaryPod \
    -archivePath out/BinaryPod-iphonesimulator.xcarchive \
    -sdk iphonesimulator \
    -arch x86_64 \
    BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
    SKIP_INSTALL=NO

xcodebuild archive \
    -workspace BinaryPod/BinaryPod.xcodeproj/project.xcworkspace \
    -scheme BinaryPod \
    -archivePath out/BinaryPod-iphoneos.xcarchive \
    -sdk iphoneos \
    -arch arm64 \
    BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
    SKIP_INSTALL=NO

xcodebuild -create-xcframework \
    -framework out/BinaryPod-iphonesimulator.xcarchive/Products/Library/Frameworks/BinaryPod.framework \
    -framework out/BinaryPod-iphoneos.xcarchive/Products/Library/Frameworks/BinaryPod.framework \
    -output out/BinaryPod.xcframework
