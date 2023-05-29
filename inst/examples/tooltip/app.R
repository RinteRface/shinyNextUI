library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  container(
    tooltip(
      content = "A tooltip...",
      rounded = TRUE,
      color = "primary",
      trigger = "click",
      placement = "rightEnd",
      hideArrow = FALSE,
      badge("Click me!")
    )
  )
)

server <- function(input, output, session) {}

if (interactive() || is_testing()) shinyApp(ui, server)
