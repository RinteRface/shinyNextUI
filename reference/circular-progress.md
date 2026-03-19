# circular-progress

Circular progress indicators are utilized to indicate an undetermined
wait period or visually represent the duration of a process.

## Usage

``` r
circular_progress(...)
```

## Arguments

- ...:

  Props to pass to the component. The allowed props are listed below in
  the **Details** section.

## Value

An object of class `shiny.tag` containing the necessary configuration
and including options such as JavaScript dependencies to instantiate a
HeroUI circular-progress component.

## Details

- **label**. Type: `ReactNode`. Default: `NA`.

- **size**. Type: `sm OR md OR lg`. Default: `"md"`.

- **color**. Type:
  `default OR primary OR secondary OR success OR warning OR danger`.
  Default: `"primary"`.

- **value**. Type: `number`. Default: `NA`.

- **valueLabel**. Type: `ReactNode`. Default: `NA`.

- **minValue**. Type: `number`. Default: `"0"`.

- **maxValue**. Type: `number`. Default: `"100"`.

- **formatOptions**. Type: `Intl.NumberFormat`. Default:
  `"{style: 'percent'}"`.

- **isIndeterminate**. Type: `boolean`. Default: `true`.

- **showValueLabel**. Type: `boolean`. Default: `true`.

- **strokeWidth**. Type: `number`. Default: `"2"`.

- **isDisabled**. Type: `boolean`. Default: `false`.

- **disableAnimation**. Type: `boolean`. Default: `false`.

- **classNames**. Type:
  `Partial<Record<'base'OR'svgWrapper'OR'svg'OR'track'OR'indicator'OR'value'OR'label', string>>`.
  Default: `NA`.

## See also

See <https://heroui.com/docs/components/circular-progress>.

## Examples

``` r
library(shiny)
library(shinyNextUI)

ui <- nextui_page(
  dark_mode = TRUE,
  div(
    class = "flex gap-4",
    card(
      class = "",
      card_body(
        class = "grid grid-cols-2 gap-4",
        circular_progress(
          value = 3,
          showValueLabel = TRUE,
          strokeWidth = 4,
          size = "lg",
          minValue = 0,
          maxValue = 150,
          valueLabel = div(icon("battery-full", class = "mx-1"), "2%"),
          color = "danger"
        ),
        circular_progress(
          value = 120,
          showValueLabel = TRUE,
          strokeWidth = 4,
          size = "lg",
          minValue = 0,
          maxValue = 150,
          valueLabel = div(icon("mobile-screen-button", class = "mx-1"), "80%"),
          color = "success"
        )
      )
    )
  )
)

server <- function(input, output, session) {

}

if (interactive() || is_testing()) shinyApp(ui, server)
```
