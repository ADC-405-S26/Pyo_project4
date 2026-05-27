install.packages(c("devtools", "usethis", "checkmate", "ggplot2", "testthat"))

library(devtools)
library(usethis)

usethis::create_package("/cloud/project")

usethis:: use_mit_license()


usethis::use_package("checkmate")

devtools::check()


usethis::use_r("scale_responses")


devtools::document()
devtools::load_all()
devtools::check()


usethis::use_r("split_keywords")

devtools::load_all()

devtools::check()


usethis::use_package("ggplot2")
usethis::use_r("theme_apa")

devtools::document()
devtools::load_all()
devtools::check()


usethis::use_data_raw("survey_demo")
usethis::use_r("data")


devtools::document()
devtools::load_all()
devtools::check()

usethis::use_test("scale_responses")

usethis::use_test("split_keywords")

usethis::use_test("theme_apa")


devtools::load_all()
devtools::test()
devtools::check()


usethis::use_vignette("getting-started")

devtools::document()
devtools::check()



usethis::use_pkgdown()
pkgdown::build_site()

usethis::use_readme_rmd()
devtools::build_readme()
pkgdown::build_site()

usethis::use_build_ignore("script")

install.packages(c("devtools", "ggplot2", "checkmate", "testthat", "pkgdown"))
library(devtools)

devtools::document()
devtools::load_all()
devtools::test()
devtools::check()

devtools::build_readme()
pkgdown::build_site()
