survey_demo <- tibble::tibble(
  id = 1:10,
  satisfaction = c(1, 3, 4, 5, 2, 3, 4, 5, 1, 2),
  stress = c(4, 3, 2, 5, 4, 3, 2, 1, 5, 4),
  tags = c(
    "anxiety, depression",
    "stress, fatigue",
    "happiness, satisfaction",
    "anxiety",
    "fatigue, stress",
    "lethargy",
    "happiness",
    "satisfaction, stability",
    "depression",
    "fatigue, lethargy"
  )
)

usethis::use_data(survey_demo, overwrite = TRUE)
