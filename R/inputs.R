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
#group_input <- function(name, type) {
#  function(inputId, ..., choices = choices, selected = NULL) {
#
#    choices_fun <- switch(
#      type,
#      "checkbox" = checkbox_option,
#      "radio" = radio_option
#    )
#    # choices must be
#    # c("CHOICE_NAME" = "CHOICE_DESCRIPTION", ...)
#    choices <-  lapply(seq_along(choices), function(i) {
#      choices_fun(
#        key = names(choices)[[i]],
#        value = names(choices)[[i]],
#        choices[[i]]
#      )
#    })
#
#    shiny.react::reactElement(
#      module = "@/NextUI",
#      name = name,
#      props = shiny.react::asProps(
#        inputId = inputId,
#        ...,
#        value = selected,
#        choices # expect radio component
#      ),
#      deps = nextui_deps()
#    )
#  }
#}

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
#' @noRd
create_group_input <- function(
    inputId,
    ...,
    choices,
    selected,
    type = c("CheckboxGroup", "RadioGroup", "DropdownMenu")
  ) {

  type <- match.arg(type)

  process_val <- switch(
    type,
    "CheckboxGroup" = as.list,
    "RadioGroup" = I,
    "DropdownMenu" = as.list
  )

  tagList(
    # This seems a bit hacky but this can't be called from the main JS script
    # because we only need it when the radio is invoked ...
    tags$script(sprintf("jsmodule['@/ReactR']['%s']()", type)),
    createReactShinyInput(
      inputId = inputId,
      class = tolower(type),
      default = process_val(selected),
      configuration = listRenderTags(list(children = as.list(choices), ...)),
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
#' @details
#' See \url{https://nextui.org/docs/components/radio-group}
#' to get the list of parameters to pass in \code{...}.
#' @example inst/examples/radio/app.R
#' @seealso See \url{https://nextui.org/docs/components/radio-group}.
radio_input <- function(inputId, ..., choices, selected = choices[1]) {
  create_group_input(
    inputId,
    ...,
    choices = choices,
    selected = selected,
    type = "RadioGroup"
  )
}

#' @param keywords internal
#' @noRd
update_group_input <- function(
    session = shiny::getDefaultReactiveDomain(),
    inputId,
    ...,
    choices = NULL,
    selected = NULL,
    type = c("CheckboxGroup", "RadioGroup")
) {

  type <- match.arg(type)

  message <- list()
  if (type == "CheckboxGroup") selected <- as.list(selected)
  message$value <-  selected
  configuration <- listRenderTags(c(children = as.list(choices), list(...)))
  if (length(configuration) > 0) {
    message$configuration <- configuration
  }
  session$sendInputMessage(inputId, message);
}

#' @rdname radio
#' @param session Shiny session.
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
    type = "RadioGroup"
  )
}

#' Checkbox group input
#'
#' @rdname checkbox-group
#' @inheritParams radio_input
#' @export
#' @details
#' See \url{https://nextui.org/docs/components/checkbox-group}
#' to get the list of parameters to pass in \code{...}.
#' @example inst/examples/checkbox-group/app.R
#' @seealso See \url{https://nextui.org/docs/components/checkbox-group}.
checkboxgroup_input <- function(inputId, ..., choices, selected = NULL) {
  create_group_input(
    inputId = inputId,
    ...,
    choices = choices,
    selected = selected,
    type = "CheckboxGroup"
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
    type = "CheckboxGroup"
  )
}

#' @rdname accordion
#' @inherit shinyInput params return
#' @export
accordion <- input("Accordion")

#' @rdname accordion
#' @inherit component params return
#' @export
accordion_item <- component("AccordionItem")

#' @rdname accordion
#' @export
update_accordion <- shiny.react::updateReactInput

#' Dropdown menu
#'
#' @rdname dropdown
#' @inheritParams radio_input
#' @inherit shinyInput params return
#' @export
#' @details
#' See \url{https://nextui.org/docs/components/dropdown}
#' to get the list of parameters to pass in \code{...}.
#' @example inst/examples/dropdown/app.R
#' @seealso See \url{https://nextui.org/docs/components/dropdown}.
dropdow_menu <- function(inputId, ..., choices = NULL, selected = NULL) {
  create_group_input(
    inputId,
    ...,
    choices = choices,
    selected = selected,
    type = "DropdownMenu"
  )
}

#' @rdname dropdown
#' @export
dropdown_item <- function(...) {
  list(..., dropdownItem = TRUE)
}

#' @rdname dropdown
#' @note Container for related \link{dropdown_item}.
#' @export
dropdown_section <- function(...) {
  tmp <- list(...)
  props <- list()
  children <- list()
  for (i in seq_along(tmp)) {
    if (inherits(tmp[[i]], "list")) {
      children <- append(children, tmp[[i]])
    } else {
      l <- tmp[[i]]
      names(l) <- names(tmp)[[i]]
      props <- append(props, l)
    }
  }
  list(props = props, children = children, dropdownSection = TRUE)
}

#' @rdname dropdown
#' @export
update_dropdown <- shiny.react::updateReactInput

#' @rdname listbox
#' @inherit shinyInput params return
#' @export
listbox <- input("Listbox")

#' @rdname listbox
#' @inherit component params return
#' @export
listbox_section <- component("ListboxSection")

#' @rdname listbox
#' @export
listbox_item <- component("ListboxItem")

#' @rdname listbox
#' @export
update_listbox <- shiny.react::updateReactInput

#' @rdname pagination
#' @inherit shinyInput params return
#' @export
pagination <- input("Pagination", 1)

#' @rdname pagination
#' @export
update_pagination <- shiny.react::updateReactInput

#' @rdname select
#' @inherit shinyInput params return
#' @export
select_input <- input("Select", "")

#' @rdname select
#' @inherit component params return
#' @export
select_section <- component("SelectSection")

#' @rdname select
#' @export
select_item <- component("SelectItem")

#' @rdname select
#' @export
update_select_input <- shiny.react::updateReactInput

#' @rdname slider
#' @inherit shinyInput params return
#' @export
slider_input <- input("Slider", numeric())

#' @rdname slider
#' @export
update_slider_input <- shiny.react::updateReactInput

#' @rdname tabs
#' @inherit shinyInput params return
#' @export
tabs <- input("Tabs", "1")

#' @rdname tabs
#' @export
update_tabs <- shiny.react::updateReactInput

#' @rdname tabs
#' @inherit component params return
#' @export
tab <- component("Tab")
