library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  tooltip(
    content = "A tooltip...",
    color = "primary",
    triggerType = "dialog",
    placement = "right-end",
    showArrow = TRUE,
    offset = 15,
    badge("Click me!")
  )
)

server <- function(input, output, session) {}

if (interactive() || is_testing()) shinyApp(ui, server)
