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

#' @rdname button
#' @inherit shinyInput params return
#' @export
actionButton <- input("Button")

#' @rdname button
#' @export
updateActionButton <- shiny.react::updateReactInput

#' @rdname switch
#' @inherit shinyInput params return
#' @export
switchInput <- input("Switch", FALSE)

#' @rdname text-input
#' @inherit shinyInput params return
#' @export
textInput <- input("Input", "", type = "text")

#' @rdname numeric
#' @inherit shinyInput params return
#' @export
numericInput <- input("Input", "", type = "number")

#' @rdname date
#' @inherit shinyInput params return
#' @export
dateInput <- input("Input", "", type = "date")
