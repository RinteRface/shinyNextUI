nextui_deps <- function() {
  htmltools::htmlDependency(
    name = "nextui",
    version = "1.0.0",
    package = "shinyNextUI",
    src = c(file = "nextui-1.0.0"),
    script = "nextui.js"
  )
}
