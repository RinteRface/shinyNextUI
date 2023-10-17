library(shiny)
library(shinyNextUI)

ui <- nextui_page(
  div(
    class = "flex gap-1",
    checkbox_group_input(
      inputId = "checkbox_group",
      label = "Checkbox Group",
      choices = c(
        "choice 1" = "My first choice",
        "choice 2" = "My second choice"
      ),
      orientation = "horizontal",
      color = "secondary",
      selected = "choice 2"
    ),
    textOutput("checkbox_group_val")
  )
)

server <- function(input, output, session) {
  output$checkbox_group_val <- renderText(input$checkbox_group)
}

if (interactive() || is_testing()) shinyApp(ui, server)
