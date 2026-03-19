# Action button

This is a higher level wrapper of action_button to match vanilla's Shiny
syntax and parameters.

This is a higher level wrapper of update_action_button to match
vanilla's Shiny syntax and parameters.

Buttons allow users to perform actions and choose with a single tap.

## Usage

``` r
actionButton(inputId, label, icon = NULL, width = NULL, ...)

updateActionButton(
  session = getDefaultReactiveDomain(),
  inputId,
  label = NULL,
  icon = NULL
)

button(...)

action_button(inputId, ..., value = default_value)

update_action_button(session = shiny::getDefaultReactiveDomain(), inputId, ...)
```

## Arguments

- inputId:

  The `input` slot that will be used to access the value.

- label:

  The contents of the button or link–usually a text label, but you could
  also use any other HTML, like an image.

- icon:

  An optional [`icon()`](https://rdrr.io/pkg/shiny/man/icon.html) to
  appear on the button.

- width:

  Not used with NextUI but left for compatibility.

- ...:

  Named attributes to be applied to the button or link.

- session:

  The `session` object passed to function given to `shinyServer`.
  Default is
  [`getDefaultReactiveDomain()`](https://rdrr.io/pkg/shiny/man/domains.html).

- value:

  Starting value.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.
The update functions return nothing (called for side effects).

An object of class `shiny.tag` containing the necessary configuration
and including options such as JavaScript dependencies to instantiate a
HeroUI button component.

## Details

- **children**. Type: `ReactNode`. Default: `NA`.

- **variant**. Type:
  `solid OR bordered OR light OR flat OR faded OR shadow OR ghost`.
  Default: `"solid"`.

- **color**. Type:
  `default OR primary OR secondary OR success OR warning OR danger`.
  Default: `"default"`.

- **size**. Type: `sm OR md OR lg`. Default: `"md"`.

- **radius**. Type: `none OR sm OR md OR lg OR full`. Default: `NA`.

- **startContent**. Type: `ReactNode`. Default: `NA`.

- **endContent**. Type: `ReactNode`. Default: `NA`.

- **spinner**. Type: `ReactNode`. Default: `NA`.

- **spinnerPlacement**. Type: `start OR end`. Default: `"start"`.

- **fullWidth**. Type: `boolean`. Default: `false`.

- **isIconOnly**. Type: `boolean`. Default: `false`.

- **isDisabled**. Type: `boolean`. Default: `false`.

- **isLoading**. Type: `boolean`. Default: `false`.

- **disableRipple**. Type: `boolean`. Default: `false`.

- **disableAnimation**. Type: `boolean`. Default: `false`.

&nbsp;

- **onPress**. Type: `(e: PressEvent) => void`. Default: `NA`.

- **onPressStart**. Type: `(e: PressEvent) => void`. Default: `NA`.

- **onPressEnd**. Type: `(e: PressEvent) => void`. Default: `NA`.

- **onPressChange**. Type: `(isPressed: boolean) => void`. Default:
  `NA`.

- **onPressUp**. Type: `(e: PressEvent) => void`. Default: `NA`.

- **onKeyDown**. Type: `(e: KeyboardEvent) => void`. Default: `NA`.

- **onKeyUp**. Type: `(e: KeyboardEvent) => void`. Default: `NA`.

- **onClick**. Type: `MouseEventHandler`. Default: `NA`.

&nbsp;

- **children**. Type: `ReactNode OR ReactNode[]`. Default: `NA`.

- **variant**. Type:
  `solid OR bordered OR light OR flat OR faded OR shadow OR ghost`.
  Default: `"solid"`.

- **color**. Type:
  `default OR primary OR secondary OR success OR warning OR danger`.
  Default: `"default"`.

- **size**. Type: `sm OR md OR lg`. Default: `"md"`.

- **radius**. Type: `none OR sm OR md OR lg OR full`. Default: `"xl"`.

- **fullWidth**. Type: `boolean`. Default: `false`.

- **isDisabled**. Type: `boolean`. Default: `false`.

## See also

See <https://heroui.com/docs/components/button> and action_button to get
the list of possible parameters.

See <https://heroui.com/docs/components/button>.

## Examples

``` r
library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  reactOutput("button")
)

server <- function(input, output, session) {
  n_click <- reactiveVal(0)
  observeEvent(input$clicked, {
    n_click(n_click() + 1)
  })

  output$button <- renderReact({
    action_button(
      inputId = "clicked",
      color = "primary",
      shadow = TRUE,
      sprintf(
        "Test Button. You clicked: %s times.",
        n_click()
      )
    )
  })

  exportTestValues(n_click = n_click())
}

if (interactive() || is_testing()) shinyApp(ui, server)
library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  reactOutput("button")
)

server <- function(input, output, session) {
  n_click <- reactiveVal(0)
  observeEvent(input$clicked, {
    n_click(n_click() + 1)
  })

  output$button <- renderReact({
    action_button(
      inputId = "clicked",
      color = "primary",
      shadow = TRUE,
      sprintf(
        "Test Button. You clicked: %s times.",
        n_click()
      )
    )
  })

  exportTestValues(n_click = n_click())
}

if (interactive() || is_testing()) shinyApp(ui, server)
library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  reactOutput("button")
)

server <- function(input, output, session) {
  n_click <- reactiveVal(0)
  observeEvent(input$clicked, {
    n_click(n_click() + 1)
  })

  output$button <- renderReact({
    action_button(
      inputId = "clicked",
      color = "primary",
      shadow = TRUE,
      sprintf(
        "Test Button. You clicked: %s times.",
        n_click()
      )
    )
  })

  exportTestValues(n_click = n_click())
}

if (interactive() || is_testing()) shinyApp(ui, server)
```
