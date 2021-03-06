# - Try to find KMSSAMPLEPLUGIN_JS_MV library

#=============================================================================
# Copyright 2014 Kurento
#
#=============================================================================

set(PACKAGE_VERSION "0.0.1-dev")
set(KMSSAMPLEPLUGIN_JS_MV_VERSION ${PACKAGE_VERSION})

message (STATUS "Looking for KMSSAMPLEPLUGIN_JS_MV: 0.0.1-dev")

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
  KMSSAMPLEPLUGIN_JS_MV_VERSION
  KMSSAMPLEPLUGIN_JS_MV_INCLUDE_DIRS
  KMSSAMPLEPLUGIN_JS_MV_LIBRARY
  KMSSAMPLEPLUGIN_JS_MV_LIBRARIES
)

set(KMSSAMPLEPLUGIN_JS_MV_INCLUDE_DIRS
  ${KMSCORE_INCLUDE_DIRS}
  ${KMSELEMENTS_INCLUDE_DIRS}
  ${KMSFILTERS_INCLUDE_DIRS}
)

if (NOT "SamplePluginFilter_js_mv.hpp SamplePluginFilter_js_mvInternal.hpp" STREQUAL " ")
  find_path(KMSSAMPLEPLUGIN_JS_MV_INTERFACE_INCLUDE_DIR
    NAMES
      SamplePluginFilter_js_mv.hpp
      SamplePluginFilter_js_mvInternal.hpp
    PATH_SUFFIXES
      build/src/server/interface/generated-cpp
      kurento/modules/sampleplugin_js_mv
  )

  list (APPEND KMSSAMPLEPLUGIN_JS_MV_INCLUDE_DIRS ${KMSSAMPLEPLUGIN_JS_MV_INTERFACE_INCLUDE_DIR})
  list (APPEND REQUIRED_VARS KMSSAMPLEPLUGIN_JS_MV_INTERFACE_INCLUDE_DIR)
endif ()

if (NOT "SamplePluginFilter_js_mvImplFactory.hpp" STREQUAL "")
  find_path(KMSSAMPLEPLUGIN_JS_MV_IMPLEMENTATION_INTERNAL_INCLUDE_DIR
    NAMES
      SamplePluginFilter_js_mvImplFactory.hpp
    PATH_SUFFIXES
      build/src/server/implementation/generated-cpp
      kurento/modules/sampleplugin_js_mv
  )

  list (APPEND KMSSAMPLEPLUGIN_JS_MV_INCLUDE_DIRS ${KMSSAMPLEPLUGIN_JS_MV_IMPLEMENTATION_INTERNAL_INCLUDE_DIR})
  list (APPEND REQUIRED_VARS KMSSAMPLEPLUGIN_JS_MV_IMPLEMENTATION_INTERNAL_INCLUDE_DIR)
endif ()

if (NOT "SamplePluginFilter_js_mvImpl.hpp" STREQUAL "")
  find_path(KMSSAMPLEPLUGIN_JS_MV_IMPLEMENTATION_GENERATED_INCLUDE_DIR
    NAMES
      SamplePluginFilter_js_mvImpl.hpp
    PATH_SUFFIXES
      src/server/implementation/objects
      kurento/modules/sampleplugin_js_mv
  )

  list (APPEND KMSSAMPLEPLUGIN_JS_MV_INCLUDE_DIRS ${KMSSAMPLEPLUGIN_JS_MV_IMPLEMENTATION_GENERATED_INCLUDE_DIR})
  list (APPEND REQUIRED_VARS KMSSAMPLEPLUGIN_JS_MV_IMPLEMENTATION_GENERATED_INCLUDE_DIR)
endif()

if (NOT "" STREQUAL "")
  find_path(KMSSAMPLEPLUGIN_JS_MV_IMPLEMENTATION_EXTRA_INCLUDE_DIR
    NAMES
      
    PATH_SUFFIXES
      
      kurento/modules/sampleplugin_js_mv
  )

  list (APPEND KMSSAMPLEPLUGIN_JS_MV_INCLUDE_DIRS ${KMSSAMPLEPLUGIN_JS_MV_IMPLEMENTATION_EXTRA_INCLUDE_DIR})
  list (APPEND REQUIRED_VARS KMSSAMPLEPLUGIN_JS_MV_IMPLEMENTATION_EXTRA_INCLUDE_DIR)
endif ()

if (NOT "" STREQUAL "")
  find_path(KMSSAMPLEPLUGIN_JS_MV_INTERFACE_EXTRA_INCLUDE_DIR
    NAMES
      
    PATH_SUFFIXES
      
      kurento/modules/sampleplugin_js_mv
  )

  list (APPEND KMSSAMPLEPLUGIN_JS_MV_INCLUDE_DIRS ${KMSSAMPLEPLUGIN_JS_MV_INTERFACE_EXTRA_INCLUDE_DIR})
  list (APPEND REQUIRED_VARS KMSSAMPLEPLUGIN_JS_MV_INTERFACE_EXTRA_INCLUDE_DIR)
endif ()

find_library (KMSSAMPLEPLUGIN_JS_MV_LIBRARY
  NAMES
    kmssampleplugin_js_mvimpl
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
  list (APPEND KMSSAMPLEPLUGIN_JS_MV_INCLUDE_DIRS ${${LIB_NAME}_INCLUDE_DIRS})

endforeach()

set(KMSSAMPLEPLUGIN_JS_MV_INCLUDE_DIRS
  ${KMSSAMPLEPLUGIN_JS_MV_INCLUDE_DIRS}
  CACHE INTERNAL "Include directories for KMSSAMPLEPLUGIN_JS_MV library"
)

set (KMSSAMPLEPLUGIN_JS_MV_LIBRARIES
  ${KMSSAMPLEPLUGIN_JS_MV_LIBRARY}
  ${KMSCORE_LIBRARIES}
  ${KMSELEMENTS_LIBRARIES}
  ${KMSFILTERS_LIBRARIES}
  ${REQUIRED_LIBRARIES}
  CACHE INTERNAL "Libraries for KMSSAMPLEPLUGIN_JS_MV"
)

include (FindPackageHandleStandardArgs)

find_package_handle_standard_args(KMSSAMPLEPLUGIN_JS_MV
  FOUND_VAR
    KMSSAMPLEPLUGIN_JS_MV_FOUND
  REQUIRED_VARS
    ${REQUIRED_VARS}
  VERSION_VAR
    KMSSAMPLEPLUGIN_JS_MV_VERSION
)

mark_as_advanced(
  KMSSAMPLEPLUGIN_JS_MV_FOUND
  KMSSAMPLEPLUGIN_JS_MV_VERSION
  KMSSAMPLEPLUGIN_JS_MV_INTERFACE_INCLUDE_DIR
  KMSSAMPLEPLUGIN_JS_MV_IMPLEMENTATION_INTERNAL_INCLUDE_DIR
  KMSSAMPLEPLUGIN_JS_MV_IMPLEMENTATION_GENERATED_INCLUDE_DIR
  KMSSAMPLEPLUGIN_JS_MV_IMPLEMENTATION_EXTRA_INCLUDE_DIR
  KMSSAMPLEPLUGIN_JS_MV_INTERFACE_EXTRA_INCLUDE_DIR
  KMSSAMPLEPLUGIN_JS_MV_INCLUDE_DIRS
  KMSSAMPLEPLUGIN_JS_MV_LIBRARY
  KMSSAMPLEPLUGIN_JS_MV_LIBRARIES
)
