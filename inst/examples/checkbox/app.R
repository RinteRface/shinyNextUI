library(shiny)
library(shinyNextUI)

ui <- nextui_page(
  div(
    class = "flex gap-1",
    checkbox_input(
      inputId = "checkbox",
      value = TRUE,
      "My checkbox",
      isRounded = TRUE,
      color = "warning",
      lineThrough = TRUE
    ),
    textOutput("check_val")
  )
)

server <- function(input, output, session) {
  output$check_val <- renderText(input$checkbox)
}

if (interactive() || is_testing()) shinyApp(ui, server)
