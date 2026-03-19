# link

Links allow users to click their way from page to page. This component
is styled to resemble a hyperlink and semantically renders an \<a\>

## Usage

``` r
link(...)
```

## Arguments

- ...:

  Props to pass to the component. The allowed props are listed below in
  the **Details** section.

## Value

An object of class `shiny.tag` containing the necessary configuration
and including options such as JavaScript dependencies to instantiate a
HeroUI link component.

## Details

- **size**. Type: `sm OR md OR lg`. Default: `"md"`.

- **color**. Type:
  `foreground OR primary OR secondary OR success OR warning OR danger`.
  Default: `"primary"`.

- **underline**. Type: `none OR hover OR always OR active OR focus`.
  Default: `"none"`.

- **href**. Type: `string`. Default: `NA`.

- **target**. Type: `HTMLAttributeAnchorTarget`. Default: `NA`.

- **rel**. Type: `string`. Default: `NA`.

- **download**. Type: `boolean OR string`. Default: `NA`.

- **ping**. Type: `string`. Default: `NA`.

- **referrerPolicy**. Type: `HTMLAttributeReferrerPolicy`. Default:
  `NA`.

- **isExternal**. Type: `boolean`. Default: `false`.

- **showAnchorIcon**. Type: `boolean`. Default: `false`.

- **anchorIcon**. Type: `ReactNode`. Default: `NA`.

- **isBlock**. Type: `boolean`. Default: `false`.

- **isDisabled**. Type: `boolean`. Default: `false`.

- **disableAnimation**. Type: `boolean`. Default: `false`.

&nbsp;

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

See <https://heroui.com/docs/components/link>.

## Examples

``` r
library(shiny)
library(shinyNextUI)

colors <- c(
  "default",
  "primary",
  "secondary",
  "success",
  "warning",
  "error"
)

link_config <- data.frame(
  color = colors,
  underline = c(rep("none", 2), "hover", "always", "active", "focus"),
  block = c(rep(TRUE, 3), rep(FALSE, 3)),
  href = c(rep("#", 3), rep("https://google.com", 3)),
  isExternal = c(rep(FALSE, 3), rep(TRUE, 3)),
  size = rep(c("sm", "md", "lg"), 2)
)

link_factory <- function(color, underline, block, href, isExternal, size) {
  link(
    "A super link!",
    color = color,
    underline = underline,
    isBlock = block,
    href = href,
    isExternal = isExternal,
    size = size
  )
}

links <- purrr::pmap(link_config, link_factory)

ui <- nextui_page(
  div(
    class = "grid gap-4 grid-cols-3 grid-rows-2 m-5",
    links
  )
)

server <- function(input, output, session) {}

if (interactive() || is_testing()) shinyApp(ui, server)
```
