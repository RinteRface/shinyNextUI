# Checkbox group input

Checkbox group input

## Usage

``` r
checkboxgroup_input(inputId, ..., choices, selected = NULL)

update_checkboxgroup_input(
  session = shiny::getDefaultReactiveDomain(),
  inputId,
  ...,
  choices = NULL,
  selected = NULL
)
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

See <https://heroui.com/docs/components/checkbox-group> to get the list
of parameters to pass in `...`.

## See also

See <https://heroui.com/docs/components/checkbox-group>.

## Examples

``` r
library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  debug_react = TRUE,
  div(
    class = "flex flex-col gap-1",
    spacer(y = 2),
    select_input(
      "select",
      label = "Tab to select:",
      value = JS("['sydney']"),
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
    update_checkboxgroup_input(session, "checkbox_group", selected = input$select)
  }, ignoreNULL = FALSE)
  output$checkbox_group_val <- renderText(input$checkbox_group)
}

if (interactive() || is_testing()) shinyApp(ui, server)
```
