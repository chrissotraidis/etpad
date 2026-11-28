# Transform only the dependency CMake glue in the build folder; libs stays pristine.
file(READ "${CMAKE_SOURCE_DIR}/libs/CMakeLists.txt" ETPAD_LIBS_CMAKE)
string(REPLACE
    "-DCMAKE_OSX_ARCHITECTURES=\${CMAKE_OSX_ARCHITECTURES_})"
    "-DCMAKE_OSX_ARCHITECTURES=\${CMAKE_OSX_ARCHITECTURES_} -DCMAKE_SYSTEM_NAME=iOS -DCMAKE_SYSTEM_PROCESSOR=arm64 -DCMAKE_MACOSX_BUNDLE=OFF -DCMAKE_FIND_ROOT_PATH_MODE_LIBRARY=BOTH -DCMAKE_FIND_ROOT_PATH_MODE_INCLUDE=BOTH -DCMAKE_FIND_ROOT_PATH_MODE_PACKAGE=BOTH -DCMAKE_OSX_SYSROOT=\${CMAKE_OSX_SYSROOT} -DCMAKE_TRY_COMPILE_TARGET_TYPE=STATIC_LIBRARY)"
    ETPAD_LIBS_CMAKE "${ETPAD_LIBS_CMAKE}")
string(REPLACE "-DSDL_METAL=OFF -DSDL_COCOA=ON" "-DSDL_METAL=ON -DSDL_COCOA=OFF -DSDL_UIKIT=ON" ETPAD_LIBS_CMAKE "${ETPAD_LIBS_CMAKE}")
# SDL 2.30.9 releases a disconnected screen's display data twice, so ETPad
# crashed when the TV disconnected. Apply SDL 2.30.12's one-line fix.
set(ETPAD_SDL_HASH "URL_HASH MD5=57393a5e1a46dd19ae40968a301c70a3")
string(FIND "${ETPAD_LIBS_CMAKE}" "${ETPAD_SDL_HASH}" ETPAD_SDL_AT)
if(ETPAD_SDL_AT EQUAL -1)
    message(FATAL_ERROR "Bundled SDL changed; check apple/ios/sdl-uikit-del-display.patch")
endif()
string(REPLACE "${ETPAD_SDL_HASH}"
    "${ETPAD_SDL_HASH}\n\t\t\tPATCH_COMMAND /usr/bin/patch -p1 --forward --silent -i ${CMAKE_SOURCE_DIR}/apple/ios/sdl-uikit-del-display.patch"
    ETPAD_LIBS_CMAKE "${ETPAD_LIBS_CMAKE}")
# Shader compilation runs on the Mac host, even for an iOS renderer.
execute_process(COMMAND xcrun --sdk macosx --show-sdk-path OUTPUT_VARIABLE ETPAD_HOST_SDK OUTPUT_STRIP_TRAILING_WHITESPACE COMMAND_ERROR_IS_FATAL ANY)
string(REPLACE "-DSHADERC_ENABLE_WGSL_OUTPUT=OFF" "-DCMAKE_OSX_SYSROOT=${ETPAD_HOST_SDK} -DPython3_EXECUTABLE=/usr/bin/python3 -DPython_EXECUTABLE=/usr/bin/python3 -DSHADERC_ENABLE_WGSL_OUTPUT=OFF" ETPAD_LIBS_CMAKE "${ETPAD_LIBS_CMAKE}")
string(REPLACE "\${CMAKE_CURRENT_LIST_DIR}" "${CMAKE_SOURCE_DIR}/libs" ETPAD_LIBS_CMAKE "${ETPAD_LIBS_CMAKE}")
file(WRITE "${CMAKE_BINARY_DIR}/etpad-bundled-libs.cmake" "${ETPAD_LIBS_CMAKE}")
include("${CMAKE_BINARY_DIR}/etpad-bundled-libs.cmake")

# The driver builds external projects serially, each with half the CPU cores.
get_property(ETPAD_TARGETS DIRECTORY PROPERTY BUILDSYSTEM_TARGETS)
file(WRITE "${CMAKE_BINARY_DIR}/etpad-external-targets.txt" "")
foreach(target ${ETPAD_TARGETS})
    get_property(external TARGET ${target} PROPERTY _EP_IS_EXTERNAL_PROJECT)
    if(external)
        file(APPEND "${CMAKE_BINARY_DIR}/etpad-external-targets.txt" "${target}\n")
    endif()
endforeach()
