#!/bin/sh

FWNAME=openssl-apple
FWROOT=frameworks
LIBNAME=openssl
ARGS=
XCFRAMEWORK_DEPS=
ALL_SYSTEMS=("iPhoneOS" "iPhoneSimulator" "AppleTVOS" "AppleTVSimulator" "MacOSX" "Catalyst" "WatchOS" "WatchSimulator")

if [ -d $FWROOT ]; then
    echo "Removing previous $FWNAME.xcframework and intermediate files"
    rm -rdf $FWROOT
fi

for SYS in ${ALL_SYSTEMS[@]}; do
    SYSDIR="$FWROOT/$SYS"
	SYSDISTS=(bin/${SYS}*)
	LIPO_LIBS=

	mkdir -p $SYSDIR
    for DIST in ${SYSDISTS[@]}; do
    	libtool -static -o $DIST/lib/libopenssl.a $DIST/lib/libcrypto.a $DIST/lib/libssl.a
    	LIPO_LIBS+=" $DIST/lib/libopenssl.a"
    done

	lipo ${LIPO_LIBS} -create -output $SYSDIR/libopenssl.a
	ARGS+=" -library $SYSDIR/libopenssl.a -headers include/"
	XCFRAMEWORK_DEPS+=" $SYSDIR/libopenssl.a"
done

xcodebuild -create-xcframework $ARGS -output "$FWROOT/$FWNAME.xcframework"
