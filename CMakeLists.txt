cmake_minimum_required(VERSION 3.16)
project(casadi_vendor)

find_package(ament_cmake REQUIRED)

include(ExternalProject)

set(casadi_INSTALL_DIR ${CMAKE_CURRENT_BINARY_DIR}/casadi_install)

ExternalProject_Add(casadi_ext
  GIT_REPOSITORY https://github.com/casadi/casadi
  GIT_TAG 3.6.5
  CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${casadi_INSTALL_DIR} -DWITH_PYTHON=OFF -DWITH_IPOPT=OFF -DWITH_OPENMP=ON -DCMAKE_BUILD_TYPE=Release
)

install(
  DIRECTORY ${casadi_INSTALL_DIR}/include/
  DESTINATION include
)

install(
  DIRECTORY ${casadi_INSTALL_DIR}/lib/
  DESTINATION lib
)

ament_package(CONFIG_EXTRAS "casadi_vendor-extras.cmake")
