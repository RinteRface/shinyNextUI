# autocomplete

An autocomplete combines a text input with a listbox, allowing users to
filter a list of options to items matching a query.

## Usage

``` r
autocomplete(inputId, ..., value = default_value)

autocomplete_section(...)

autocomplete_item(...)

update_autocomplete(session = shiny::getDefaultReactiveDomain(), inputId, ...)
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
HeroUI autocomplete component.

## Details

1.  Autocomplete Props

    - **children\***. Type: `ReactNode[]`. Default: `NA`.

    - **label**. Type: `ReactNode`. Default: `NA`.

    - **name**. Type: `string`. Default: `NA`.

    - **variant**. Type: `flat OR bordered OR faded OR underlined`.
      Default: `"flat"`.

    - **color**. Type:
      `default OR primary OR secondary OR success OR warning OR danger`.
      Default: `"default"`.

    - **size**. Type: `sm OR md OR lg`. Default: `"md"`.

    - **radius**. Type: `none OR sm OR md OR lg OR full`. Default: `NA`.

    - **items**. Type: `Iterable<T>`. Default: `NA`.

    - **defaultItems**. Type: `Iterable<T>`. Default: `NA`.

    - **inputValue**. Type: `string`. Default: `NA`.

    - **defaultInputValue**. Type: `string`. Default: `NA`.

    - **allowsCustomValue**. Type: `boolean`. Default: `false`.

    - **allowsEmptyCollection**. Type: `boolean`. Default: `true`.

    - **shouldCloseOnBlur**. Type: `boolean`. Default: `true`.

    - **placeholder**. Type: `string`. Default: `NA`.

    - **description**. Type: `ReactNode`. Default: `NA`.

    - **menuTrigger**. Type: `focus OR input OR manual`. Default:
      `"focus"`.

    - **labelPlacement**. Type: `inside OR outside OR outside-left`.
      Default: `"inside"`.

    - **selectedKey**. Type: `React.Key`. Default: `NA`.

    - **defaultSelectedKey**. Type: `React.Key`. Default: `NA`.

    - **disabledKeys**. Type: `all OR React.Key[]`. Default: `NA`.

    - **errorMessage**. Type:
      `ReactNode OR ((v: ValidationResult) => ReactNode)`. Default:
      `NA`.

    - **validate**. Type:
      `(value: { inputValue: string, selectedKey: React.Key }) => ValidationError OR true OR null OR undefined`.
      Default: `NA`.

    - **validationBehavior**. Type: `native OR aria`. Default:
      `"native"`.

    - **startContent**. Type: `ReactNode`. Default: `NA`.

    - **endContent**. Type: `ReactNode`. Default: `NA`.

    - **autoFocus**. Type: `boolean`. Default: `false`.

    - **defaultFilter**. Type:
      `(textValue: string, inputValue: string) => boolean`. Default:
      `NA`.

    - **filterOptions**. Type: `Intl.CollatorOptions`. Default:
      `"{ sensitivity: 'base'}"`.

    - **maxListboxHeight**. Type: `number`. Default: `"256"`.

    - **itemHeight**. Type: `number`. Default: `"32"`.

    - **isVirtualized**. Type: `boolean`. Default: `"undefined"`.

    - **isReadOnly**. Type: `boolean`. Default: `false`.

    - **isRequired**. Type: `boolean`. Default: `false`.

    - **isInvalid**. Type: `boolean`. Default: `false`.

    - **isDisabled**. Type: `boolean`. Default: `false`.

    - **fullWidth**. Type: `boolean`. Default: `true`.

    - **selectorIcon**. Type: `ReactNode`. Default: `NA`.

    - **clearIcon**. Type: `ReactNode`. Default: `NA`.

    - **showScrollIndicators**. Type: `boolean`. Default: `true`.

    - **scrollRef**. Type: `React.RefObject<HTMLElement>`. Default:
      `NA`.

    - **inputProps**. Type: `InputProps`. Default: `NA`.

    - **popoverProps**. Type: `PopoverProps`. Default: `NA`.

    - **listboxProps**. Type: `ListboxProps`. Default: `NA`.

    - **scrollShadowProps**. Type: `ScrollShadowProps`. Default: `NA`.

    - **selectorButtonProps**. Type: `ButtonProps`. Default: `NA`.

    - **clearButtonProps**. Type: `ButtonProps`. Default: `NA`.

    - **isClearable**. Type: `boolean`. Default: `true`.

    - **disableClearable**. Type: `boolean`. Default: `false`.

    - **disableAnimation**. Type: `boolean`. Default: `true`.

    - **disableSelectorIconRotation**. Type: `boolean`. Default:
      `false`.

    - **classNames**. Type:
      `Partial<Record<'base' OR 'listboxWrapper' OR 'listbox' OR 'popoverContent' OR 'endContentWrapper' OR 'clearButton' OR 'selectorButton', string>>`.
      Default: `NA`.

2.  Autocomplete Events

    - **onOpenChange**. Type:
      `(isOpen: boolean, menuTrigger?: MenuTriggerAction) => void`.
      Default: `NA`.

    - **onInputChange**. Type: `(value: string) => void`. Default: `NA`.

    - **onSelectionChange**. Type: `(key: React.Key) => void`. Default:
      `NA`.

    - **onFocus**. Type: `(e: FocusEvent<HTMLInputElement>) => void`.
      Default: `NA`.

    - **onBlur**. Type: `(e: FocusEvent<HTMLInputElement>) => void`.
      Default: `NA`.

    - **onFocusChange**. Type: `(isFocused: boolean) => void`. Default:
      `NA`.

    - **onKeyDown**. Type: `(e: KeyboardEvent) => void`. Default: `NA`.

    - **onKeyUp**. Type: `(e: KeyboardEvent) => void`. Default: `NA`.

    - **onClose**. Type: `() => void`. Default: `NA`.

## See also

See <https://heroui.com/docs/components/autocomplete>.

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
  autocomplete_item(
    key = animal[["value"]],
    value = animal[["value"]],
    startContent = avatar(src = animal[["avatar"]]),
    animal[["label"]]
  )
})

ui <- nextui_page(
  debug_react = TRUE,
  action_button("update", "Update to Pikachu?"),
  spacer(y = 4),
  autocomplete(
    "autocomplete",
    label = "Select a pokemon",
    isRequired = TRUE,
    value = "bulbasaur",
    autocomplete_section(
      title = "Default pokemons",
      items
    )
  ),
  textOutput("res")
)

server <- function(input, output, session) {
  output$res <- renderText(input$autocomplete)
  observeEvent(input$autocomplete, {
    print(input$autocomplete)
  })

  observeEvent(input$update, {
    update_autocomplete(session, "autocomplete", value = "pikachu")
  })
}

if (interactive() || is_testing()) shinyApp(ui, server)
```
