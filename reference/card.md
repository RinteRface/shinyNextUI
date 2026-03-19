# card

Card is a container for text, photos, and actions in the context of a
single subject.

## Usage

``` r
card(...)

card_body(...)

card_header(...)

card_footer(...)
```

## Arguments

- ...:

  Props to pass to the component. The allowed props are listed below in
  the **Details** section.

## Value

An object of class `shiny.tag` containing the necessary configuration
and including options such as JavaScript dependencies to instantiate a
HeroUI card component.

## Details

- **children**. Type: `ReactNode OR ReactNode[]`. Default: `NA`.

- **shadow**. Type: `none OR sm OR md OR lg`. Default: `"md"`.

- **radius**. Type: `none OR sm OR md OR lg`. Default: `"lg"`.

- **fullWidth**. Type: `boolean`. Default: `false`.

- **isHoverable**. Type: `boolean`. Default: `false`.

- **isPressable**. Type: `boolean`. Default: `false`.

- **isBlurred**. Type: `boolean`. Default: `false`.

- **isFooterBlurred**. Type: `boolean`. Default: `false`.

- **isDisabled**. Type: `boolean`. Default: `false`.

- **disableAnimation**. Type: `boolean`. Default: `false`.

- **disableRipple**. Type: `boolean`. Default: `false`.

- **allowTextSelectionOnPress**. Type: `boolean`. Default: `false`.

- **classNames**. Type:
  `Partial<Record<'base' OR 'header' OR 'body' OR 'footer', string>>`.
  Default: `NA`.

&nbsp;

- **onPress**. Type: `(e: PressEvent) => void`. Default: `NA`.

- **onPressStart**. Type: `(e: PressEvent) => void`. Default: `NA`.

- **onPressEnd**. Type: `(e: PressEvent) => void`. Default: `NA`.

- **onPressChange**. Type: `(isPressed: boolean) => void`. Default:
  `NA`.

- **onPressUp**. Type: `(e: PressEvent) => void`. Default: `NA`.

## See also

See <https://heroui.com/docs/components/card>.

## Examples

``` r
library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  div(
    class = "grid gap-4 grid-cols-3 grid-rows-3 m-5",
    card(card_body("Simple card without anything")),
    card(
      variant = "bordered",
      card_header("Card title"),
      divider(),
      card_body(h1("Card body")),
      divider(),
      card_footer("Card Footer")
    ),
    card(
      #isBlurred = TRUE,
      isPressable = TRUE,
      onPress = JS("() => alert('You pressed me')"),
      shadow = "sm",
      className = "border-none bg-background/60 dark:bg-default-100/50 max-w-[610px]",
      card_body("Press me!")
    )
  )
)

server <- function(input, output, session) {

}

if (interactive() || is_testing()) shinyApp(ui, server)
```
