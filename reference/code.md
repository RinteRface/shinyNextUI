# code

Code is a component used to display inline code.

## Usage

``` r
code_block(...)
```

## Arguments

- ...:

  Props to pass to the component. The allowed props are listed below in
  the **Details** section.

## Value

An object of class `shiny.tag` containing the necessary configuration
and including options such as JavaScript dependencies to instantiate a
HeroUI code component.

## Details

- **children**. Type: `ReactNode`. Default: `NA`.

- **size**. Type: `sm OR md OR lg`. Default: `"sm"`.

- **color**. Type:
  `default OR primary OR secondary OR success OR warning OR danger`.
  Default: `"default"`.

- **radius**. Type: `none OR sm OR md OR lg OR full`. Default: `"sm"`.

## See also

See <https://heroui.com/docs/components/code>.

## Examples

``` r
library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  div(
    class = "flex gap-2 my-2",
    code_block(
      size = "lg",
      color = "secondary",
      radius = "full",
      "npm install @nextui-org/react"
    )
  )
)

server <- function(input, output, session) {

}

if (interactive() || is_testing()) shinyApp(ui, server)
```
