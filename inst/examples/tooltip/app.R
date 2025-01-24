library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  div(
    className = "flex align-items-start",
    tooltip(
      content = "A tooltip...",
      color = "primary",
      showArrow = TRUE,
      button("Click me!", color = "warning")
    )
  )
)

server <- function(input, output, session) {
}

if (interactive() || is_testing()) shinyApp(ui, server)
