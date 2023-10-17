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
    choices <-  lapply(seq_along(choices), function(i) {
      choices_fun(
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
dropdown_trigger <- component("DropdownTrigger")

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

#' @rdname select
#' @export
select <- input("Select", "")

#' @rdname select
#' @export
select_section <- component("SelectSection")

#' @rdname select
#' @export
select_item <- component("SelectItem")

#' @rdname tabs
#' @export
tabs <- input("Tabs", "")

#' @rdname tabs
#' @export
update_tabs <- shiny.react::updateReactInput

#' @rdname tabs
#' @export
tab <- component("Tab")
