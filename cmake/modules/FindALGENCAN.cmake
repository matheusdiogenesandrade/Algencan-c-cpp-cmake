# - Try to find Algencan
# Once done this will define
#  ALGENCAN_FOUND - System has Algencan
#  ALGENCAN_LIB - The libraries needed to use Algencan

if (NOT ALGENCAN_FOUND )

    find_path(ALGENCAN_LIB
        NAMES libalgencan.a 
        PATHS "$ENV{ALGENCAN_LIB}"
        "/opt/algencan/lib/"
        "~/algencan/lib/"
        )

    MESSAGE("${ALGENCAN_LIB}")

    include(FindPackageHandleStandardArgs)

    # handle the QUIETLY and REQUIRED arguments and set ALGENCAN_FOUND to TRUE
    # if all listed variables are TRUE
    find_package_handle_standard_args(ALGENCAN DEFAULT_MSG ALGENCAN_LIB)

    mark_as_advanced(ALGENCAN_LIB)

endif(NOT ALGENCAN_FOUND)

