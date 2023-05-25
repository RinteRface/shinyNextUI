#' Indicates whether testthat is running
#'
#' @return Boolean.
#'
#' @export
is_testing <- function() {
  identical(Sys.getenv("TESTTHAT"), "true")
}
