#' Indicates whether testthat is running
#'
#' @return Boolean.
#'
#' @export
is_testing <- function() {
  identical(Sys.getenv("TESTTHAT"), "true")
}

#' Available sizes
#'
#' @export
#' @rdname nextui-defaults
sizes <- c("sm", "md", "lg")

#' Available colors
#'
#' @export
#' @rdname nextui-defaults
colors <- c(
  "default",
  "primary",
  "secondary",
  "success",
  "warning",
  "danger"
)

#' Available radiuses
#'
#' @export
#' @rdname nextui-defaults
radiuses <- c(
  "none",
  "sm",
  "md",
  "lg",
  "full"
)

#' Available tabs variants
#'
#' @export
#' @rdname nextui-defaults
tabs_variants <- c(
  "solid",
  "underlined",
  "bordered",
  "light"
)

#' Available select variants
#'
#' @export
#' @rdname nextui-defaults
select_variants <- c(
  "flat",
  "bordered",
  "underlined",
  "faded"
)
