# - Try to find KMSSAMPLEPLUGIN-JS-MV library

#=============================================================================
# Copyright 2014 Kurento
#
#=============================================================================

set(PACKAGE_VERSION "0.0.1-dev")
set(KMSSAMPLEPLUGIN-JS-MV_VERSION ${PACKAGE_VERSION})

message (STATUS "Looking for KMSSAMPLEPLUGIN-JS-MV: 0.0.1-dev")

include (GenericFind)

generic_find (
  REQUIRED
  LIBNAME KMSCORE
  VERSION ^5.0.0
)

generic_find (
  REQUIRED
  LIBNAME KMSELEMENTS
  VERSION ^5.0.0
)

generic_find (
  REQUIRED
  LIBNAME KMSFILTERS
  VERSION ^5.0.0
)

set (REQUIRED_VARS
  KMSSAMPLEPLUGIN-JS-MV_VERSION
  KMSSAMPLEPLUGIN-JS-MV_INCLUDE_DIRS
  KMSSAMPLEPLUGIN-JS-MV_LIBRARY
  KMSSAMPLEPLUGIN-JS-MV_LIBRARIES
)

set(KMSSAMPLEPLUGIN-JS-MV_INCLUDE_DIRS
  ${KMSCORE_INCLUDE_DIRS}
  ${KMSELEMENTS_INCLUDE_DIRS}
  ${KMSFILTERS_INCLUDE_DIRS}
)

if (NOT "SamplePluginFilter-js-MV.hpp SamplePluginFilter-js-MVInternal.hpp" STREQUAL " ")
  find_path(KMSSAMPLEPLUGIN-JS-MV_INTERFACE_INCLUDE_DIR
    NAMES
      SamplePluginFilter-js-MV.hpp
      SamplePluginFilter-js-MVInternal.hpp
    PATH_SUFFIXES
      build/src/server/interface/generated-cpp
      kurento/modules/sampleplugin-js-MV
  )

  list (APPEND KMSSAMPLEPLUGIN-JS-MV_INCLUDE_DIRS ${KMSSAMPLEPLUGIN-JS-MV_INTERFACE_INCLUDE_DIR})
  list (APPEND REQUIRED_VARS KMSSAMPLEPLUGIN-JS-MV_INTERFACE_INCLUDE_DIR)
endif ()

if (NOT "SamplePluginFilter-js-MVImplFactory.hpp" STREQUAL "")
  find_path(KMSSAMPLEPLUGIN-JS-MV_IMPLEMENTATION_INTERNAL_INCLUDE_DIR
    NAMES
      SamplePluginFilter-js-MVImplFactory.hpp
    PATH_SUFFIXES
      build/src/server/implementation/generated-cpp
      kurento/modules/sampleplugin-js-MV
  )

  list (APPEND KMSSAMPLEPLUGIN-JS-MV_INCLUDE_DIRS ${KMSSAMPLEPLUGIN-JS-MV_IMPLEMENTATION_INTERNAL_INCLUDE_DIR})
  list (APPEND REQUIRED_VARS KMSSAMPLEPLUGIN-JS-MV_IMPLEMENTATION_INTERNAL_INCLUDE_DIR)
endif ()

if (NOT "SamplePluginFilter-js-MVImpl.hpp" STREQUAL "")
  find_path(KMSSAMPLEPLUGIN-JS-MV_IMPLEMENTATION_GENERATED_INCLUDE_DIR
    NAMES
      SamplePluginFilter-js-MVImpl.hpp
    PATH_SUFFIXES
      src/server/implementation/objects
      kurento/modules/sampleplugin-js-MV
  )

  list (APPEND KMSSAMPLEPLUGIN-JS-MV_INCLUDE_DIRS ${KMSSAMPLEPLUGIN-JS-MV_IMPLEMENTATION_GENERATED_INCLUDE_DIR})
  list (APPEND REQUIRED_VARS KMSSAMPLEPLUGIN-JS-MV_IMPLEMENTATION_GENERATED_INCLUDE_DIR)
endif()

if (NOT "" STREQUAL "")
  find_path(KMSSAMPLEPLUGIN-JS-MV_IMPLEMENTATION_EXTRA_INCLUDE_DIR
    NAMES
      
    PATH_SUFFIXES
      
      kurento/modules/sampleplugin-js-MV
  )

  list (APPEND KMSSAMPLEPLUGIN-JS-MV_INCLUDE_DIRS ${KMSSAMPLEPLUGIN-JS-MV_IMPLEMENTATION_EXTRA_INCLUDE_DIR})
  list (APPEND REQUIRED_VARS KMSSAMPLEPLUGIN-JS-MV_IMPLEMENTATION_EXTRA_INCLUDE_DIR)
endif ()

if (NOT "" STREQUAL "")
  find_path(KMSSAMPLEPLUGIN-JS-MV_INTERFACE_EXTRA_INCLUDE_DIR
    NAMES
      
    PATH_SUFFIXES
      
      kurento/modules/sampleplugin-js-MV
  )

  list (APPEND KMSSAMPLEPLUGIN-JS-MV_INCLUDE_DIRS ${KMSSAMPLEPLUGIN-JS-MV_INTERFACE_EXTRA_INCLUDE_DIR})
  list (APPEND REQUIRED_VARS KMSSAMPLEPLUGIN-JS-MV_INTERFACE_EXTRA_INCLUDE_DIR)
endif ()

find_library (KMSSAMPLEPLUGIN-JS-MV_LIBRARY
  NAMES
    kmssampleplugin-js-mvimpl
  PATH_SUFFIXES
    build/src/server
)

set (REQUIRED_LIBS "")
foreach (LIB ${REQUIRED_LIBS})
  string(FIND ${LIB} " " POS)

  if (${POS} GREATER 0)
    string(REPLACE " " ";" REQUIRED_LIB_LIST ${LIB})
    include (CMakeParseArguments)
    cmake_parse_arguments("PARAM" "" "LIBNAME" "" ${REQUIRED_LIB_LIST})

    if (DEFINED PARAM_LIBNAME)
      generic_find (${REQUIRED_LIB_LIST} REQUIRED)
      set (LIB_NAME ${PARAM_LIBNAME})
    else()
      string (SUBSTRING ${LIB} 0 ${POS} LIB_NAME)
      string (SUBSTRING ${LIB} ${POS} -1 LIB_VERSION)
      string (STRIP ${LIB_NAME} LIB_NAME)
      string (STRIP ${LIB_VERSION} LIB_VERSION)
      generic_find (LIBNAME ${LIB_NAME} REQUIRED VERSION "${LIB_VERSION}")
    endif()
  else ()
    string (STRIP ${LIB} LIB_NAME)
    generic_find (LIBNAME ${LIB_NAME} REQUIRED)
  endif ()
  list (APPEND REQUIRED_LIBRARIES ${${LIB_NAME}_LIBRARIES})
  list (APPEND KMSSAMPLEPLUGIN-JS-MV_INCLUDE_DIRS ${${LIB_NAME}_INCLUDE_DIRS})

endforeach()

set(KMSSAMPLEPLUGIN-JS-MV_INCLUDE_DIRS
  ${KMSSAMPLEPLUGIN-JS-MV_INCLUDE_DIRS}
  CACHE INTERNAL "Include directories for KMSSAMPLEPLUGIN-JS-MV library"
)

set (KMSSAMPLEPLUGIN-JS-MV_LIBRARIES
  ${KMSSAMPLEPLUGIN-JS-MV_LIBRARY}
  ${KMSCORE_LIBRARIES}
  ${KMSELEMENTS_LIBRARIES}
  ${KMSFILTERS_LIBRARIES}
  ${REQUIRED_LIBRARIES}
  CACHE INTERNAL "Libraries for KMSSAMPLEPLUGIN-JS-MV"
)

include (FindPackageHandleStandardArgs)

find_package_handle_standard_args(KMSSAMPLEPLUGIN-JS-MV
  FOUND_VAR
    KMSSAMPLEPLUGIN-JS-MV_FOUND
  REQUIRED_VARS
    ${REQUIRED_VARS}
  VERSION_VAR
    KMSSAMPLEPLUGIN-JS-MV_VERSION
)

mark_as_advanced(
  KMSSAMPLEPLUGIN-JS-MV_FOUND
  KMSSAMPLEPLUGIN-JS-MV_VERSION
  KMSSAMPLEPLUGIN-JS-MV_INTERFACE_INCLUDE_DIR
  KMSSAMPLEPLUGIN-JS-MV_IMPLEMENTATION_INTERNAL_INCLUDE_DIR
  KMSSAMPLEPLUGIN-JS-MV_IMPLEMENTATION_GENERATED_INCLUDE_DIR
  KMSSAMPLEPLUGIN-JS-MV_IMPLEMENTATION_EXTRA_INCLUDE_DIR
  KMSSAMPLEPLUGIN-JS-MV_INTERFACE_EXTRA_INCLUDE_DIR
  KMSSAMPLEPLUGIN-JS-MV_INCLUDE_DIRS
  KMSSAMPLEPLUGIN-JS-MV_LIBRARY
  KMSSAMPLEPLUGIN-JS-MV_LIBRARIES
)