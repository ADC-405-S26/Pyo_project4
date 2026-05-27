test_that("split_keywords splits and trims correctly", {
  res <- split_keywords("anxiety, depression")
  expect_equal(res[[1]], c("anxiety", "depression"))
})

test_that("split_keywords works with multiple inputs (vector to list)", {
  res <- split_keywords(c("stress", "fatigue, lethargy"))
  expect_length(res, 2)
  expect_equal(res[[2]], c("fatigue", "lethargy"))
})

test_that("split_keywords assertions catch invalid inputs", {
  # Numeric input
  expect_error(split_keywords(123), "Assertion on 'x' failed")

  # Invalid separator
  expect_error(split_keywords("anxiety, depression", sep = 1), "Assertion on 'sep' failed")
})
