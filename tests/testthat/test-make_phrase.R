
context("make phrase")

test_that("throw an error", {
  expect_error(make_phrase(num = 10,
                           num_word = "ten",
                           item = 10,
                           verb = "a-leaping",
                           adjective = "",
                           location = ""))

})
