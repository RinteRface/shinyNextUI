# Dropdown menu

Dropdown menu

## Usage

``` r
dropdow_menu(inputId, ..., choices = NULL, selected = NULL)

dropdown_item(...)

dropdown_section(...)

update_dropdown(session = shiny::getDefaultReactiveDomain(), inputId, ...)
```

## Arguments

- inputId:

  Unique input id.

- ...:

  Props.

- choices:

  Radio choices.

- selected:

  Default selected value.

- session:

  Shiny session.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.
The update functions return nothing (called for side effects).

## Details

See <https://heroui.com/docs/components/dropdown> to get the list of
parameters to pass in `...`.

## Note

Container for related dropdown_item.

## See also

See <https://heroui.com/docs/components/dropdown>.

## Examples

``` r
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
        shortcut = "\u2318N",
        color = "danger",
        description = "Item description",
        startContent = icon("clock")
      ),
      dropdown_item(
        title = "Item 2",
        shortcut = "\u2318N",
        color = "success",
        description = "Item description",
        startContent = icon("home")
      ),
      dropdown_item(
        title = "External link",
        href = "https://heroui.com/",
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
#    shortcut = "\u2318N",
#    color = "danger",
#    description = "Item description"#,
#    #startContent = icon("clock")
#  ),
#  dropdown_item(
#    title = "Item 2",
#    shortcut = "\u2318N",
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
```
