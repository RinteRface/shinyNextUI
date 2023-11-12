library(shiny)
library(shinyNextUI)
library(shiny.react)

items <- list(
  # Dropdown section
  dropdown_section(
    showDivider = TRUE,
    title = "Section 1",
    # Dropdown Items
    list(
      dropdown_item(
        title = "Item 1",
        shortcut = "⌘N",
        color = "danger",
        description = "Item description",
        startContent = icon("clock")
      ),
      dropdown_item(
        title = "Item 2",
        shortcut = "⌘N",
        color = "success",
        description = "Item description",
        startContent = icon("home")
      ),
      dropdown_item(
        title = "External link",
        href = "https://nextui.org/",
        target = "_blank",
        description = "Go to nextui documentation"
      )
    )
  ),
  dropdown_section(
    showDivider = FALSE,
    title = "Section 2",
    # Dropdown Items
    list(
      dropdown_item(
        title = "Item 3",
        color = "warning",
        description = "Item description"
      ),
      dropdown_item(
        title = "Item 4"
      )
    )
  )
)

# You can also skip section
#items <- list(
#  dropdown_item(
#    title = "Item 1",
#    shortcut = "⌘N",
#    color = "danger",
#    description = "Item description"#,
#    #startContent = icon("clock")
#  ),
#  dropdown_item(
#    title = "Item 2",
#    shortcut = "⌘N",
#    color = "success",
#    description = "Item description"#,
#    #startContent = icon("home")
#  )
#)

ui <- nextui_page(
  debug_react = TRUE,
  div(
    class = "flex gap-2 my-2",
    dropdow_menu(
      inputId = "dropdown",
      label = "Dropdown menu",
      selected = "Item 2",
      variant = "bordered",
      disabledKeys = c("Item 3", "Item 4"),
      selectionMode = "multiple",
      choices = items
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
