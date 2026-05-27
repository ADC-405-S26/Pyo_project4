#' Scale survey responses by min-max
#'
#' Convenience function to scale Likert-type responses to the 0-1 range.
#'
#' @param x A numeric vector of responses
#'
#' @returns A numeric vector scaled to 0-1 range.
#' @export
#'
#' @examples
#' x <- 1:5
#' scale_responses(x)
scale_responses <- function(x)
{
  checkmate::assert_numeric(x)

  if (max(x, na.rm = TRUE) == min(x, na.rm = TRUE)) {
    stop("All values in `x` are identical; cannot scale because the range is zero.", call. = FALSE)
  }

  y <- (x - min(x, na.rm = TRUE)) / (max(x, na.rm = TRUE) - min(x, na.rm = TRUE))

  return(y)
}
