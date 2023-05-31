library(shiny)
library(shinyNextUI)

ui <- nextui_page(
  grid_container(
    gap = 2,
    grid(
      actionButton("update_text", "Update text"),
      textAreaInput(
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
    grid(textOutput("textarea_val"))
  )
)

server <- function(input, output, session) {
  output$textarea_val <- renderText(input$textarea)

  observeEvent(input$update_text, {
    updateTextAreaInput(
      inputId = "textarea",
      value = "Updated value"
    )
  })
}

if (interactive() || is_testing()) shinyApp(ui, server)
