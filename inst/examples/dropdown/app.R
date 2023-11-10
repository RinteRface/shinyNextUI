library(shiny)
library(shinyNextUI)
library(shiny.react)

items <- lapply(1:8, function(i) {
  dropdown_item(
    key = i,
    description = sprintf("Description %s", i),
    sprintf("Item %s", i)
  )
})

color <- "success"

ui <- nextui_page(
  debug_react = TRUE,
  div(
    class = "flex gap-2 my-2",
    dropdown(
      dropdown_trigger(
        button(
          "Trigger",
          color = color
        )
      ),
      dropdow_menu(
        inputId = "dropdown",
        color = color,
        disabledKeys = JS("['3', '4']"),
        selectionMode = "multiple",
        items,
        dropdown_section(
          dropdown_item(key = 9, "Item 9")
        )
      )
    )
  ),
  verbatimTextOutput("dropdown_val")
)

server <- function(input, output, session) {
  observe({
    print(input$dropdown)
  })
  output$dropdown_val <- renderText(input$dropdown)
}

if (interactive() || is_testing()) shinyApp(ui, server)
