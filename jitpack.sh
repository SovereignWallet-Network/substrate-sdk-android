NDK_VERSION=28.2.13676358

echo "SDKMANAGER --list"
yes | $ANDROID_HOME/tools/bin/sdkmanager --update

echo "Installing NDK ${NDK_VERSION}"
yes | $ANDROID_HOME/tools/bin/sdkmanager --install "ndk;${NDK_VERSION}"
# sdkmanager --install "ndk;${NDK_VERSION}"

export ANDROID_NDK_HOME=$ANDROID_HOME/ndk/${NDK_VERSION}
export NDK_HOME=$ANDROID_HOME/ndk/${NDK_VERSION}