library(shiny)
library(shinyNextUI)

ui <- nextui_page(
  div(
    class = "flex gap-1",
    radio_input(
      inputId = "radio",
      label = "Radios",
      choices = c(
        "choice 1" = "My first choice",
        "choice 2" = "My second choice"
      ),
      selected = "choice 2"
    ),
    textOutput("radio_val")
  )
)

server <- function(input, output, session) {
  output$radio_val <- renderText(input$radio)
}

if (interactive() || is_testing()) shinyApp(ui, server)
