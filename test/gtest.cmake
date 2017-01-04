include(ExternalProject)

ExternalProject_Add(
  GoogleTest
  GIT_REPOSITORY https://github.com/google/googletest.git
  GIT_TAG release-1.8.0
  PREFIX ${PROJECT_SOURCE_DIR}/third_party
  INSTALL_COMMAND ""
  LOG_DOWNLOAD ON
)

ExternalProject_Get_Property(GoogleTest source_dir binary_dir)

include_directories(${source_dir}/googletest/include/)

add_library(gtest STATIC IMPORTED)
set_property(
  TARGET gtest
  PROPERTY IMPORTED_LOCATION ${binary_dir}/googlemock/gtest/libgtest.a
)
add_library(gtest_main STATIC IMPORTED)
set_property(
  TARGET gtest_main
  PROPERTY IMPORTED_LOCATION ${binary_dir}/googlemock/gtest/libgtest_main.a
)
