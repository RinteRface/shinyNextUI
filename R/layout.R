#' @export
Container <- component("Container")

#' @export
Grid <- component("Grid")

grid_container <- customComponent("Grid.Container", "
  const NextUI = jsmodule['@nextui-org/react'];
  return NextUI.Grid.Container;
")

#' @export
Spacer <- component("Spacer")
