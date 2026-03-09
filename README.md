# casadi_vendor

`CMakeLists.txt`:

```cmake
find_package(casadi REQUIRED)

target_link_libraries(my_target casadi)
```

`package.xml`:

```xml
<depend>casadi_vendor</depend>
```