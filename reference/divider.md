# divider

Divider is a component that separates content in a page.

## Usage

``` r
divider(...)
```

## Arguments

- ...:

  Props to pass to the component. The allowed props are listed below in
  the **Details** section.

## Value

An object of class `shiny.tag` containing the necessary configuration
and including options such as JavaScript dependencies to instantiate a
HeroUI divider component.

## Details

- **orientation**. Type: `` `horizontal` OR `vertical` ``. Default:
  `` "`horizontal`" ``.

## See also

See <https://heroui.com/docs/components/divider>.

## Examples

``` r
library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  debug_react = TRUE,
  card(
    card_header("Header"),
    divider(),
    card_body("Body"),
    divider(),
    card_footer("Footer")
  )
)

server <- function(input, output, session) {

}

if (interactive() || is_testing()) shinyApp(ui, server)
```
