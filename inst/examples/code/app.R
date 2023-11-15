library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  div(
    class = "flex gap-2 my-2",
    code_block(
      size = "lg",
      color = "secondary",
      radius = "full",
      "npm install @nextui-org/react"
    )
  )
)

server <- function(input, output, session) {

}

if (interactive() || is_testing()) shinyApp(ui, server)
