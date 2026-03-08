add_library(casadi SHARED IMPORTED)

set_target_properties(casadi PROPERTIES
  IMPORTED_LOCATION
    "${casadi_vendor_DIR}/../../../lib/libcasadi.so"
  INTERFACE_INCLUDE_DIRECTORIES
    "${casadi_vendor_DIR}/../../../include"
)
