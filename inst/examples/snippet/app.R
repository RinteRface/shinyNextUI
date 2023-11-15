library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  debug_react = TRUE,
  snippet("npm install @nextui-org/react", variant = "bordered"),
  spacer(y = 2),
  snippet("you can't copy me", hideCopyButton = TRUE),
  spacer(y = 2),
  snippet(
    color = "secondary",
    variant = "flat",
    span("npm install @nextui-org/react"),
    span("yarn add @nextui-org/react")
  )
)

server <- function(input, output, session) {

}

if (interactive() || is_testing()) shinyApp(ui, server)
