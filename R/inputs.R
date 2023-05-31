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

# Usefull for radioButtons, checkBoxGroup
groupInput <- function(name, type) {
  function(inputId, ..., choices = choices, selected = NULL) {

    choices_fun <- switch(
      type,
      "checkbox" = checkboxOption,
      "radio" = radioOption
    )
    # choices must be
    # c("CHOICE_NAME" = "CHOICE_DESCRIPTION", ...)
    if (type != "collapse") {
      choices <-  lapply(seq_along(choices), function(i) {
        choices_fun(
          value = names(choices)[[i]],
          choices[[i]]
        )
      })
    }

    shiny.react::reactElement(
      module = "@/NextUI",
      name = name,
      props = shiny.react::asProps(
        inputId = inputId,
        ...,
        value = selected,
        choices # expect radio component
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

#' @rdname textarea
#' @inherit shinyInput params return
#' @export
textAreaInput <- input("Textarea", "")

#' @rdname textarea
#' @export
updateTextAreaInput <- shiny.react::updateReactInput

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

#' @rdname checkbox-group
#' @inherit shinyInput params return
#' @export
checkboxGroupInput <- groupInput("CheckboxGroup", type = "checkbox")

#' @rdname checkbox-group
#' @note Required by \link{checkboxGroupInput} to create options.
#' Don't use standalone.
#' @inherit component params return
#' @keywords internal
checkboxOption <- component("Checkbox")

#' @rdname checkbox-group
#' @export
updateCheckboxGroupInput <- shiny.react::updateReactInput

#' @rdname radio
#' @note Required by \link{radioButtons} to create options.
#' Don't use standalone.
#' @inherit component params return
#' @keywords internal
radioOption <- component("Radio")

#' @rdname radio
#' @inherit shinyInput params return
#' @export
radioButtons <- groupInput("Radio", type = "radio")

#' @rdname radio
#' @export
updateRadioButtons <- shiny.react::updateReactInput

#' @rdname collapse
#' @inherit shinyInput params return
#' @export
collapse_panel <- input("Collapse", FALSE)

#' @rdname collapse
#' @note \link{update_collapse_panel} currently does not work.
#' @export
update_collapse_panel <- shiny.react::updateReactInput

#' @rdname collapse
#' @inherit shinyInput params return
#' @export
collapse_option <- component("Collapse")

#' @rdname collapse
#' @note For \link{collapse_group}, the inputId gives the index
#' of the currently opened item. For \link{collapse} inputId,
#' indicates FALSE when closed and TRUE when the item is
#' uncollapsed.
#' @inherit shinyInput params return
#' @export
collapse_group <- groupInput("CollapseGroup", type = "collapse")
