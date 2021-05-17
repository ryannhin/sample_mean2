context("pluralize gift")

test_that("correct output", {
  expect_equal(pluralize_gift("cat"), "cats")
  expect_equal(pluralize_gift("bunny"), "bunnies")
})
