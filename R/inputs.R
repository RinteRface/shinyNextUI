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

# Usefull for radioButtons, checkBoxGroup
group_input <- function(name, type) {
  function(inputId, ..., choices = choices, selected = NULL) {

    choices_fun <- switch(
      type,
      "checkbox" = checkbox_option,
      "radio" = radio_option
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
action_button <- input("Button")

#' @rdname button
#' @export
update_action_button <- shiny.react::updateReactInput

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
text_area_input <- input("Textarea", "")

#' @rdname textarea
#' @export
update_text_area_input <- shiny.react::updateReactInput

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

#' @rdname checkbox-group
#' @inherit shinyInput params return
#' @export
checkbox_group_input <- group_input("CheckboxGroup", type = "checkbox")

#' @rdname checkbox-group
#' @note Required by \link{checkbox_group_input} to create options.
#' Don't use standalone.
#' @inherit component params return
#' @keywords internal
checkbox_option <- component("Checkbox")

#' @rdname checkbox-group
#' @export
update_checkbox_group_input <- shiny.react::updateReactInput

#' @rdname radio
#' @note Required by \link{radioButtons} to create options.
#' Don't use standalone.
#' @inherit component params return
#' @keywords internal
radio_option <- component("Radio")

#' @rdname radio
#' @inherit shinyInput params return
#' @export
radio_input <- group_input("Radio", type = "radio")

#' @rdname radio
#' @export
update_radio_input <- shiny.react::updateReactInput

# #' @rdname collapse
# #' @inherit shinyInput params return
# #' @export
# collapse_panel <- input("Collapse", FALSE)
#
# #' @rdname collapse
# #' @note \link{update_collapse_panel} currently does not work.
# #' @export
# update_collapse_panel <- shiny.react::updateReactInput
#
# #' @rdname collapse
# #' @inherit component params return
# #' @export
# collapse_option <- component("Collapse")
#
# #' @rdname collapse
# #' @note For \link{collapse_group}, the inputId gives the index
# #' of the currently opened item. For \link{collapse} inputId,
# #' indicates FALSE when closed and TRUE when the item is
# #' uncollapsed.
# #' @inherit shinyInput params return
# #' @param choices Slot for \link{collapse_option}. Wrap inside
# #' tagList.
# #' @param selected Default selected choice.
# #' @export
# collapse_group <- group_input("CollapseGroup", type = "collapse")

#' @rdname accordion
#' @inherit component params return
#' @export
accordion <- input("Accordion")

#' @rdname accordion
#' @inherit component params return
#' @export
accordion_item <- component("AccordionItem")

#' @rdname dropdown
#' @inherit component params return
#' @export
dropdown <- component("Dropdown")

#' @rdname dropdown
#' @inherit shinyInput params return
#' @export
dropdow_menu <- input("Dropdown")

#' @rdname dropdown
#' @inherit component params return
#' @export
dropdown_button <- component("DropdownTrigger")

#' @rdname dropdown
#' @inherit component params return
#' @export
dropdown_item <- component("DropdownItem")

#' @rdname dropdown
#' @note Container for related \link{dropdown_item}.
#' @inherit component params return
#' @export
dropdown_section <- component("DropdownSection")

#' @rdname dropdown
#' @export
update_dropdown <- shiny.react::updateReactInput
