# snippet

Snippet is a component that can be used to display inline or multiline
code snippets.

## Usage

``` r
snippet(...)
```

## Arguments

- ...:

  Props to pass to the component. The allowed props are listed below in
  the **Details** section.

## Value

An object of class `shiny.tag` containing the necessary configuration
and including options such as JavaScript dependencies to instantiate a
HeroUI snippet component.

## Details

- **children**. Type: `ReactNode OR ReactNode[]`. Default: `NA`.

- **size**. Type: `sm OR md OR lg`. Default: `"md"`.

- **radius**. Type: `none OR sm OR md OR lg`. Default: `"lg"`.

- **symbol**. Type: `string OR ReactNode`. Default: `"$"`.

- **timeout**. Type: `number`. Default: `"2000"`.

- **codeString**. Type: `string`. Default: `NA`.

- **tooltipProps**. Type: `TooltipProps`. Default: `NA`.

- **copyIcon**. Type: `ReactNode`. Default: `NA`.

- **checkIcon**. Type: `ReactNode`. Default: `NA`.

- **disableTooltip**. Type: `boolean`. Default: `false`.

- **disableCopy**. Type: `boolean`. Default: `false`.

- **hideCopyButton**. Type: `boolean`. Default: `false`.

- **hideSymbol**. Type: `boolean`. Default: `false`.

- **copyButtonProps**. Type: `ButtonProps`. Default: `NA`.

- **disableAnimation**. Type: `boolean`. Default: `false`.

- **classNames**. Type:
  `Partial<Record<'base' OR 'content' OR 'pre' OR 'symbol' OR 'copyButton' OR 'checkIcon', string>>`.
  Default: `NA`.

&nbsp;

- **onCopy**. Type: `(value: string OR string[]) => void`. Default:
  `NA`.

## See also

See <https://heroui.com/docs/components/snippet>.

## Examples

``` r
library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  debug_react = TRUE,
  snippet("npm install @nextui-org/react", variant = "bordered"),
  spacer(y = 2),
  snippet("you can't copy me", hideCopyButton = TRUE),
  spacer(y = 2),
  snippet(
    color = "secondary",
    variant = "flat",
    span("npm install @nextui-org/react"),
    span("yarn add @nextui-org/react")
  )
)

server <- function(input, output, session) {

}

if (interactive() || is_testing()) shinyApp(ui, server)
```
