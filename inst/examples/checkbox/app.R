library(shiny)
library(shinyNextUI)

ui <- nextui_page(
  grid_container(
    gap = 2,
    grid(
      checkbox_input(
        inputId = "checkbox",
        value = TRUE,
        "My checkbox",
        isRounded = TRUE,
        color = "warning",
        lineThrough = TRUE
      )
    ),
    grid(textOutput("check_val"))
  )
)

server <- function(input, output, session) {
  output$check_val <- renderText(input$checkbox)
}

if (interactive() || is_testing()) shinyApp(ui, server)
