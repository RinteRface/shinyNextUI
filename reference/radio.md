# Radio input

Radio input

## Usage

``` r
radio_input(inputId, ..., choices, selected = choices[1])

update_radio_input(
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

See <https://heroui.com/docs/components/radio-group> to get the list of
parameters to pass in `...`.

## See also

See <https://heroui.com/docs/components/radio-group>.

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
      disallowEmptySelection = TRUE,
      select_item(key = "buenos-aires", value = "buenos-aires", "Buenos Aires"),
      select_item(key = "sydney", value = "sydney", "Sydney")
    ),
    spacer(y = 2),
    radio_input(
      inputId = "radio",
      label = "Radios",
      description = "Radios are fun.",
      orientation = "horizontal",
      choices = c(
        "buenos-aires" = "Buenos Aires",
        "sydney" = "Sydney"
      )
    ),
    textOutput("radio_val")
  )
)

server <- function(input, output, session) {
  observeEvent(input$select, {
    update_radio_input(session, "radio", selected = input$select)
  })
  output$radio_val <- renderText(input$radio)
}

if (interactive() || is_testing()) shinyApp(ui, server)
```
