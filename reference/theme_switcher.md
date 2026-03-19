# Theme switcher helper

Change between light and dark mode

## Usage

``` r
theme_switcher(
  value = TRUE,
  label = "Change theme",
  startContent = sun_icon(),
  endContent = moon_icon()
)
```

## Arguments

- value:

  Switch status.

- label:

  Input label.

- startContent:

  Icon when selected.

- endContent:

  Icon when not selected.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Examples

``` r
if (interactive()) {
  library(shiny)
  library(shinyNextUI)
  library(shiny.react)

  ui <- nextui_page(
    theme_switcher(),
    card(card_body("My card"))
  )

  server <- function(input, output, session) {
    observe({
      print(input$theme)
    })
  }

  shinyApp(ui, server)

}
```
