#' Get all available Shiny app examples
#'
#' @return A character vector.
#' @export
get_examples <- function() {
  list.dirs(
    system.file("examples", package = "shinyNextUI"),
    full.names = FALSE,
    recursive = FALSE
  )
}

#' Run shinyNextUI example
#'
#' @param name Use \link{get_examples} to get
#' the available examples.
#'
#' @return Runs a Shiny app.
#' @export
run_example <- function(name) {
  shinyAppDir(
    system.file(
      sprintf("examples/%s", name),
      package = "shinyNextUI"
    )
  )
}
