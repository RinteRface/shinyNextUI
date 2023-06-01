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
    #create_react_deps(),
    fluidPage(
      htmltools::suppressDependencies("bootstrap"),
      if (debug_react) enableReactDebugMode(),
      ...
    )
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
grid_container <- custom_component("Grid.Container", "
  const NextUI = jsmodule['@nextui-org/react'];
  return NextUI.Grid.Container;
")

#' @rdname spacer
#' @inherit component params return
#' @export
spacer <- component("Spacer")

#' @rdname navbar
#' @inherit shinyInput params return
#' @export
navbar <- input("Navbar")

#' @rdname navbar
#' @inherit component params return
#' @export
navbar_brand <- custom_component("Navbar.Brand", "
  const NextUI = jsmodule['@nextui-org/react'];
  return NextUI.Navbar.Brand;
")

#' @rdname navbar
#' @inherit component params return
#' @export
navbar_content <- custom_component("Navbar.Content", "
  const NextUI = jsmodule['@nextui-org/react'];
  return NextUI.Navbar.Content;
")

#' @rdname navbar
#' @inherit component params return
#' @export
navbar_item <- custom_component("Navbar.Item", "
  const NextUI = jsmodule['@nextui-org/react'];
  return NextUI.Navbar.Item;
")

#' @rdname navbar
#' @inherit component params return
#' @export
navbar_link <- custom_component("Navbar.Link", "
  const NextUI = jsmodule['@nextui-org/react'];
  return NextUI.Navbar.Link;
")

#' @rdname navbar
#' @inherit component params return
#' @export
navbar_toggle <- custom_component("Navbar.Toggle", "
  const NextUI = jsmodule['@nextui-org/react'];
  return NextUI.Navbar.Toggle;
")

#' @rdname navbar
#' @inherit component params return
#' @export
navbar_collapse <- custom_component("Navbar.Collapse", "
  const NextUI = jsmodule['@nextui-org/react'];
  return NextUI.Navbar.Collapse;
")

#' @rdname navbar
#' @inherit component params return
#' @export
navbar_collapse_item <- custom_component("Navbar.CollapseItem", "
  const NextUI = jsmodule['@nextui-org/react'];
  return NextUI.Navbar.CollapseItem;
")
