#! /bin/sh

export XCODEDIR="/Applications/Xcode44-DP4.app/Contents/Developer"
export BASEDIR="${XCODEDIR}/Platforms/iPhoneOS.platform/Developer"
export PATH="${BASEDIR}/usr/bin:$BASEDIR/usr/sbin:$PATH"
export SDK="${BASEDIR}/SDKs/iPhoneOS5.1.sdk"
export CFLAGS="-pthread -mthumb -arch armv6 -isysroot ${SDK}"
export LDFLAGS="-pthread -mthumb -arch armv6 -isysroot ${SDK}"

./configure --host=arm-apple-darwin10 && make -j2

echo 'Now, using codesign(1) to sign dnscrypt-proxy'
