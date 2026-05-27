test_that("theme_apa returns a valid ggplot2 theme object", {
  my_theme <- theme_apa()
  expect_true(ggplot2::is_theme(my_theme))
})

test_that("theme_apa applies custom element modifications correctly", {
  my_theme <- theme_apa(base_size = 14)

  # Check base_size
  expect_equal(my_theme$text$size, 14)

  # Check plot title modifications
  expect_equal(my_theme$plot.title$face, "bold")
  expect_equal(my_theme$plot.title$hjust, 0.5)

  # Check gridlines
  expect_s3_class(my_theme$panel.grid.major, "element_blank")
  expect_s3_class(my_theme$panel.grid.minor, "element_blank")
})

test_that("theme_apa assertions catch invalid base_size inputs", {
  expect_error(theme_apa(base_size = "12"), "Assertion on 'base_size' failed")
  expect_error(theme_apa(base_size = c(12, 14)), "Assertion on 'base_size' failed")
  expect_error(theme_apa(base_size = -5), "Assertion on 'base_size' failed")
})
