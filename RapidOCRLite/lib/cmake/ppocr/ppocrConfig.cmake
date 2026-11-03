
####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was ppocrConfig.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../" ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

macro(check_required_components _NAME)
  foreach(comp ${${_NAME}_FIND_COMPONENTS})
    if(NOT ${_NAME}_${comp}_FOUND)
      if(${_NAME}_FIND_REQUIRED_${comp})
        set(${_NAME}_FOUND FALSE)
      endif()
    endif()
  endforeach()
endmacro()

####################################################################################

# Compatibility package: the library is librapidocrlite (find_package(RapidOCRLite) is preferred).
# ppocr::ppocr / ppocr::static forward to RapidOCRLite::rapidocrlite / RapidOCRLite::static.
include(CMakeFindDependencyMacro)
find_dependency(RapidOCRLite 5.0.0 CONFIG PATHS "${CMAKE_CURRENT_LIST_DIR}/../RapidOCRLite" NO_DEFAULT_PATH)

if(TARGET RapidOCRLite::rapidocrlite AND NOT TARGET ppocr::ppocr)
  add_library(ppocr::ppocr INTERFACE IMPORTED)
  set_target_properties(ppocr::ppocr PROPERTIES INTERFACE_LINK_LIBRARIES RapidOCRLite::rapidocrlite)
endif()
if(TARGET RapidOCRLite::static AND NOT TARGET ppocr::static)
  add_library(ppocr::static INTERFACE IMPORTED)
  set_target_properties(ppocr::static PROPERTIES INTERFACE_LINK_LIBRARIES RapidOCRLite::static)
endif()

check_required_components(ppocr)
