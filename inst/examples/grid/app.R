library(shiny)
library(shinyNextUI)

ui <- nextui_page(
  grid_container(
    gap = 2,
    justify = "center",
    grid(xs = 8, card(card_body(h1("Card 1")))),
    grid(xs = 4, card(card_body(h1("Card 2")))),
    grid(xs = 6, card(card_body(h1("Card 3")))),
    grid(xs = 6, card(card_body(h1("Card 4"))))
  )
)

server <- function(input, output, session) {}

if (interactive() || is_testing()) shinyApp(ui, server)
