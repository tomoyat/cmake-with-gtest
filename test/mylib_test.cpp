#include "../src/lib/mylib.hpp"
#include <gtest/gtest.h>

TEST(MyLibTest, OK) {
  MyLib o;
  EXPECT_EQ(0, o.get_x());
}
