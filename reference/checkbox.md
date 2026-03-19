# checkbox

Checkboxes allow users to select multiple items from a list of
individual items, or to mark one individual item as selected.

## Usage

``` r
checkbox_input(inputId, ..., value = default_value)

update_checkbox_input(
  session = shiny::getDefaultReactiveDomain(),
  inputId,
  ...
)
```

## Arguments

- inputId:

  ID of the component.

- ...:

  Props to pass to the component. The allowed props are listed below in
  the **Details** section.

- value:

  Starting value.

- session:

  Object passed as the `session` argument to Shiny server.

## Value

An object of class `shiny.tag` containing the necessary configuration
and including options such as JavaScript dependencies to instantiate a
HeroUI checkbox component.

## Details

- **children**. Type: `ReactNode`. Default: `NA`.

- **icon**. Type: `CheckboxIconProps`. Default: `NA`.

- **value**. Type: `string`. Default: `NA`.

- **name**. Type: `string`. Default: `NA`.

- **size**. Type: `sm OR md OR lg`. Default: `"md"`.

- **color**. Type:
  `default OR primary OR secondary OR success OR warning OR danger`.
  Default: `"primary"`.

- **radius**. Type: `none OR sm OR md OR lg OR full`. Default: `NA`.

- **lineThrough**. Type: `boolean`. Default: `false`.

- **isSelected**. Type: `boolean`. Default: `NA`.

- **defaultSelected**. Type: `boolean`. Default: `NA`.

- **isRequired**. Type: `boolean`. Default: `false`.

- **isReadOnly**. Type: `boolean`. Default: `NA`.

- **isDisabled**. Type: `boolean`. Default: `false`.

- **isIndeterminate**. Type: `boolean`. Default: `NA`.

- **isInvalid**. Type: `boolean`. Default: `false`.

- **validationState**. Type: `valid OR invalid`. Default: `NA`.

- **disableAnimation**. Type: `boolean`. Default: `false`.

- **classNames**. Type:
  `Partial<Record<"base"OR "wrapper"OR "icon"OR "label", string>>`.
  Default: `NA`.

&nbsp;

- **onChange**. Type: `React.ChangeEvent<HTMLInputElement>`. Default:
  `NA`.

- **onValueChange**. Type: `(isSelected: boolean) => void`. Default:
  `NA`.

## See also

See <https://heroui.com/docs/components/checkbox>.

## Examples

``` r
library(shiny)
library(shinyNextUI)

ui <- nextui_page(
  div(
    class = "flex gap-1",
    action_button("update", "Toggle checkbox"),
    spacer(y = 2),
    checkbox_input(
      inputId = "checkbox",
      value = TRUE,
      "My checkbox",
      isRounded = TRUE,
      color = "warning",
      lineThrough = TRUE
    ),
    textOutput("check_val")
  )
)

server <- function(input, output, session) {
  output$check_val <- renderText(input$checkbox)
  observeEvent(input$update, {
    update_checkbox_input(session, "checkbox", value = !input$checkbox)
  })
}

if (interactive() || is_testing()) shinyApp(ui, server)
```
