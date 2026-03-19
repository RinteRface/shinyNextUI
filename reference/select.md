# select

A select displays a collapsible list of options and allows a user to
select one or more of them.

## Usage

``` r
select_input(inputId, ..., value = default_value)

select_section(...)

select_item(...)

update_select_input(session = shiny::getDefaultReactiveDomain(), inputId, ...)
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
HeroUI select component.

## Details

1.  Select Props

    - **children\***. Type: `ReactNode[]`. Default: `NA`.

    - **items**. Type: `Iterable<T>`. Default: `NA`.

    - **selectionMode**. Type: `single OR multiple`. Default: `NA`.

    - **selectedKeys**. Type: `all OR Iterable<React.Key>`. Default:
      `NA`.

    - **disabledKeys**. Type: `Iterable<React.Key>`. Default: `NA`.

    - **defaultSelectedKeys**. Type: `all OR Iterable<React.Key>`.
      Default: `NA`.

    - **variant**. Type: `flat OR bordered OR faded OR underlined`.
      Default: `"flat"`.

    - **color**. Type:
      `default OR primary OR secondary OR success OR warning OR danger`.
      Default: `"default"`.

    - **size**. Type: `sm OR md OR lg`. Default: `"md"`.

    - **radius**. Type: `none OR sm OR md OR lg OR full`. Default: `NA`.

    - **placeholder**. Type: `string`. Default: `"Select an option"`.

    - **labelPlacement**. Type: `inside OR outside OR outside-left`.
      Default: `"inside"`.

    - **label**. Type: `ReactNode`. Default: `NA`.

    - **description**. Type: `ReactNode`. Default: `NA`.

    - **errorMessage**. Type:
      `ReactNode OR ((v: ValidationResult) => ReactNode)`. Default:
      `NA`.

    - **startContent**. Type: `ReactNode`. Default: `NA`.

    - **endContent**. Type: `ReactNode`. Default: `NA`.

    - **selectorIcon**. Type: `ReactNode`. Default: `NA`.

    - **scrollRef**. Type: `React.RefObject<HTMLElement>`. Default:
      `NA`.

    - **spinnerRef**. Type: `React.RefObject<HTMLElement>`. Default:
      `NA`.

    - **maxListboxHeight**. Type: `number`. Default: `"256"`.

    - **itemHeight**. Type: `number`. Default: `"32"`.

    - **isVirtualized**. Type: `boolean`. Default: `"undefined"`.

    - **fullWidth**. Type: `boolean`. Default: `true`.

    - **isOpen**. Type: `boolean`. Default: `NA`.

    - **defaultOpen**. Type: `boolean`. Default: `NA`.

    - **isRequired**. Type: `boolean`. Default: `false`.

    - **isDisabled**. Type: `boolean`. Default: `false`.

    - **isMultiline**. Type: `boolean`. Default: `false`.

    - **isInvalid**. Type: `boolean`. Default: `false`.

    - **validationState**. Type: `valid OR invalid`. Default: `NA`.

    - **showScrollIndicators**. Type: `boolean`. Default: `true`.

    - **autoFocus**. Type: `boolean`. Default: `false`.

    - **disallowEmptySelection**. Type: `boolean`. Default: `false`.

    - **disableAnimation**. Type: `boolean`. Default: `true`.

    - **disableSelectorIconRotation**. Type: `boolean`. Default:
      `false`.

    - **hideEmptyContent**. Type: `boolean`. Default: `false`.

    - **popoverProps**. Type: `PopoverProps`. Default: `NA`.

    - **listboxProps**. Type: `ListboxProps`. Default: `NA`.

    - **scrollShadowProps**. Type: `ScrollShadowProps`. Default: `NA`.

    - **classNames**. Type:
      `Partial<Record<"base"OR "label"OR "trigger"OR "mainWrapper" OR "innerWrapper"OR "selectorIcon" OR "value" OR "listboxWrapper"OR "listbox" OR "popoverContent" OR "helperWrapper" OR "description" OR "errorMessage", string>>`.
      Default: `NA`.

2.  Select Events

    - **onClose**. Type: `() => void`. Default: `NA`.

    - **onOpenChange**. Type: `(isOpen: boolean) => void`. Default:
      `NA`.

    - **onSelectionChange**. Type:
      `(keys: "all" OR Set<React.Key> & {anchorKey?: string; currentKey?: string}) => void`.
      Default: `NA`.

    - **onChange**. Type: `React.ChangeEvent<HTMLSelectElement>`.
      Default: `NA`.

    - **renderValue**. Type: `RenderValueFunction`. Default: `NA`.

## See also

See <https://heroui.com/docs/components/select>.

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

select_items <- lapply(animals, function(animal) {
  select_item(
    key = animal[["value"]],
    value = animal[["value"]],
    startContent = avatar(src = animal[["avatar"]]),
    animal[["label"]]
  )
})

label_placements <- c(
  "inside",
  "outside",
  "outside-left"
)

ui <- nextui_page(
  debug_react = TRUE,
  p(class = "font-extrabold text-2xl uppercase", "Basic select"),
  action_button("update", "Update to bulbasaur?"),
  spacer(y = 2),
  action_button("toggle", "Open select"),
  spacer(y = 2),
  select_input(
    inputId = "select",
    label = "Select an pokemon",
    value = JS("['pikachu']"),
    selectionMode = "multiple",
    description = "This is a select input. You can select multiple values.",
    select_items
  ),
  textOutput("select_val"),
  spacer(y = 5),
  divider(),
  p(class = "font-extrabold text-2xl uppercase", "Variants"),
  lapply(select_variants, function(variant) {
    tagList(
      select_input(
        inputId = sprintf("select-%s", variant),
        label = "Select a pokemon",
        variant = variant,
        value = JS("['pikachu']"),
        description = sprintf("This is a select input with %s variant style", variant),
        select_items
      ),
      spacer(y = 2)
    )
  }),
  spacer(y = 5),
  divider(),
  p(
    class = "font-extrabold text-2xl uppercase",
    "Label placement and validation (no value specified)"
  ),
  lapply(label_placements, function(placement) {
    tagList(
      select_input(
        inputId = sprintf("select-%s", placement),
        label = "Select a pokemon",
        labelPlacement = placement,
        description = sprintf("This is a select input with %s label placement", placement),
        select_items
      ),
      spacer(y = 10)
    )
  }),
  spacer(y = 5),
  divider(),
  p(
    class = "font-extrabold text-2xl uppercase",
    "Custom render value"
  ),
  select_input(
    inputId = "customselect",
    labelPlacement = "outside-left",
    label = "Pokemon",
    description = "This is a select input. You can select multiple values.",
    items = jsonlite::toJSON(animals),
    select_items
  )
)

server <- function(input, output, session) {
  opened <- reactiveVal(FALSE)
  observeEvent(input$update, {
    update_select_input(session, "select", value = JS("['bulbasaur']"))
  })
  observeEvent(input$toggle, {
    opened(!opened())
    update_select_input(session, "select", isOpen = opened())
  })
  output$select_val <- renderText(input$select)
}

if (interactive() || is_testing()) shinyApp(ui, server)
```
