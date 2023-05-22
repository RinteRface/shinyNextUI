input <- function(name, defaultValue = NULL, type = NULL) {
  function(inputId, ..., value = defaultValue) {
    shiny.react::reactElement(
      module = "@/NextUI",
      name = name,
      props = shiny.react::asProps(
        inputId = inputId,
        ...,
        value = value,
        type = type # For other inputs
      ),
      deps = nextui_deps()
    )
  }
}

#' @export
Button.shinyInput <- input("Button")

#' @export
Switch.shinyInput <- input("Switch", FALSE)

#' @export
Text.shinyInput <- input("Input", "", type = "text")

#' @export
Numeric.shinyInput <- input("Input", "", type = "number")
