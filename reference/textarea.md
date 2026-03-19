# textarea

Textarea component is a multi-line Input which allows you to write large
texts.

## Usage

``` r
textarea_input(inputId, ..., value = default_value)

update_textarea_input(
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
HeroUI textarea component.

## Details

- **children**. Type: `ReactNode`. Default: `NA`.

- **minRows**. Type: `number`. Default: `"3"`.

- **maxRows**. Type: `number`. Default: `"8"`.

- **cacheMeasurements**. Type: `boolean`. Default: `false`.

- **variant**. Type: `flat OR bordered OR faded OR underlined`. Default:
  `"flat"`.

- **color**. Type:
  `default OR primary OR secondary OR success OR warning OR danger`.
  Default: `"default"`.

- **size**. Type: `sm OR md OR lg`. Default: `"md"`.

- **radius**. Type: `none OR sm OR md OR lg OR full`. Default: `NA`.

- **label**. Type: `ReactNode`. Default: `NA`.

- **value**. Type: `string`. Default: `NA`.

- **defaultValue**. Type: `string`. Default: `NA`.

- **placeholder**. Type: `string`. Default: `NA`.

- **startContent**. Type: `ReactNode`. Default: `NA`.

- **endContent**. Type: `ReactNode`. Default: `NA`.

- **description**. Type: `ReactNode`. Default: `NA`.

- **errorMessage**. Type:
  `ReactNode OR ((v: ValidationResult) => ReactNode)`. Default: `NA`.

- **validate**. Type:
  `(value: string) => ValidationError OR true OR null OR undefined`.
  Default: `NA`.

- **validationBehavior**. Type: `native OR aria`. Default: `"native"`.

- **labelPlacement**. Type: `inside OR outside OR outside-left`.
  Default: `"inside"`.

- **fullWidth**. Type: `boolean`. Default: `true`.

- **isRequired**. Type: `boolean`. Default: `false`.

- **isReadOnly**. Type: `boolean`. Default: `NA`.

- **isDisabled**. Type: `boolean`. Default: `false`.

- **isClearable**. Type: `boolean`. Default: `false`.

- **isInvalid**. Type: `boolean`. Default: `false`.

- **validationState**. Type: `valid OR invalid`. Default: `NA`.

- **disableAutosize**. Type: `boolean`. Default: `false`.

- **disableAnimation**. Type: `boolean`. Default: `false`.

- **classNames**. Type:
  `Partial<Record<"base" OR "label" OR "inputWrapper" OR "innerWrapper" OR "input" OR "description" OR "errorMessage", string>>`.
  Default: `NA`.

&nbsp;

- **onChange**. Type: `React.ChangeEvent<HTMLInputElement>`. Default:
  `NA`.

- **onValueChange**. Type: `(value: string) => void`. Default: `NA`.

- **onClear**. Type: `() => void`. Default: `NA`.

- **onHeightChange**. Type:
  `(height: number, meta: { rowHeight: number }) => void`. Default:
  `NA`.

## See also

See <https://heroui.com/docs/components/textarea>.

## Examples

``` r
library(shiny)
library(shinyNextUI)

ui <- nextui_page(
  div(
    class = "flex gap-5",
    action_button("update_text", "Update text"),
    textarea_input(
      inputId = "textarea",
      placeholder = "Enter your amazing ideas.",
      label = "Text area input",
      bordered = TRUE,
      color = "secondary",
      status = "secondary",
      helperColor = "error",
      helperText = "Click on update text"
    )
  ),
  textOutput("textarea_val")
)

server <- function(input, output, session) {
  output$textarea_val <- renderText(input$textarea)

  observeEvent(input$update_text, {
    update_textarea_input(
      inputId = "textarea",
      value = "Updated value"
    )
  })
}

if (interactive() || is_testing()) shinyApp(ui, server)
```
