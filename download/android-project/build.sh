#!/bin/bash
echo "================================"
echo "⚔️ صراع الجنرالات - Build Script"
echo "================================"

# Check prerequisites
echo "📦 Checking prerequisites..."

if ! command -v node &> /dev/null; then
    echo "❌ Node.js not found. Install from https://nodejs.org/"
    exit 1
fi

if ! command -v cordova &> /dev/null; then
    echo "📥 Installing Cordova..."
    npm install -g cordova
fi

echo "✅ Prerequisites OK"

# Navigate to project
cd "$(dirname "$0")/clash-of-generals"

# Copy latest game
echo "🎮 Copying latest game files..."
cp ../../clash-of-generals.html www/index.html

# Add platform if not exists
if [ ! -d "platforms/android" ]; then
    echo "📱 Adding Android platform..."
    cordova platform add android
fi

# Build
echo "🔨 Building Android APK..."
cordova build android

echo ""
echo "✅ Build complete!"
echo "📍 APK location: platforms/android/app/build/outputs/apk/debug/app-debug.apk"
echo ""
echo "To build release APK:"
echo "  cordova build android --release"
echo ""
