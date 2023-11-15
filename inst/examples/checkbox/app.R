library(shiny)
library(shinyNextUI)

ui <- nextui_page(
  div(
    class = "flex gap-1",
    action_button("update", "Toggle checkbox"),
    spacer(y = 2),
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
  observeEvent(input$update, {
    update_checkbox_input(session, "checkbox", value = !input$checkbox)
  })
}

if (interactive() || is_testing()) shinyApp(ui, server)
