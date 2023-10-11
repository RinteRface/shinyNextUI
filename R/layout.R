#' NextUI page wrapper
#'
#' Suppressed Bootstrap dependency which is not
#' needed.
#'
#' @param ... UI elements.
#' @param debug_react Whether to enable react debug mode.
#' Default to FALSE.
#'
#' @return Object which can be passed as the UI of a Shiny app.
#' @export
nextui_page <- function(..., debug_react = FALSE) {
  tagList(
    create_react_deps(),
    htmltools::tags$body(
      class = "container my-auto mx-auto px-4",
      htmltools::suppressDependencies("bootstrap", "react"),
      if (debug_react) enableReactDebugMode(),
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

# #' @rdname container
# #' @inherit component params return
# #' @export
# container <- component("Container")
#
# #' @rdname container
# #' @inherit component params return
# #' @export
# row <- component("Row")
#
# #' @rdname container
# #' @inherit component params return
# #' @export
# col <- component("Col")
#
# #' @rdname grid
# #' @inherit component params return
# #' @export
# grid <- component("Grid")
#
# #' @rdname grid
# #' @inherit component params return
# #' @export
# grid_container <- custom_component("Grid.Container", "
#   const NextUI = jsmodule['@nextui-org/react'];
#   return NextUI.Grid.Container;
# ")

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
navbar_link <- input("NavbarLink")

#' @rdname navbar
#' @inherit component params return
#' @export
navbar_toggle <- component("NavbarToggle")
