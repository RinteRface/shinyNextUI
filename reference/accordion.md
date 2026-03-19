# accordion

Accordion display a list of high-level options that can expand/collapse
to reveal more information.

## Usage

``` r
accordion(inputId, ..., value = default_value)

accordion_item(...)

update_accordion(session = shiny::getDefaultReactiveDomain(), inputId, ...)
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
HeroUI accordion component.

## Details

- **children**. Type: `ReactNode OR ReactNode[]`. Default: `NA`.

- **variant**. Type: `light OR shadow OR bordered OR splitted`. Default:
  `"light"`.

- **selectionMode**. Type: `none OR single OR multiple`. Default: `NA`.

- **selectionBehavior**. Type: `toggle OR replace`. Default: `"toggle"`.

- **isCompact**. Type: `boolean`. Default: `false`.

- **isDisabled**. Type: `boolean`. Default: `false`.

- **showDivider**. Type: `boolean`. Default: `true`.

- **dividerProps**. Type: `DividerProps`. Default: `NA`.

- **hideIndicator**. Type: `boolean`. Default: `false`.

- **disableAnimation**. Type: `boolean`. Default: `false`.

- **disableIndicatorAnimation**. Type: `boolean`. Default: `false`.

- **disallowEmptySelection**. Type: `boolean`. Default: `false`.

- **keepContentMounted**. Type: `boolean`. Default: `false`.

- **fullWidth**. Type: `boolean`. Default: `true`.

- **motionProps**. Type: `MotionProps`. Default: `NA`.

- **disabledKeys**. Type: `React.Key[]`. Default: `NA`.

- **itemClasses**. Type: `AccordionItemClassnames`. Default: `NA`.

- **selectedKeys**. Type: `all OR React.Key[]`. Default: `NA`.

- **defaultSelectedKeys**. Type: `all OR React.Key[]`. Default: `NA`.

&nbsp;

- **onSelectionChange**. Type: `(keys: "all" OR Set<React.Key>) => any`.
  Default: `NA`.

&nbsp;

- **children**. Type: `ReactNode`. Default: `NA`.

- **title**. Type: `ReactNode`. Default: `NA`.

- **subtitle**. Type: `ReactNode`. Default: `NA`.

- **indicator**. Type: `IndicatorProps`. Default: `NA`.

- **startContent**. Type: `ReactNode`. Default: `NA`.

- **motionProps**. Type: `MotionProps`. Default: `NA`.

- **isCompact**. Type: `boolean`. Default: `false`.

- **isDisabled**. Type: `boolean`. Default: `false`.

- **keepContentMounted**. Type: `boolean`. Default: `false`.

- **hideIndicator**. Type: `boolean`. Default: `false`.

- **disableAnimation**. Type: `boolean`. Default: `false`.

- **disableIndicatorAnimation**. Type: `boolean`. Default: `false`.

- **HeadingComponent**. Type: `React.ElementType`. Default: `"h2"`.

- **classNames**. Type: `AccordionItemClassnames`. Default: `NA`.

&nbsp;

- **onFocus**. Type: `(e: FocusEvent) => void`. Default: `NA`.

- **onBlur**. Type: `(e: FocusEvent) => void`. Default: `NA`.

- **onFocusChange**. Type: `(isFocused: boolean) => void`. Default:
  `NA`.

- **onKeyDown**. Type: `(e: KeyboardEvent) => void`. Default: `NA`.

- **onKeyUp**. Type: `(e: KeyboardEvent) => void`. Default: `NA`.

- **onPress**. Type: `(e: PressEvent) => void`. Default: `NA`.

- **onPressStart**. Type: `(e: PressEvent) => void`. Default: `NA`.

- **onPressEnd**. Type: `(e: PressEvent) => void`. Default: `NA`.

- **onPressChange**. Type: `(isPressed: boolean) => void`. Default:
  `NA`.

- **onPressUp**. Type: `(e: PressEvent) => void`. Default: `NA`.

- **onClick**. Type: `MouseEventHandler`. Default: `NA`.

## See also

See <https://heroui.com/docs/components/accordion>.

## Examples

``` r
library(shiny)
#> 
#> Attaching package: ‘shiny’
#> The following objects are masked from ‘package:shinyNextUI’:
#> 
#>     actionButton, updateActionButton
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  debug_react = TRUE,
  p(class = "font-extrabold text-2xl uppercase", "accordion()"),
  accordion(
    inputId = "accordion1",
    value = "2",
    accordion_item(
      startContent = avatar(
        isBordered = TRUE,
        color = "primary",
        radius = "lg",
        src = "https://i.pravatar.cc/150?u=a042581f4e29026024d"
      ),
      onPress = JS("(e) => alert('Your pressed me')"),
      "plop",
      title = "Element 1",
      key = "1",
      subtitle = "subtitle"
    ),
    accordion_item("plop", title = "Element 2", key = "2")
  ),
  spacer(y = 2),
  p(class = "font-extrabold text-2xl uppercase", "shadow variant accordion()"),
  accordion(
    inputId = "accordion2",
    isCompact = TRUE,
    variant = "shadow",
    value = "3",
    accordion_item("plop", title = "Element 1", key = "1", subtitle = "subtitle"),
    accordion_item("plop", title = "Element 2", key = "2"),
    accordion_item("plop", title = "Element 3", key = "3")
  ),
  spacer(y = 2),
  p(class = "font-extrabold text-2xl uppercase", "bordered variant accordion()"),
  accordion(
    inputId = "accordion3",
    isCompact = TRUE,
    variant = "bordered",
    accordion_item("plop", title = "Element 1", key = "1", subtitle = "subtitle"),
    accordion_item("plop", title = "Element 2", key = "2")
  ),
  spacer(y = 2),
  p(class = "font-extrabold text-2xl uppercase", "splitted variant accordion()"),
  accordion(
    inputId = "accordion4",
    isCompact = TRUE,
    variant = "splitted",
    motionProps= JS(
      '{
      variants: {
        enter: {
          y: 0,
          opacity: 1,
          height: "auto",
          transition: {
            height: {
              type: "spring",
              stiffness: 500,
              damping: 30,
              duration: 1,
            },
            opacity: {
              easings: "ease",
              duration: 1,
            },
          },
        },
        exit: {
          y: -10,
          opacity: 0,
          height: 0,
          transition: {
            height: {
              easings: "ease",
              duration: 0.25,
            },
            opacity: {
              easings: "ease",
              duration: 0.3,
            },
          },
        },
      },
    }'),
    value = "2",
    accordion_item("plop", title = "Element 1", key = "1", subtitle = "subtitle"),
    accordion_item("plop", title = "Element 2", key = "2")
  ),
  spacer(y = 2),
  p(class = "font-extrabold text-2xl uppercase", "Update accordion"),
  select_input(
    "select",
    label = "Accordion to open:",
    select_item(key = 1, value = "1", "1"),
    select_item(key = 2, value = "2", "2")
  ),
  spacer(y = 2),
  accordion(
    inputId = "accordion5",
    isCompact = TRUE,
    variant = "bordered",
    accordion_item("plop1", title = "Element 1", key = "1", subtitle = "subtitle"),
    accordion_item("plop2", title = "Element 2", key = "2")
  )
)

server <- function(input, output, session) {
  observeEvent(input$select, {
    update_accordion(
      session,
      "accordion5",
      value = input$select
    )
  })
  observe(
    print(input$accordion1)
  )
}

if (interactive() || is_testing()) shinyApp(ui, server)
```
