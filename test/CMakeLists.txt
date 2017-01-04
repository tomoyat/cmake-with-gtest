include(gtest.cmake)

function (add_gtest_target test_name)
  add_executable(${test_name} ${test_name}.cpp)
  add_dependencies(${test_name} GoogleTest)
  target_link_libraries(${test_name} gtest gtest_main mylib)
  add_test(
    NAME ${test_name}
    COMMAND $<TARGET_FILE:${test_name}>)
endfunction()

set(gtest_targets
  mylib_test
)

foreach(target ${gtest_targets})
  add_gtest_target(${target})
endforeach()
