library(shiny)
library(shinyNextUI)

ui <- nextui_page(
  container(
    gap = 0,
    row(
      gap = 4,
      col(card(card_body(h1("Card 1")))),
      col(card(card_body(h1("Card 2"))))
    ),
    spacer(y = 2),
    row(
      gap = 2,
      col(span = 4, card(card_body(h1("Card 1")))),
      col(span = 8, card(card_body(h1("Card 2"))))
    )
  )
)

server <- function(input, output, session) {}

if (interactive() || is_testing()) shinyApp(ui, server)
