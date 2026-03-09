cmake_minimum_required(VERSION 3.16)
project(casadi_vendor)

find_package(ament_cmake REQUIRED)

include(ExternalProject)

ExternalProject_Add(casadi
  GIT_REPOSITORY https://github.com/casadi/casadi
  GIT_TAG 3.6.5
  CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX} -DWITH_PYTHON=OFF -DWITH_IPOPT=OFF -DWITH_OPENMP=ON -DCMAKE_BUILD_TYPE=Release
)
