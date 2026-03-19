# NextUI page wrapper

Suppressed Bootstrap dependency which is not needed.

## Usage

``` r
nextui_page(..., dark_mode = FALSE, debug_react = FALSE)
```

## Arguments

- ...:

  UI elements.

- dark_mode:

  Apply global dark mode. If NULL, no switch is shown.

- debug_react:

  Whether to enable react debug mode. Default to FALSE.

## Value

Object which can be passed as the UI of a Shiny app.
