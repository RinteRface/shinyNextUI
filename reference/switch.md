# switch

The Switch component is used as an alternative between checked and not
checked states.

## Usage

``` r
switch_input(inputId, ..., value = default_value)

update_switch_input(session = shiny::getDefaultReactiveDomain(), inputId, ...)
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
HeroUI switch component.

## Details

- **children**. Type: `ReactNode`. Default: `NA`.

- **value**. Type: `string`. Default: `NA`.

- **name**. Type: `string`. Default: `NA`.

- **size**. Type: `sm OR md OR lg`. Default: `"md"`.

- **color**. Type:
  `default OR primary OR secondary OR success OR warning OR danger`.
  Default: `"primary"`.

- **thumbIcon**. Type: `ThumbIconProps`. Default: `NA`.

- **startContent**. Type: `ReactNode`. Default: `NA`.

- **endContent**. Type: `ReactNode`. Default: `NA`.

- **isSelected**. Type: `boolean`. Default: `NA`.

- **defaultSelected**. Type: `boolean`. Default: `NA`.

- **isReadOnly**. Type: `boolean`. Default: `NA`.

- **isDisabled**. Type: `boolean`. Default: `false`.

- **disableAnimation**. Type: `boolean`. Default: `false`.

- **classNames**. Type:
  `Partial<Record<"base"OR "wrapper"OR "thumb"OR "label" OR "startContent" OR "endContent" OR "thumbIcon" , string>>`.
  Default: `NA`.

&nbsp;

- **onChange**. Type: `React.ChangeEvent<HTMLInputElement>`. Default:
  `NA`.

- **onValueChange**. Type: `(isSelected: boolean) => void`. Default:
  `NA`.

## See also

See <https://heroui.com/docs/components/switch>.

## Examples

``` r
library(shiny)
library(shinyNextUI)
library(shiny.react)

base_style <- paste(
  "inline-flex flex-row-reverse w-full max-w-md bg-content1 hover:bg-content2",
  "items-center justify-between cursor-pointer rounded-lg gap-2 p-4 border-2",
  "border-transparent data-[selected=true]:border-primary"
)

thumb_style <- paste(
  "w-6 h-6 border-2 shadow-lg group-data-[hover=true]:border-primary",
  "group-data-[selected=true]:ml-6 group-data-[pressed=true]:w-7",
  "group-data-[selected]:group-data-[pressed]:ml-4"
)

ui <- nextui_page(
  div(
    class = "flex flex-col",
    action_button("update", "Toggle switch"),
    spacer(y = 2),
    p("Basic"),
    switch_input(
      inputId = "switch",
      value = TRUE,
      size = "xs"
    ),
    textOutput("switch_val"),
    spacer(y = 5),
    p("Custom style"),
    spacer(y = 2),
    switch_input(
      "custom_switch",
      classNames = JS(
        sprintf(
          "{
          base: '%s',
          wrapper: 'p-0 h-4 overflow-visible',
          thumb: '%s'
        }",
          base_style,
          thumb_style
        )
      ),
      div(
        className = "flex flex-col gap-1",
        p(className = "text-medium", "Enable early acces"),
        p(
          className = "text-tiny text-default-400",
          "Get access to new features before they are released."
        )
      )
    )
  )
)

server <- function(input, output, session) {
  output$switch_val <- renderText(input$switch)
  observeEvent(input$update, {
    update_switch_input(session, "switch", value = !input$switch)
  })
}

if (interactive() || is_testing()) shinyApp(ui, server)
```
