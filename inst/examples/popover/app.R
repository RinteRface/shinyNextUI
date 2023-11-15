library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  popover(
    showArrow = TRUE,
    placement = "right",
    popover_trigger(button("Click me!", color = "primary")),
    popover_content(
      "This is the content of the popover."
    )
  )
)

server <- function(input, output, session) {}

if (interactive() || is_testing()) shinyApp(ui, server)
