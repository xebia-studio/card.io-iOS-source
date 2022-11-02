#!/bin/bash

xcodebuild clean archive \
    -project icc.xcodeproj \
    -scheme CardIO \
    -configuration Release \
    -arch arm64 \
    -sdk iphoneos \
    -archivePath "archives/CardIO-iphoneos" \
    SKIP_INSTALL=NO

xcodebuild clean archive \
    -project icc.xcodeproj \
    -scheme CardIO \
    -configuration Release \
    -arch arm64 \
    -arch x86_64 \
    -sdk iphonesimulator \
    -archivePath "archives/CardIO-iphonesimulator" \
    SKIP_INSTALL=NO

xcodebuild \
    -create-xcframework \
    -archive archives/CardIO-iphoneos.xcarchive -framework CardIO.framework \
    -archive archives/CardIO-iphonesimulator.xcarchive -framework CardIO.framework \
    -output xcframeworks/CardIO.xcframework
