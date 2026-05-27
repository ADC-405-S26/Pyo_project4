#' Split comma-separated survey keywords
#'
#' Useful for open-ended responses such as "anxiety,depression".
#' @param x A character vector with one element.
#' @param sep A single character to split on, default is ",".
#'
#' @returns A character vector of trimmed keywords.
#' @export
#'
#' @examples
#' split_keywords("anxiety, depression, stress")
#' split_keywords(c("happiness, satisfaction", "fatigue, lethargy"))
  split_keywords <- function(x, sep = ",") {
    checkmate::assert_character(x, any.missing = FALSE)
    checkmate::assert_string(sep)

    raw_list <- strsplit(x, split = sep, fixed = TRUE)

    cleaned_list <- lapply(raw_list, function(v) {
      out <- trimws(v)
      out[nzchar(out)]
    })

    cleaned_list
  }
