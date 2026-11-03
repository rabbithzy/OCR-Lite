#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "RapidOCRLite::static" for configuration "Release"
set_property(TARGET RapidOCRLite::static APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(RapidOCRLite::static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/rapidocrlite_static.lib"
  )

list(APPEND _cmake_import_check_targets RapidOCRLite::static )
list(APPEND _cmake_import_check_files_for_RapidOCRLite::static "${_IMPORT_PREFIX}/lib/rapidocrlite_static.lib" )

# Import target "RapidOCRLite::rapidocrlite" for configuration "Release"
set_property(TARGET RapidOCRLite::rapidocrlite APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(RapidOCRLite::rapidocrlite PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/rapidocrlite.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/rapidocrlite.dll"
  )

list(APPEND _cmake_import_check_targets RapidOCRLite::rapidocrlite )
list(APPEND _cmake_import_check_files_for_RapidOCRLite::rapidocrlite "${_IMPORT_PREFIX}/lib/rapidocrlite.lib" "${_IMPORT_PREFIX}/bin/rapidocrlite.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
