# Create a reactR shiny input element

This is used to create custom react element for R. Specifically for
radio and checkboxgroup which don't work with shiny.react.

## Usage

``` r
createReactShinyInput(
  inputId,
  class,
  default = NULL,
  configuration = list(),
  container = htmltools::tags$div,
  dependencies = NULL
)
```

## Arguments

- inputId:

  Unique input id.

- class:

  Element class. Must match the JavaScript class counterpart.

- default:

  Default value.

- configuration:

  Props.

- container:

  Default container.

- dependencies:

  Deps.

## Value

A list of tags.
