library(shiny)
library(shinyNextUI)

ui <- nextui_page(
  grid_container(
    gap = 2,
    grid(
      textInput(
        inputId = "text",
        value = "Plop",
        placeholder = "Next UI",
        label = "Text input"
      )
    ),
    grid(textOutput("text_val"))
  ),
  grid_container(
    gap = 2,
    grid(
      numericInput(
        inputId = "numeric",
        value = 10,
        label = "Numeric input"
      )
    ),
    grid(textOutput("numeric_val"))
  ),
  grid_container(
    gap = 2,
    grid(
      dateInput(
        inputId = "date",
        value = "2023-12-11",
        label = "Date input"
      )
    ),
    grid(textOutput("date_val"))
  )
)

server <- function(input, output, session) {
  output$text_val <- renderText(input$text)
  output$numeric_val <- renderText(input$numeric)
  output$date_val <- renderText(input$date)
}

if (interactive() || is_testing()) shinyApp(ui, server)
