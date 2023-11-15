library(shiny)
library(shinyNextUI)

ui <- nextui_page(
  div(
    class = "flex gap-5",
    action_button("update_text", "Update text"),
    textarea_input(
      inputId = "textarea",
      placeholder = "Enter your amazing ideas.",
      label = "Text area input",
      bordered = TRUE,
      color = "secondary",
      status = "secondary",
      helperColor = "error",
      helperText = "Click on update text"
    )
  ),
  textOutput("textarea_val")
)

server <- function(input, output, session) {
  output$textarea_val <- renderText(input$textarea)

  observeEvent(input$update_text, {
    update_textarea_input(
      inputId = "textarea",
      value = "Updated value"
    )
  })
}

if (interactive() || is_testing()) shinyApp(ui, server)
