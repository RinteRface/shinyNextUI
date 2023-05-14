nextui_deps <- function() {
  htmltools::htmlDependency(
    name = "nextui",
    version = "1.0.0",
    package = "shinyNextUI",
    src = c(file = "nextui-1.0.0"),
    script = "nextui.js"
  )
}

component <- function(name) {
  function(...) shiny.react::reactElement(
    module = "@nextui-org/react",
    name = name,
    props = shiny.react::asProps(...),
    deps = nextui_deps()
  )
}

#' @export
Button <- component("Button")
