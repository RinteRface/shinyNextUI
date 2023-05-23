#' @inherit component params return
#' @export
container <- component("Container")

#' @inherit component params return
#' @export
grid <- component("Grid")

grid_container <- customComponent("Grid.Container", "
  const NextUI = jsmodule['@nextui-org/react'];
  return NextUI.Grid.Container;
")

#' @inherit component params return
#' @export
spacer <- component("Spacer")
