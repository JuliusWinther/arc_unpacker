mkdir build-vs
cd build-vs
cmake --verbose \
 -G "Visual Studio 14" \
 -DBOOST_ROOT="C:/pkg/boost_1_60_0" \
 -DBOOST_LIBRARYDIR="C:/pkg/boost_1_60_0/bin.v2/libs" \
 -DZLIB_INCLUDE_DIR="C:/pkg/zlib-1.2.8;C:/pkg/builds/zlib" \
 -DZLIB_LIBRARY="C:/pkg/builds/zlib/Debug/zlibd.lib" \
 -DPNG_PNG_INCLUDE_DIR="C:/pkg/libpng-1.6.20" \
 -DPNG_LIBRARY="C:/pkg/builds/png/Debug/libpng16_staticd.lib" \
 -DJPEG_LIBRARY="C:/pkg/libjpeg-turbo/lib/jpeg.lib" \
 -DJPEG_INCLUDE_DIR="C:/pkg/libjpeg-turbo/include" \
 -DOPENSSL_ROOT_DIR="C:/pkg/OpenSSL-Win32" \
 -DOPENSSL_INCLUDE_DIR="C:/pkg/OpenSSL-Win32/include" \
 -DICONV_LIBRARY="C:/pkg/win-iconv/build/Debug/iconv.lib" \
 -DICONV_INCLUDE_DIR="C:/pkg/win-iconv" \
 ..