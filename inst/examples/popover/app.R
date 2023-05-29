library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  container(
    popover(
      isBordered = TRUE,
      disableShadow = TRUE,
      placement = "bottom-right",
      popover_trigger(badge("Click me!")),
      popover_content(
        css = JS("{textGradient: '45deg, $purple600 -20%, $pink600 100%'}"),
        "This is the content of the popover."
      )
    )
  )
)

server <- function(input, output, session) {}

if (interactive() || is_testing()) shinyApp(ui, server)
