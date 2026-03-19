# listbox

A listbox displays a list of options and allows a user to select one or
more of them.

## Usage

``` r
listbox(inputId, ..., value = default_value)

listbox_section(...)

listbox_item(...)

update_listbox(session = shiny::getDefaultReactiveDomain(), inputId, ...)
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
HeroUI listbox component.

## Details

- **children\***. Type: `ReactNode[]`. Default: `NA`.

- **items**. Type: `Iterable<T>`. Default: `NA`.

- **variant**. Type:
  `solid OR bordered OR light OR flat OR faded OR shadow`. Default:
  `"solid"`.

- **color**. Type:
  `default OR primary OR secondary OR success OR warning OR danger`.
  Default: `"default"`.

- **selectionMode**. Type: `none OR single OR multiple`. Default: `NA`.

- **selectedKeys**. Type: `React.Key[]`. Default: `NA`.

- **disabledKeys**. Type: `React.Key[]`. Default: `NA`.

- **defaultSelectedKeys**. Type: `all OR React.Key[]`. Default: `NA`.

- **disallowEmptySelection**. Type: `boolean`. Default: `false`.

- **shouldHighlightOnFocus**. Type: `boolean`. Default: `false`.

- **autoFocus**. Type: `boolean OR first OR last`. Default: `false`.

- **topContent**. Type: `ReactNode`. Default: `NA`.

- **bottomContent**. Type: `ReactNode`. Default: `NA`.

- **emptyContent**. Type: `ReactNode`. Default: `"No items."`.

- **shouldFocusWrap**. Type: `boolean`. Default: `false`.

- **isVirtualized**. Type: `boolean`. Default: `false`.

- **virtualization**. Type:
  `Record<"maxListboxHeight" & "itemHeight", number>`. Default: `NA`.

- **hideEmptyContent**. Type: `boolean`. Default: `false`.

- **hideSelectedIcon**. Type: `boolean`. Default: `false`.

- **disableAnimation**. Type: `boolean`. Default: `false`.

- **classNames**. Type:
  `Partial<Record<"base" OR "list" OR "emptyContent", string>>`.
  Default: `NA`.

- **itemClasses**. Type:
  `Partial<Record<"base" OR "wrapper" OR "title" OR "description" OR "selectedIcon", string>>`.
  Default: `NA`.

&nbsp;

- **onAction**. Type: `(key: React.Key) => void`. Default: `NA`.

- **onSelectionChange**. Type: `(keys: React.Key[]) => void`. Default:
  `NA`.

&nbsp;

- **children\***. Type: `ReactNode`. Default: `NA`.

- **title**. Type: `string`. Default: `NA`.

- **items**. Type: `Iterable<T>`. Default: `NA`.

- **hideSelectedIcon**. Type: `boolean`. Default: `false`.

- **showDivider**. Type: `boolean`. Default: `false`.

- **dividerProps**. Type: `DividerProps`. Default: `NA`.

- **classNames**. Type:
  `Partial<Record<"base" OR "heading" OR "group" OR "divider", string>>`.
  Default: `NA`.

- **itemClasses**. Type:
  `Partial<Record<"base" OR "wrapper" OR "title" OR "description" OR "shortcut" OR "selectedIcon", string>>`.
  Default: `NA`.

&nbsp;

- **children\***. Type: `ReactNode`. Default: `NA`.

- **key**. Type: `React.Key`. Default: `NA`.

- **title**. Type: `string OR ReactNode`. Default: `NA`.

- **textValue**. Type: `string`. Default: `NA`.

- **description**. Type: `string OR ReactNode`. Default: `NA`.

- **shortcut**. Type: `string OR ReactNode`. Default: `NA`.

- **startContent**. Type: `ReactNode`. Default: `NA`.

- **endContent**. Type: `ReactNode`. Default: `NA`.

- **selectedIcon**. Type: `ListboxItemSelectedIconProps`. Default: `NA`.

- **href**. Type: `string`. Default: `NA`.

- **target**. Type: `HTMLAttributeAnchorTarget`. Default: `NA`.

- **rel**. Type: `string`. Default: `NA`.

- **download**. Type: `boolean OR string`. Default: `NA`.

- **ping**. Type: `string`. Default: `NA`.

- **referrerPolicy**. Type: `HTMLAttributeReferrerPolicy`. Default:
  `NA`.

- **shouldHighlightOnFocus**. Type: `boolean`. Default: `false`.

- **hideSelectedIcon**. Type: `boolean`. Default: `false`.

- **showDivider**. Type: `boolean`. Default: `false`.

- **isDisabled**. Type: `boolean`. Default: `false`.

- **isSelected**. Type: `boolean`. Default: `false`.

- **isReadOnly**. Type: `boolean`. Default: `false`.

- **classNames**. Type:
  `Partial<Record<"base" OR "wrapper" OR "title" OR "description" OR "shortcut" OR "selectedIcon", string>>`.
  Default: `NA`.

&nbsp;

- **onAction**. Type: `() => void`. Default: `NA`.

- **onPress**. Type: `(e: PressEvent) => void`. Default: `NA`.

- **onPressStart**. Type: `(e: PressEvent) => void`. Default: `NA`.

- **onPressEnd**. Type: `(e: PressEvent) => void`. Default: `NA`.

- **onPressChange**. Type: `(isPressed: boolean) => void`. Default:
  `NA`.

- **onPressUp**. Type: `(e: PressEvent) => void`. Default: `NA`.

- **onKeyDown**. Type: `(e: KeyboardEvent) => void`. Default: `NA`.

- **onKeyUp**. Type: `(e: KeyboardEvent) => void`. Default: `NA`.

- **onClick**. Type: `MouseEventHandler`. Default: `NA`.

## See also

See <https://heroui.com/docs/components/listbox>.

## Examples

``` r
library(shiny)
library(shinyNextUI)
library(shiny.react)

animals <- list(
  list(
    label = "Bulbasaur",
    value = "bulbasaur",
    description = "Blabla",
    avatar = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png"
  ),
  list(
    label = "Pikachu",
    value = "pikachu",
    description = "Electric mouse",
    avatar = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png"
  )
)

items <- lapply(animals, function(animal) {
  listbox_item(
    key = animal[["value"]],
    description = animal[["description"]],
    startContent = avatar(src = animal[["avatar"]]),
    animal[["label"]]
  )
})

ui <- nextui_page(
  debug_react = TRUE,
  spacer(y = 4),
  action_button("update", "Update to Pikachu?"),
  spacer(y = 4),
  div(
    class = "w-full max-w-[260px] border-small px-1 py-2
    rounded-small border-default-200 dark:border-default-100",
    listbox(
      "listbox",
      label = "Select a pokemon",
      value = "bulbasaur",
      variant = "flat",
      selectionMode = "single",
      listbox_section(
        title = "Default pokemons",
        items
      )
    )
  ),
  textOutput("res")
)

server <- function(input, output, session) {
  output$res <- renderText(input$listbox)
  observeEvent(input$listbox, {
    print(input$listbox)
  })

  observeEvent(input$update, {
    update_listbox(session, "listbox", value = JS("['pikachu']"))
  })
}

if (interactive() || is_testing()) shinyApp(ui, server)
```
