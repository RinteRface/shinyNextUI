# badge

Badges are used as a small numerical value or status descriptor for UI
elements.

## Usage

``` r
badge(...)
```

## Arguments

- ...:

  Props to pass to the component. The allowed props are listed below in
  the **Details** section.

## Value

An object of class `shiny.tag` containing the necessary configuration
and including options such as JavaScript dependencies to instantiate a
HeroUI badge component.

## Details

- **children**. Type: `ReactNode`. Default: `NA`.

- **content**. Type: `string OR number OR ReactNode`. Default: `NA`.

- **variant**. Type: `solid OR flat OR faded OR shadow`. Default:
  `"solid"`.

- **color**. Type:
  `default OR primary OR secondary OR success OR warning OR danger`.
  Default: `"default"`.

- **size**. Type: `sm OR md OR lg`. Default: `"md"`.

- **shape**. Type: `circle OR rectangle`. Default: `"rectangle"`.

- **placement**. Type:
  `top-right OR top-left OR bottom-right OR bottom-left`. Default:
  `"top-right"`.

- **showOutline**. Type: `boolean`. Default: `true`.

- **disableOutline**. Type: `boolean`. Default: `false`.

- **disableAnimation**. Type: `boolean`. Default: `false`.

- **isInvisible**. Type: `boolean`. Default: `false`.

- **isOneChar**. Type: `boolean`. Default: `false`.

- **isDot**. Type: `boolean`. Default: `false`.

- **classNames**. Type: `Partial<Record<"base"OR"badge", string>>`.
  Default: `NA`.

## See also

See <https://heroui.com/docs/components/badge>.

## Examples

``` r
library(shiny)
library(shinyNextUI)

badge_config <- data.frame(
  size = c(rep("sm", 2), rep("md", 2), rep("lg", 2)),
  color = c(
    "default",
    "primary",
    "secondary",
    "success",
    "warning",
    "danger"
  ),
  disable_outline = c(rep(FALSE, 3), rep(TRUE, 3))
)

variants <- c("solid", "flat", "faded", "shadow")
placement <- c("top-right", "bottom-right", "top-left", "bottom-left")
shape <- c("rectangle", "circle")

badge_factory <- function(size, color, disable_outline) {
  badge(
    class = "mx-5",
    size = size,
    color = color,
    disableOutline = disable_outline,
    content = 1,
    avatar()
  )
}

badges <- purrr::pmap(badge_config, badge_factory)

ui <- nextui_page(
  p(class = "font-extrabold text-2xl uppercase", "Badges"),
  div(
    class = "flex flex-row",
    badges
  ),
  spacer(y = 2),
  p(class = "font-extrabold text-2xl uppercase", "Badge content"),
  div(
    class = "flex flex-row",
    badge(
      color = "danger",
      content = "New",
      placement = "top-left",
      avatar(
        bordered = TRUE,
        squared = TRUE,
        color = "secondary",
        size = "lg",
        src = "https://i.pravatar.cc/300?u=a042581f4e29026707d"
      )
    )
  ),
  spacer(y = 2),
  p(class = "font-extrabold text-2xl uppercase", "Solid variant"),
  div(
    class = "flex flex-row",
    badge(variant = "solid", color = "success", size = "lg", content = 5, avatar())
  ),
  spacer(y = 2),
  p(class = "font-extrabold text-2xl uppercase", "Flat variant"),
  div(
    class = "flex flex-row",
    badge(variant = "flat", color = "success", size = "lg", content = 5, avatar())
  ),
  spacer(y = 2),
  p(class = "font-extrabold text-2xl uppercase", "Faded variant"),
  div(
    class = "flex flex-row",
    badge(variant = "faded", color = "success", size = "lg", content = 5, avatar())
  ),
  spacer(y = 2),
  p(class = "font-extrabold text-2xl uppercase", "Shadow variant"),
  div(
    class = "flex flex-row",
    badge(variant = "shadow", color = "success", size = "lg", content = 5, avatar())
  )
)

server <- function(input, output, session) {}

if (interactive() || is_testing()) shinyApp(ui, server)
```
