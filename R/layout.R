#' NextUI page wrapper
#'
#' Suppressed Bootstrap dependency which is not
#' needed.
#'
#' @param ... UI elements.
#' @param theme Global page theme.
#' @param dark_mode Apply global dark mode. If NULL, no switch is shown.
#' @param debug_react Whether to enable react debug mode.
#' Default to FALSE.
#'
#' @return Object which can be passed as the UI of a Shiny app.
#' @import shiny
#' @import shiny.react
#' @export
nextui_page <- function(..., theme = c("light", "dark"), dark_mode = FALSE, debug_react = FALSE) {

  theme <- match.arg(theme)

  tagList(
    create_react_deps(),
    htmltools::tags$body(
      `data-skin` = theme,
      class = "container my-auto mx-auto px-4",
      htmltools::suppressDependencies("bootstrap", "react"),
      if (debug_react) enableReactDebugMode(),
      spacer(y = 2),
      if (!is.null(dark_mode)) {
        div(class = "flex flex-row-reverse", theme_switcher(value = !dark_mode))
      },
      ...
    )
  )
}

flex <- function(...) {
  div(
    class = "flex flex-wrap",
    ...
  )
}

#' @rdname spacer
#' @inherit component params return
#' @export
spacer <- component("Spacer")

#' @rdname navbar
#' @inherit component params return
#' @export
navbar <- component("Navbar")

#' @rdname navbar
#' @inherit component params return
#' @export
navbar_brand <- component("NavbarBrand")

#' @rdname navbar
#' @inherit component params return
#' @export
navbar_content <- component("NavbarContent")

#' @rdname navbar
#' @inherit component params return
#' @export
navbar_item <- component("NavbarItem")

#' @rdname navbar
#' @inherit component params return
#' @export
navbar_toggle <- component("NavbarToggle")
