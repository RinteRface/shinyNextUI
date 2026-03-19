# input

Input is a component that allows users to enter text. It can be used to
get user inputs in forms, search fields, and more.

## Usage

``` r
text_input(inputId, ..., value = default_value)

update_text_input(session = shiny::getDefaultReactiveDomain(), inputId, ...)

numeric_input(inputId, ..., value = default_value)

update_numeric_input(session = shiny::getDefaultReactiveDomain(), inputId, ...)

date_input(inputId, ..., value = default_value)

update_date_input(session = shiny::getDefaultReactiveDomain(), inputId, ...)
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
HeroUI input component.

## Details

- **children**. Type: `ReactNode`. Default: `NA`.

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

- **description**. Type: `ReactNode`. Default: `NA`.

- **errorMessage**. Type:
  `ReactNode OR ((v: ValidationResult) => ReactNode)`. Default: `NA`.

- **validate**. Type:
  `(value: string) => ValidationError OR true OR null OR undefined`.
  Default: `NA`.

- **validationBehavior**. Type: `native OR aria`. Default: `"native"`.

- **minLength**. Type: `number`. Default: `NA`.

- **maxLength**. Type: `number`. Default: `NA`.

- **pattern**. Type: `string`. Default: `NA`.

- **type**. Type:
  `text OR email OR url OR password OR tel OR search OR file`. Default:
  `"text"`.

- **startContent**. Type: `ReactNode`. Default: `NA`.

- **endContent**. Type: `ReactNode`. Default: `NA`.

- **labelPlacement**. Type: `inside OR outside OR outside-left`.
  Default: `"inside"`.

- **fullWidth**. Type: `boolean`. Default: `true`.

- **isClearable**. Type: `boolean`. Default: `false`.

- **isRequired**. Type: `boolean`. Default: `false`.

- **isReadOnly**. Type: `boolean`. Default: `false`.

- **isDisabled**. Type: `boolean`. Default: `false`.

- **isInvalid**. Type: `boolean`. Default: `false`.

- **baseRef**. Type: `RefObject<HTMLDivElement>`. Default: `NA`.

- **disableAnimation**. Type: `boolean`. Default: `false`.

- **classNames**. Type:
  `Partial<Record<'base' OR 'label' OR 'inputWrapper' OR 'innerWrapper' OR 'mainWrapper' OR 'input' OR 'clearButton' OR 'helperWrapper' OR 'description' OR 'errorMessage', string>>`.
  Default: `NA`.

&nbsp;

- **onChange**. Type: `React.ChangeEvent<HTMLInputElement>`. Default:
  `NA`.

- **onValueChange**. Type: `(value: string) => void`. Default: `NA`.

- **onClear**. Type: `() => void`. Default: `NA`.

## See also

See <https://heroui.com/docs/components/input>.

## Examples

``` r
library(shiny)
library(shinyNextUI)

ui <- nextui_page(
  div(
    class = "flex gap-1",
    text_input(
      inputId = "text",
      value = "Plop",
      placeholder = "Next UI",
      label = "Text input"
    ),
    textOutput("text_val")
  ),
  spacer(y = 5),
  div(
    class = "flex gap-1",
    numeric_input(
      inputId = "numeric",
      value = 10,
      label = "Numeric input"
    ),
    textOutput("numeric_val")
  ),
  spacer(y = 5),
  div(
    class = "flex gap-1",
    date_input(
      inputId = "date",
      value = "2023-12-11",
      label = "Date input"
    ),
    textOutput("date_val")
  )
)

server <- function(input, output, session) {
  output$text_val <- renderText(input$text)
  output$numeric_val <- renderText(input$numeric)
  output$date_val <- renderText(input$date)
}

if (interactive() || is_testing()) shinyApp(ui, server)
```
