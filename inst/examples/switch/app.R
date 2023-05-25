library(shiny)
library(shinyNextUI)

ui <- nextui_page(
  grid_container(
    gap = 2,
    grid(
      switchInput(
        inputId = "switch",
        value = TRUE,
        size = "xs",
        shadow = TRUE
      )
    ),
    grid(textOutput("switch_val"))
  )
)

server <- function(input, output, session) {
  output$switch_val <- renderText(input$switch)
}

if (interactive() || is_testing()) shinyApp(ui, server)
