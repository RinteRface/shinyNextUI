#' Demo app
#'
#' @export
#'
#' @import shiny
run_app <- function() {
  shinyApp(
    ui = tagList(
      Button(color = "primary", "Test Button")
    ),
    server = function(input, output) {}
  )
}
