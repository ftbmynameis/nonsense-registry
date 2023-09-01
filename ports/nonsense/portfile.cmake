vcpkg_from_github(
	OUT_SOURCE_PATH SOURCE_PATH
	REPO ftbmynameis/nonsense
	REF 7a0aac589d4a757a4d3bb4ff45692203de136e0c
	SHA512 7c465c8396be8c9d78e0f9dab2925d3889381101eafa0016a93986a5ed5d4a664063e6a6a5bfc8b84ce650765f5a7ddf601091d56336a77d6e62a70ea34ea95f
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