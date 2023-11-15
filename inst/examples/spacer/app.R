library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  card(card_body("Card 1")),
  spacer(y = 10),
  card(card_body("Card 2")),
  spacer(y = 2),
  card(card_body("Card 3")),
  spacer(y = 10),
  div(
    class = "flex",
    card(card_body("Card 4")),
    spacer(x = 5),
    card(card_body("Card 5")),
    spacer(x = 1),
    card(card_body("Card 6"))
  )
)

server <- function(input, output, session) {}

if (interactive() || is_testing()) shinyApp(ui, server)
