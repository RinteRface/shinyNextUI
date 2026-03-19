# tabs

Tabs organize content into multiple sections and allow users to navigate
between them.

## Usage

``` r
tabs(inputId, ..., value = default_value)

update_tabs(session = shiny::getDefaultReactiveDomain(), inputId, ...)

tab(...)
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
HeroUI tabs component.

## Details

- **children\***. Type: `ReactNode OR ((item: T) => ReactElement)`.
  Default: `NA`.

- **variant**. Type: `solid OR bordered OR light OR underlined`.
  Default: `"solid"`.

- **color**. Type:
  `default OR primary OR secondary OR success OR warning OR danger`.
  Default: `"default"`.

- **size**. Type: `sm OR md OR lg`. Default: `"md"`.

- **radius**. Type: `none OR sm OR md OR lg OR full`. Default: `NA`.

- **fullWidth**. Type: `boolean`. Default: `false`.

- **items**. Type: `Iterable<T>`. Default: `NA`.

- **disabledKeys**. Type: `React.Key[]`. Default: `NA`.

- **selectedKey**. Type: `React.Key`. Default: `NA`.

- **defaultSelectedKey**. Type: `React.Key`. Default: `NA`.

- **shouldSelectOnPressUp**. Type: `boolean`. Default: `true`.

- **keyboardActivation**. Type: `automatic OR manual`. Default:
  `"automatic"`.

- **motionProps**. Type: `MotionProps`. Default: `NA`.

- **disableCursorAnimation**. Type: `boolean`. Default: `false`.

- **isDisabled**. Type: `boolean`. Default: `false`.

- **disableAnimation**. Type: `boolean`. Default: `false`.

- **classNames**. Type:
  `Partial<Record<"base"OR "tabList"OR "tab"OR "tabContent"OR "cursor" OR "panel" OR "tabWrapper", string>>`.
  Default: `NA`.

- **placement**. Type: `top OR bottom OR start OR end`. Default:
  `"top"`.

- **isVertical**. Type: `boolean`. Default: `false`.

- **destroyInactiveTabPanel**. Type: `boolean`. Default: `true`.

&nbsp;

- **onSelectionChange**. Type: `(key: React.Key) => any`. Default: `NA`.

&nbsp;

- **tabRef**. Type: `RefObject<HTMLButtonElement>`. Default: `NA`.

- **children\***. Type: `ReactNode`. Default: `NA`.

- **title**. Type: `ReactNode`. Default: `NA`.

- **titleValue**. Type: `string`. Default: `NA`.

- **href**. Type: `string`. Default: `NA`.

- **target**. Type: `HTMLAttributeAnchorTarget`. Default: `NA`.

- **rel**. Type: `string`. Default: `NA`.

- **download**. Type: `boolean OR string`. Default: `NA`.

- **ping**. Type: `string`. Default: `NA`.

- **referrerPolicy**. Type: `HTMLAttributeReferrerPolicy`. Default:
  `NA`.

- **shouldSelectOnPressUp**. Type: `boolean`. Default: `NA`.

## See also

See <https://heroui.com/docs/components/tabs>.

## Examples

``` r
library(shiny)
library(shinyNextUI)

items <- tagList(
  tab(
    key = 1,
    title = div(
      class = "flex items-center gap-1",
      icon("home"),
      "Tab 1"
    ),
    card(
      card_body(
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit,
          sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
          Ut enim ad minim veniam, quis nostrud exercitation ullamco
          laboris nisi ut aliquip ex ea commodo consequat."
      )
    )
  ),
  tab(
    key = 2,
    title = "Tab 2",
    card(
      card_body(
        "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
          nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
          reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
      )
    )
  ),
  tab(
    key = 3,
    title = "Tab 3",
    card(
      card_body(
        "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
          officia deserunt mollit anim id est laborum."
      )
    )
  )
)

ui <- nextui_page(
  debug_react = TRUE,
  p(class = "font-extrabold text-2xl uppercase", "Simple tabs"),
  tabs(
    inputId = "tabs1",
    disabledKeys = "2",
    items
  ),
  spacer(y = 2),
  select_input(
    "select",
    label = "Tab to select:",
    value = "1",
    select_item(key = 1, value = "1", "1"),
    select_item(key = 3, value = "3", "3")
  ),
  p("Selected tab is:", textOutput("active_tab", inline = TRUE)),
  spacer(y = 5),
  divider(),
  p(class = "font-extrabold text-2xl uppercase", "Tab size"),
  lapply(sizes, function(size) {
    tagList(
      p(class = "", sprintf("Size: %s", size)),
      tabs(
        inputId = sprintf("tabs-%s", size),
        size = size,
        items
      )
    )
  }),
  spacer(y = 5),
  divider(),
  p(class = "font-extrabold text-2xl uppercase", "Tab variants"),
  lapply(tabs_variants, function(variant) {
    tagList(
      p(sprintf("Variant: %s", variant)),
      tabs(
        inputId = sprintf("tabs-%s", variant),
        variant = variant,
        items
      )
    )
  }),
  spacer(y = 5),
  divider(),
  p(class = "font-extrabold text-2xl uppercase", "Tab color"),
  lapply(colors, function(color) {
    tagList(
      p(class = "", sprintf("Color: %s", color)),
      tabs(
        inputId = sprintf("tabs-%s", color),
        variant = "bordered",
        color = color,
        items
      )
    )
  })
)

server <- function(input, output, session) {
  output$active_tab <- renderText(input$tabs1)
  observeEvent(input$select, {
    update_tabs(session, inputId = "tabs1", value = input$select)
  })
}

if (interactive() || is_testing()) shinyApp(ui, server)
```
