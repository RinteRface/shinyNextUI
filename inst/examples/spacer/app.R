library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  card(card_body("Card 1")),
  spacer(y = 10),
  card(card_body("Card 2")),
  spacer(y = 2),
  container(
    gap = 0,
    css = JS("{ d: 'flex', flexWrap: 'nowrap' }"),
    card(card_body("Card 3")),
    spacer(x = 4),
    card(card_body("Card 4"))
  )
)

server <- function(input, output, session) {}

if (interactive() || is_testing()) shinyApp(ui, server)
