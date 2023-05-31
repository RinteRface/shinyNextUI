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
  grid_container(
    gap = 2,
    grid(
      dropdown(
        dropdown_button("Trigger", flat = TRUE, color = color),
        dropdow_menu(
          isVirtualized = TRUE,
          color = color,
          inputId = "dropdown",
          disabledKeys = JS("['3', '4']"),
          selectionMode = "multiple",
          items,
          dropdown_section(
            dropdown_item(key = 9, "Item 9")
          )
        )
      )
    ),
    grid(verbatimTextOutput("dropdown_val"))
  )
)

server <- function(input, output, session) {
  observe({
    print(input$dropdown)
  })
  output$dropdown_val <- renderText(input$dropdown)
}

if (interactive() || is_testing()) shinyApp(ui, server)
