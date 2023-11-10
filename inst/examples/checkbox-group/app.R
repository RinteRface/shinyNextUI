library(shiny)
library(shinyNextUI)

ui <- nextui_page(
  debug_react = TRUE,
  div(
    class = "flex flex-col gap-1",
    spacer(y = 2),
    select_input(
      "select",
      label = "Tab to select:",
      value = JS("['sydney']"),
      disallowEmptySelection = TRUE,
      selectionMode = "multiple",
      select_item(key = "buenos-aires", value = "buenos-aires", "Buenos Aires"),
      select_item(key = "sydney", value = "sydney", "Sydney")
    ),
    checkboxgroup_input(
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
    update_checkboxgroup_input(session, "checkbox_group", selected = input$select)
  })
  output$checkbox_group_val <- renderText(input$checkbox_group)
}

if (interactive() || is_testing()) shinyApp(ui, server)
