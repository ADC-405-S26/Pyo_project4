test_that("scale_responses scales standard numeric vectors correctly", {
  # Simple sequence
  expect_equal(scale_responses(c(1, 2, 3, 4, 5)), c(0, 0.25, 0.5, 0.75, 1))

  # Negative to positive range
  expect_equal(scale_responses(c(-10, 0, 10)), c(0, 0.5, 1))

  # Decimals
  expect_equal(scale_responses(c(0.5, 1.0, 1.5)), c(0, 0.5, 1))
})

test_that("scale_responses handles missing values properly", {
  # NA should remain NA, but the rest scales
  expect_equal(scale_responses(c(1, NA, 5)), c(0, NA, 1))
})

test_that("scale_responses handles mathematical edge cases", {
  # Division by zero yields NaN
  expect_error(scale_responses(c(5, 5, 5)), "identical")
})

test_that("scale_responses assertions catch invalid inputs", {
  expect_error(scale_responses(c("a", "b", "c")), "Assertion on 'x' failed")
  expect_error(scale_responses(factor(c(1, 2, 3))), "Assertion on 'x' failed")
  expect_error(scale_responses(list(1, 2, 3)), "Assertion on 'x' failed")
})
