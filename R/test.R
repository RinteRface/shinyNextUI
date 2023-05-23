#' Helper to test package components
#'
#' @param el Component function like \link{card}.
#' @param props Component props. A list or leave NULL.
#' @param children Component children when applicable.
#' A list of tags or leave NULL.
#'
#' @return A shiny app object. Can be used with shinytest2.
#' @export
#'
#' @examples
#' if (interactive()) {
#'  run_app_test(
#'   el = card,
#'   props = list(variant = "bordered"),
#'   children = tagList(
#'    card_header("Card title"),
#'    card_divider(),
#'    card_body(h1("Card body")),
#'    card_divider(),
#'    card_footer("Card Footer")
#'   )
#'  )
#' }
run_app_test <- function(el, props = list(), children = tagList()) {
  shinyApp(
    ui = tagList(
      enableReactDebugMode(),
      do.call(el, c(props, children))
    ),
    server = function(input, output, session) {
      observe({
        print(input$test)
      })
    }
  )
}
