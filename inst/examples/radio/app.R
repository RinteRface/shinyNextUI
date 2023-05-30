library(shiny)
library(shinyNextUI)

ui <- nextui_page(
  grid_container(
    gap = 2,
    grid(
      radioButtons(
        inputId = "radio",
        label = "Radios",
        choices = c(
          "choice 1" = "My first choice",
          "choice 2" = "My second choice"
        ),
        selected = "choice 2"
      )
    ),
    grid(textOutput("radio_val"))
  )
)

server <- function(input, output, session) {
  output$radio_val <- renderText(input$radio)
}

if (interactive() || is_testing()) shinyApp(ui, server)
