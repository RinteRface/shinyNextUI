library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  debug_react = TRUE,
  card(
    card_header("Header"),
    divider(),
    card_body("Body"),
    divider(),
    card_footer("Footer")
  )
)

server <- function(input, output, session) {

}

if (interactive() || is_testing()) shinyApp(ui, server)
