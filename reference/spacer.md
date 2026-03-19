# spacer

Spacer is a component used to add space between components.

## Usage

``` r
spacer(...)
```

## Arguments

- ...:

  Props to pass to the component. The allowed props are listed below in
  the **Details** section.

## Value

An object of class `shiny.tag` containing the necessary configuration
and including options such as JavaScript dependencies to instantiate a
HeroUI spacer component.

## Details

- **x**. Type: `Space`. Default: `"1"`.

- **y**. Type: `Space`. Default: `"1"`.

## See also

See <https://heroui.com/docs/layout/spacer>.

## Examples

``` r
library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  card(card_body("Card 1")),
  spacer(y = 10),
  card(card_body("Card 2")),
  spacer(y = 2),
  card(card_body("Card 3")),
  spacer(y = 10),
  div(
    class = "flex",
    card(card_body("Card 4")),
    spacer(x = 5),
    card(card_body("Card 5")),
    spacer(x = 1),
    card(card_body("Card 6"))
  )
)

server <- function(input, output, session) {}

if (interactive() || is_testing()) shinyApp(ui, server)
```
