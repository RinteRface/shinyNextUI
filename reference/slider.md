# slider

A slider allows a user to select one or more values within a range.

## Usage

``` r
slider_input(inputId, ..., value = default_value)

update_slider_input(session = shiny::getDefaultReactiveDomain(), inputId, ...)
```

## Arguments

- inputId:

  ID of the component.

- ...:

  Props to pass to the component. The allowed props are listed below in
  the **Details** section.

- value:

  Starting value.

- session:

  Object passed as the `session` argument to Shiny server.

## Value

An object of class `shiny.tag` containing the necessary configuration
and including options such as JavaScript dependencies to instantiate a
HeroUI slider component.

## Details

- **label**. Type: `ReactNode`. Default: `NA`.

- **name**. Type: `string`. Default: `NA`.

- **size**. Type: `sm OR md OR lg`. Default: `"md"`.

- **color**. Type:
  `foreground OR primary OR secondary OR success OR warning OR danger`.
  Default: `"primary"`.

- **radius**. Type: `none OR sm OR md OR lg OR full`. Default: `"full"`.

- **step**. Type: `number`. Default: `"1"`.

- **value**. Type: `number`. Default: `NA`.

- **defaultValue**. Type: `number`. Default: `NA`.

- **minValue**. Type: `number`. Default: `"0"`.

- **maxValue**. Type: `number`. Default: `"100"`.

- **orientation**. Type: `horizontal OR vertical`. Default:
  `"horizontal"`.

- **fillOffset**. Type: `number`. Default: `NA`.

- **showSteps**. Type: `boolean`. Default: `false`.

- **showTooltip**. Type: `boolean`. Default: `false`.

- **marks**. Type: `SliderStepMarks`. Default: `NA`.

- **startContent**. Type: `ReactNode`. Default: `NA`.

- **endContent**. Type: `ReactNode`. Default: `NA`.

- **formatOptions**. Type: `Intl.NumberFormat`. Default: `NA`.

- **tooltipValueFormatOptions**. Type: `Intl.NumberFormat`. Default:
  `NA`.

- **tooltipProps**. Type: `TooltipProps`. Default: `NA`.

- **showOutline**. Type: `boolean`. Default: `false`.

- **hideValue**. Type: `boolean`. Default: `false`.

- **hideThumb**. Type: `boolean`. Default: `false`.

- **disableThumbScale**. Type: `boolean`. Default: `false`.

- **isDisabled**. Type: `boolean`. Default: `false`.

- **disableAnimation**. Type: `boolean`. Default: `false`.

&nbsp;

- **getValue**. Type: `(value: SliderValue) => string`. Default: `NA`.

- **renderLabel**. Type:
  `(props: DOMAttributes<HTMLLabelElement>) => ReactNode`. Default:
  `NA`.

- **renderValue**. Type:
  `(props: DOMAttributes<HTMLOutputElement>) => ReactNode`. Default:
  `NA`.

- **renderThumb**. Type:
  `(props: DOMAttributes<HTMLDivElement> & {index?: number}) => ReactNode`.
  Default: `NA`.

&nbsp;

- **onChange**. Type: `(value: SliderValue) => void`. Default: `NA`.

- **onChangeEnd**. Type: `(value: SliderValue) => void`. Default: `NA`.

## See also

See <https://heroui.com/docs/components/slider>.

## Examples

``` r
library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  debug_react = TRUE,
  action_button("update", "Update slider 1"),
  slider_input(
    "slider",
    label = "My slider",
    showTooltip = TRUE,
    radius = "none",
    step = 1,
    maxValue = 10,
    minValue = 0,
    value = 5,
    className = "max-w-md",
    showSteps = TRUE,
    color = "foreground",
    size = "sm",
    marks = JS(
      "
      [
        {
          value: 2,
          label: 'First mark',
        },
        {
          value: 5,
          label: 'Second mark',
        },
        {
          value: 8,
          label: 'Third mark',
        },
      ]
    "
    )
  ),
  spacer(y = 10),
  slider_input(
    "slider2",
    radius = "lg",
    label = "Color offset",
    size = "sm",
    showTooltip = TRUE,
    color = "warning",
    maxValue = 5,
    minValue = -5,
    fillOffset = 0,
    value = 1,
    formatOptions = JS("{signDisplay: 'always'}")
  ),
  spacer(y = 10),
  slider_input(
    "slider3",
    label = "Outline",
    color = "foreground",
    showOutline = TRUE,
    minValue = 0,
    maxValue = 10,
    value = 5
  ),
  spacer(y = 10),
  slider_input(
    "slider4",
    label = "With start and end content",
    minValue = 0,
    maxValue = 10,
    value = 5,
    startContent = icon("volume-xmark"),
    endContent = icon("volume-high")
  ),
  spacer(y = 10),
  slider_input(
    "slider5",
    color = "success",
    step = 0.1,
    label = "Format value with getValue",
    getValue = JS("(val) => `${val} / 10`"),
    maxValue = 10,
    minValue = 0,
    value = 5
  ),
  spacer(y = 10),
  slider_input(
    "range",
    label = "Range",
    color = "danger",
    minValue = 0,
    maxValue = 10,
    value = c(1, 4)
  ),
  spacer(y = 10),
  div(
    class = "flex flex-row  max-w-md h-[348px] gap-6 w-full",
    slider_input(
      "slider4",
      label = "Vertical",
      size = "sm",
      orientation = "vertical",
      minValue = 0,
      maxValue = 10,
      value = 5,
      startContent = icon("volume-high"),
      endContent = icon("volume-xmark")
    )
  )
)

server <- function(input, output, session) {
  observeEvent(input$update, {
    update_slider_input(session, inputId = "slider", value = 10)
  })

  observeEvent(input$slider, {
    print(class(input$slider))
    print(sprintf("Slider is: %s", input$slider))
  })
  observeEvent(input$range, {
    print(input$range)
  })
}

if (interactive() || is_testing()) shinyApp(ui, server)
```
