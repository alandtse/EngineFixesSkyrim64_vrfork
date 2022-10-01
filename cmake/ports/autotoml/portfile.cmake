vcpkg_from_github(
	OUT_SOURCE_PATH SOURCE_PATH
	REPO shad0wshayd3/AutoTOML
	REF fc0ba2364334503684c4d4dbda6bd10c35dde1fb
	SHA512 36e8d2d7f042256723b28865067a7317b4783a419c16c62c02a0b5b4ed1e2256d4ed485a0a921bcd5b74ab74007f6d619e1cf06f63eccf386ea56b7d87785a25
	HEAD_REF master
)

vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH})
vcpkg_cmake_install()
vcpkg_cmake_config_fixup(CONFIG_PATH lib/cmake/AutoTOML)

file(REMOVE_RECURSE
	${CURRENT_PACKAGES_DIR}/debug
	${CURRENT_PACKAGES_DIR}/lib
)

file(INSTALL ${SOURCE_PATH}/LICENSE DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT} RENAME copyright)
