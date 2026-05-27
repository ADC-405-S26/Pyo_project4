#' A minimal APA-style theme for ggplot2
#'
#' Provides a simple, clean theme suitable for psychology papers and slides.
#'
#' @param base_size base font size, given in pts.
#' @param base_family base font family
#'
#' @return A ggplot2 theme object.
#' @export
#'
#' @examples
#' library(ggplot2)
#' p <- ggplot(mtcars, aes(wt, mpg)) + geom_point()
#' p + theme_apa()
#'
theme_apa <- function(base_size = 11, base_family = "") {
  checkmate::assert_number(base_size, lower = 0)

  ggplot2::theme_minimal(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      panel.grid.major = ggplot2::element_blank(),
      panel.grid.minor = ggplot2::element_blank(),
      axis.line = ggplot2::element_line(colour = "black"),
      axis.title = ggplot2::element_text(face = "bold"),
      plot.title = ggplot2::element_text(face = "bold", hjust = 0.5),
      legend.position = "bottom"
    )
}
