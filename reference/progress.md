# progress

The Progress component allows you to view the progress of any activity.

## Usage

``` r
progress(...)
```

## Arguments

- ...:

  Props to pass to the component. The allowed props are listed below in
  the **Details** section.

## Value

An object of class `shiny.tag` containing the necessary configuration
and including options such as JavaScript dependencies to instantiate a
HeroUI progress component.

## Details

- **label**. Type: `ReactNode`. Default: `NA`.

- **size**. Type: `sm OR md OR lg`. Default: `"md"`.

- **color**. Type:
  `default OR primary OR secondary OR success OR warning OR danger`.
  Default: `"primary"`.

- **radius**. Type: `none OR sm OR md OR lg OR full`. Default: `"full"`.

- **value**. Type: `number`. Default: `NA`.

- **valueLabel**. Type: `ReactNode`. Default: `NA`.

- **minValue**. Type: `number`. Default: `"0"`.

- **maxValue**. Type: `number`. Default: `"100"`.

- **formatOptions**. Type: `Intl.NumberFormat`. Default:
  `"{style: 'percent'}"`.

- **isIndeterminate**. Type: `boolean`. Default: `false`.

- **isStriped**. Type: `boolean`. Default: `false`.

- **showValueLabel**. Type: `boolean`. Default: `true`.

- **isDisabled**. Type: `boolean`. Default: `false`.

- **disableAnimation**. Type: `boolean`. Default: `false`.

- **classNames**. Type:
  `Partial<Record<'base' OR 'labelWrapper' OR 'label' OR 'track' OR 'value' OR 'indicator', string>>`.
  Default: `NA`.

## See also

See <https://heroui.com/docs/components/progress>.

## Examples

``` r
library(shiny)
library(shinyNextUI)

colors <- c(
  "default",
  "primary",
  "secondary",
  "success",
  "warning",
  "danger"
)

bool_par <- c(rep(FALSE, 3), rep(TRUE, 2), FALSE)

progress_config <- data.frame(
  label = c(rep("A label", 3), rep("", 3)),
  show_value_label = c(rep(FALSE, 3), rep(TRUE, 3)),
  size = c("sm", "sm", rep("md", 2), "lg", "lg"),
  color = colors,
  striped = bool_par,
  radius = c(rep("none", 2), "sm", "md", "lg", "full")
)

progress_factory <- function(
  label,
  show_value_label,
  size,
  color,
  striped,
  radius
) {
  progress(
    label = label,
    showValueLabel = show_value_label,
    value = round(runif(1, 0, 100)),
    size = size,
    color = color,
    isStriped = striped,
    radius = radius
  )
}

progresses <- purrr::pmap(progress_config, progress_factory)

ui <- nextui_page(
  div(
    class = "grid gap-4 grid-cols-3 grid-rows-3 m-5",
    progresses
  )
)

server <- function(input, output, session) {
}

if (interactive() || is_testing()) shinyApp(ui, server)
```
