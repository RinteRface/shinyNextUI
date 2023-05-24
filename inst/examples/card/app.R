library(shiny)
library(shinyNextUI)

ui <- fluidPage(
  card(
    variant = "bordered",
    card_header("Card title"),
    card_divider(),
    card_body(h1("Card body")),
    card_divider(),
    card_footer("Card Footer")
  )
)

server <- function(input, output, session) {}

shinyApp(ui, server)
