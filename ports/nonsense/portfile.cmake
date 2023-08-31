vcpkg_from_github(
	OUT_SOURCE_PATH SOURCE_PATH
	REPO ftbmynameis/nonsense
	REF cc353d748e2d271b1be43aaedd2126c869632303
	SHA512 445779a676f557ab852e940e05edb3f815ad50b2f79e6eab406ac62796ea034602feeb03297fb600b1383737ad3aa842dbd5645c7470c22302997a603256049b
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