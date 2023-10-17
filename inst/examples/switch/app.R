library(shiny)
library(shinyNextUI)

ui <- nextui_page(
  div(
    class = "flex",
    switch_input(
      inputId = "switch",
      value = TRUE,
      size = "xs",
      shadow = TRUE
    ),
    textOutput("switch_val")
  )
)

server <- function(input, output, session) {
  output$switch_val <- renderText(input$switch)
}

if (interactive() || is_testing()) shinyApp(ui, server)
