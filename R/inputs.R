input <- function(name, default_value = NULL, type = NULL) {
  function(inputId, ..., value = default_value) {
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

# Useful for radioButtons, checkBoxGroup
group_input <- function(name, type) {
  function(inputId, ..., choices = choices, selected = NULL) {

    choices_fun <- switch(
      type,
      "checkbox" = checkbox_option,
      "radio" = radio_option
    )
    # choices must be
    # c("CHOICE_NAME" = "CHOICE_DESCRIPTION", ...)
    choices <-  lapply(seq_along(choices), function(i) {
      choices_fun(
        key = names(choices)[[i]],
        value = names(choices)[[i]],
        choices[[i]]
      )
    })

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
action_button <- input("Button")

#' @rdname button
#' @export
update_action_button <- shiny.react::updateReactInput

#' @rdname autocomplete
#' @inherit shinyInput params return
#' @export
autocomplete <- input("Autocomplete")

#' @rdname autocomplete
#' @export
autocomplete_section <- component("AutocompleteSection")

#' @rdname autocomplete
#' @export
autocomplete_item <- component("AutocompleteItem")

#' @rdname autocomplete
#' @export
update_autocomplete <- shiny.react::updateReactInput

#' @rdname switch
#' @inherit shinyInput params return
#' @export
switch_input <- input("Switch", FALSE)

#' @rdname switch
#' @export
update_switch_input <- shiny.react::updateReactInput

#' @rdname textarea
#' @inherit shinyInput params return
#' @export
textarea_input <- input("Textarea", "")

#' @rdname textarea
#' @export
update_textarea_input <- shiny.react::updateReactInput

#' @rdname input
#' @inherit shinyInput params return
#' @export
text_input <- input("Input", "", type = "text")

#' @rdname input
#' @export
update_text_input <- shiny.react::updateReactInput

#' @rdname input
#' @inherit shinyInput params return
#' @export
numeric_input <- input("Input", "", type = "number")

#' @rdname input
#' @export
update_numeric_input <- shiny.react::updateReactInput

#' @rdname input
#' @inherit shinyInput params return
#' @export
date_input <- input("Input", "", type = "date")

#' @rdname input
#' @export
update_date_input <- shiny.react::updateReactInput

#' @rdname checkbox
#' @inherit shinyInput params return
#' @export
checkbox_input <- input("Checkbox", FALSE)

#' @rdname checkbox
#' @export
update_checkbox_input <- shiny.react::updateReactInput

#' @keywords internal
create_group_input <- function(inputId, ..., choices, selected, type = c("Checkbox", "Radio")) {

  type <- match.arg(type)
  module <- paste0(type, "Group")

  process_val <- switch(
    type,
    "Checkbox" = as.list,
    "Radio" = I
  )

  tagList(
    # This seems a bit hacky but this can't be called from the main JS script
    # because we only need it when the radio is invoked ...
    tags$script(sprintf("jsmodule['@/ReactR']['%s']()", module)),
    createReactShinyInput(
      inputId = inputId,
      class = tolower(module),
      default = process_val(selected),
      configuration = list(children = as.list(choices), ...),
      container = htmltools::tags$div
    )
  )
}

#' Radio input
#'
#' @param inputId Unique input id.
#' @param ... Props.
#' @param choices Radio choices.
#' @param selected Default selected value.
#'
#' @return A radio input tag.
#' @rdname radio
#' @export
radio_input <- function(inputId, ..., choices, selected = choices[1]) {
  create_group_input(
    inputId,
    ...,
    choices = choices,
    selected = selected,
    type = "Radio"
  )
}

#' @param keywords internal
update_group_input <- function(
    session = shiny::getDefaultReactiveDomain(),
    inputId,
    ...,
    choices = NULL,
    selected = NULL,
    type = c("Checkbox", "Radio")
) {

  type <- match.arg(type)

  message <- list()
  if (type == "Checkbox") selected <- as.list(selected)
  message$value <-  selected
  configuration <- c(children = as.list(choices), list(...))
  if (length(configuration) > 0) {
    message$configuration <- configuration
  }
  session$sendInputMessage(inputId, message);
}

#' @rdname radio
#' @param session Shiny session.
#' @inheritParams radio_input
#' @export
update_radio_input <- function(
    session = shiny::getDefaultReactiveDomain(),
    inputId,
    ...,
    choices = NULL,
    selected = NULL
) {
  update_group_input(
    session,
    inputId = inputId,
    ...,
    choices = choices,
    selected = selected,
    type = "Radio"
  )
}

#' @rdname checkbox-group
#' @inherit radio_input
#' @export
checkboxgroup_input <- function(inputId, ..., choices, selected = NULL) {
  create_group_input(
    inputId = inputId,
    ...,
    choices = choices,
    selected = selected,
    type = "Checkbox"
  )
}

#' @rdname checkbox-group
#' @inheritParams update_radio_input
#' @export
update_checkboxgroup_input <- function(
    session = shiny::getDefaultReactiveDomain(),
    inputId,
    ...,
    choices = NULL,
    selected = NULL
) {
  update_group_input(
    session,
    inputId = inputId,
    ...,
    choices = choices,
    selected = selected,
    type = "Checkbox"
  )
}

#' @rdname accordion
#' @inherit component params return
#' @export
accordion <- input("Accordion")

#' @rdname accordion
#' @export
accordion_item <- component("AccordionItem")

#' @rdname accordion
#' @export
update_accordion <- shiny.react::updateReactInput

#' @rdname dropdown
#' @inherit component params return
#' @export
dropdown <- component("Dropdown")

#' @rdname dropdown
#' @inherit shinyInput params return
#' @export
dropdow_menu <- input("DropdownMenu")

#' @rdname dropdown
#' @export
dropdown_trigger <- component("DropdownTrigger")

#' @rdname dropdown
#' @export
dropdown_item <- component("DropdownItem")

#' @rdname dropdown
#' @note Container for related \link{dropdown_item}.
#' @export
dropdown_section <- component("DropdownSection")

#' @rdname dropdown
#' @export
update_dropdown <- shiny.react::updateReactInput

#' @rdname listbox
#' @export
listbox <- input("Listbox")

#' @rdname listbox
#' @export
listbox_section <- component("ListboxSection")

#' @rdname listbox
#' @export
listbox_item <- component("ListboxItem")

#' @rdname listbox
#' @export
update_listbox <- shiny.react::updateReactInput

#' @rdname select
#' @export
select_input <- input("Select", "")

#' @rdname select
#' @export
select_section <- component("SelectSection")

#' @rdname select
#' @export
select_item <- component("SelectItem")

#' @rdname sselect
#' @export
update_select_input <- shiny.react::updateReactInput

#' @rdname slider
#' @export
slider_input <- input("Slider", numeric())

#' @rdname slider
#' @export
update_slider_input <- shiny.react::updateReactInput

#' @rdname tabs
#' @export
tabs <- input("Tabs", "1")

#' @rdname tabs
#' @export
update_tabs <- shiny.react::updateReactInput

#' @rdname tabs
#' @export
tab <- component("Tab")
