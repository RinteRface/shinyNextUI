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
  fluidPage(
    htmltools::suppressDependencies("bootstrap"),
    if (debug_react) enableReactDebugMode(),
    ...
  )
}

#' @rdname container
#' @inherit component params return
#' @export
container <- component("Container")

#' @rdname container
#' @inherit component params return
#' @export
row <- component("Row")

#' @rdname container
#' @inherit component params return
#' @export
col <- component("Col")

#' @rdname grid
#' @inherit component params return
#' @export
grid <- component("Grid")

#' @rdname grid
#' @inherit component params return
#' @export
grid_container <- customComponent("Grid.Container", "
  const NextUI = jsmodule['@nextui-org/react'];
  return NextUI.Grid.Container;
")

#' @rdname spacer
#' @inherit component params return
#' @export
spacer <- component("Spacer")
