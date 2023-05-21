input <- function(name, defaultValue) {
  function(inputId, ..., value = defaultValue) {
    # Handle switch which has slightly different expectations
    props <- list(...)
    if (name == "Switch" && !is.null(props$checked)) {
      value <- props$checked
    }
    shiny.react::reactElement(
      module = "@/NextUI",
      name = name,
      props = shiny.react::asProps(
        inputId = inputId,
        ...,
        value = value
      ),
      deps = nextui_deps()
    )
  }
}


#' @export
Switch.shinyInput <- input("Switch", FALSE)
