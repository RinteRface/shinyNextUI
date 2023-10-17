library(shiny)
library(shinyNextUI)

ui <- nextui_page(
  div(
    class = "flex gap-1",
    text_input(
      inputId = "text",
      value = "Plop",
      placeholder = "Next UI",
      label = "Text input"
    ),
    textOutput("text_val")
  ),
  spacer(y = 5),
  div(
    class = "flex gap-1",
    numeric_input(
      inputId = "numeric",
      value = 10,
      label = "Numeric input"
    ),
    textOutput("numeric_val")
  ),
  spacer(y = 5),
  div(
    class = "flex gap-1",
    date_input(
      inputId = "date",
      value = "2023-12-11",
      label = "Date input"
    ),
    textOutput("date_val")
  )
)

server <- function(input, output, session) {
  output$text_val <- renderText(input$text)
  output$numeric_val <- renderText(input$numeric)
  output$date_val <- renderText(input$date)
}

if (interactive() || is_testing()) shinyApp(ui, server)
