vcpkg_from_github(
	OUT_SOURCE_PATH SOURCE_PATH
	REPO ftbmynameis/nonsense
	REF c03df6d93de9857dd1d130334585421af8be5f28
	SHA512 981c9c5b58569d4be889f4dd6149cc1f5414dcf6e1fbae63cde067a326409c1139439c2e1589a4b641743550610b66e40059564e0ef5cf8db672c1cde55b575a
	HEAD_REF main
)

vcpkg_configure_cmake(
	SOURCE_PATH "${SOURCE_PATH}"
	PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_fixup_cmake_targets()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(
	INSTALL "${SOURCE_PATH}/LICENSE"
	DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
	RENAME copyright)