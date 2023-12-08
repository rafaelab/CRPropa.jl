# cmake .. -DCMAKE_INSTALL_PREFIX=$PWD -DCRPROPA_INCLUDES=/Users/rab/Dropbox/softwares/CRPropa/CRPropa3-current/build/include -DCRPROPA_LIBRARY=/Users/rab/Dropbox/softwares/CRPropa/CRPropa3-current/build

cmake_minimum_required(VERSION 3.5)
project(CRPropaJL C CXX)



# require C++17
# Note: CRPropa requires C++11
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17")



# 
set(CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake" ${CMAKE_MODULE_PATH})



# dependency: JlCxx
# add_subdirectory(external/libcxxwrap-julia)
# set(JlCxx_DIR "${CMAKE_CURRENT_SOURCE_DIR}/external/libcxxwrap-julia")
set(JlCxx_DIR "/Users/rab/.julia/artifacts/2526f1faf6c345898421326fb03a88a5e7875b71/lib/cmake/JlCxx")
# set(JlCxx_INCLUDES "${JlCxx_DIR}/../../../include")
set(JlCxx_INCLUDES "${CMAKE_CURRENT_SOURCE_DIR}/external/libcxxwrap-julia/include")
message(STATUS "JlCxx: ${JlCxx_DIR}")
message(STATUS "JlCxx headers: ${JlCxx_INCLUDES}")

find_package(JlCxx)
get_target_property(JlCxx_location JlCxx::cxxwrap_julia LOCATION)
get_filename_component(JlCxx_location ${JlCxx_location} DIRECTORY)
set(CMAKE_INSTALL_RPATH "${CMAKE_INSTALL_PREFIX}/lib;${JlCxx_location}")
message(STATUS "JlCxx: ${JlCxx_location}")

# get information on CRPropa
find_path(CRPROPA_INCLUDES CRPropa.h HINTS crpropa/ include/crpropa ${CRPROPA_INSTALL_PREFIX}/include/)
find_library(CRPROPA_LIBRARY NAMES crpropa libcrpropa HINTS crpropa/ lib/crpropa crpropa/lib ${CRPROPA_INSTALL_PREFIX}/lib/)

message(STATUS "CRPropa headers: ${CRPROPA_INCLUDES}")
message(STATUS "CRPropa lib: ${CRPROPA_LIBRARY}")


# link libraries
include_directories(include ${CMAKE_CURRENT_BINARY_DIR}/include ${CRPROPA_INCLUDES} ${Julia_INCLUDE_DIRS}  ${JlCxx_INCLUDES} ${CMAKE_CURRENT_SOURCE_DIR})
add_library(crpropajl SHARED src/CRPropaJL.cpp)
target_link_libraries(crpropajl JlCxx::cxxwrap_julia)


# ----------------------------------------------------------------------------
# Install
# ----------------------------------------------------------------------------
# install(FILES "${CMAKE_CURRENT_BINARY_DIR}/${PLUGINNAME}.py" DESTINATION "${PYTHON_SITE_PACKAGES}/${PLUGINNAME}")
# install(TARGETS ${PLUGINNAME} DESTINATION lib)
# install(DIRECTORY include/ DESTINATION include FILES_MATCHING PATTERN "*.h")
# install(DIRECTORY ${CMAKE_BINARY_DIR}/include/ DESTINATION include FILES_MATCHING PATTERN "*.h")

# install(FILES "${CMAKE_CURRENT_BINARY_DIR}/${PLUGINNAME}.py" DESTINATION "${PYTHON_SITE_PACKAGES}/${PLUGINNAME}")
# install(TARGETS ${PLUGINNAME} LIBRARY DESTINATION "${PYTHON_SITE_PACKAGES}/${PLUGINNAME}")

install(
	TARGETS crpropajl 
	LIBRARY DESTINATION lib
	ARCHIVE DESTINATION lib
	RUNTIME DESTINATION lib
	)