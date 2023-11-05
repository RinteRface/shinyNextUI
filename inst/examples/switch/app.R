library(shiny)
library(shinyNextUI)

ui <- nextui_page(
  div(
    class = "flex",
    action_button("update", "Toggle switch"),
    spacer(y = 2),
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
  observeEvent(input$update, {
    update_switch_input(session, "switch", value = !input$switch)
  })
}

if (interactive() || is_testing()) shinyApp(ui, server)
