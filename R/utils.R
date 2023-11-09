#' Create a reactR shiny input element
#'
#' This is used to create custom react element for R. Specifically
#' for radio and checkboxgroup which don't work with shiny.react.
#'
#' @param inputId Unique input id.
#' @param class Element class. Must match the JavaScript class counterpart.
#' @param default Default value.
#' @param configuration Props.
#' @param container Default container.
#'
#' @return A list of tags.
#' @export
createReactShinyInput <- function (
    inputId,
    class,
    default = NULL, configuration = list(),
    container = htmltools::tags$div
) {
  value <- shiny::restoreInput(id = inputId, default = default)
  htmltools::tagList(
    container(id = inputId, class = class),
    htmltools::tags$script(
      id = sprintf("%s_value", inputId),
      type = "application/json",
      jsonlite::toJSON(value, auto_unbox = TRUE, null = "null")
    ),
    htmltools::tags$script(
      id = sprintf("%s_configuration", inputId),
      type = "application/json",
      jsonlite::toJSON(configuration,  auto_unbox = TRUE, null = "null")
    ),
    shinyReactDependency(),
    htmltools::htmlDependency(
      name = "nextui",
      version = "2.0.0",
      src = "nextui-2.0.0",
      package = "shinyNextUI",
      script = "nextui.js"
    )
  )
}

#' Indicates whether testthat is running
#'
#' @return Boolean.
#'
#' @export
is_testing <- function() {
  identical(Sys.getenv("TESTTHAT"), "true")
}

#' Available sizes
#'
#' @export
#' @rdname nextui-defaults
sizes <- c("sm", "md", "lg")

#' Available colors
#'
#' @export
#' @rdname nextui-defaults
colors <- c(
  "default",
  "primary",
  "secondary",
  "success",
  "warning",
  "danger"
)

#' Available radiuses
#'
#' @export
#' @rdname nextui-defaults
radiuses <- c(
  "none",
  "sm",
  "md",
  "lg",
  "full"
)

#' Available tabs variants
#'
#' @export
#' @rdname nextui-defaults
tabs_variants <- c(
  "solid",
  "underlined",
  "bordered",
  "light"
)

#' Available select variants
#'
#' @export
#' @rdname nextui-defaults
select_variants <- c(
  "flat",
  "bordered",
  "underlined",
  "faded"
)
