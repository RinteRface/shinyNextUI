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

#' @rdname switch
#' @export
updateSwitchInput <- shiny.react::updateReactInput

#' @rdname input
#' @inherit shinyInput params return
#' @export
textInput <- input("Input", "", type = "text")

#' @rdname input
#' @export
updateTextInput <- shiny.react::updateReactInput

#' @rdname input
#' @inherit shinyInput params return
#' @export
numericInput <- input("Input", "", type = "number")

#' @rdname input
#' @export
updateNumericInput <- shiny.react::updateReactInput

#' @rdname input
#' @inherit shinyInput params return
#' @export
dateInput <- input("Input", "", type = "date")

#' @rdname input
#' @export
updateDateInput <- shiny.react::updateReactInput

#' @rdname checkbox
#' @inherit shinyInput params return
#' @export
checkboxInput <- input("Checkbox", FALSE)

#' @rdname checkbox
#' @export
updateCheckboxInput <- shiny.react::updateReactInput
