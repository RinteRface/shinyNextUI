library(shiny)
library(shinyNextUI)

ui <- nextui_page(
  debug_react = TRUE,
  div(
    class = "flex gap-1",
    select(
      "select",
      label = "Tab to select:",
      value = JS("['sydney']"),
      disallowEmptySelection = TRUE,
      selectionMode = "multiple",
      select_item(key = "buenos-aires", value = "buenos-aires", "Buenos Aires"),
      select_item(key = "sydney", value = "sydney", "Sydney")
    ),
    checkbox_group_input(
      inputId = "checkbox_group",
      label = "Checkbox Group",
      choices = c(
        "buenos-aires" = "Buenos Aires",
        "sydney" = "Sydney"
      ),
      orientation = "horizontal",
      color = "secondary"
    ),
    textOutput("checkbox_group_val")
  )
)

server <- function(input, output, session) {
  observeEvent(input$select, {
    print(input$select)
    update_checkbox_group_input(session, "checkbox_group", selected = input$select)
  })
  output$checkbox_group_val <- renderText(input$checkbox_group)
}

if (interactive() || is_testing()) shinyApp(ui, server)
