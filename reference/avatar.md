# avatar

The Avatar component is used to represent a user, and displays the
profile picture, initials or fallback icon.

## Usage

``` r
avatar(...)

avatar_group(...)
```

## Arguments

- ...:

  Props to pass to the component. The allowed props are listed below in
  the **Details** section.

## Value

An object of class `shiny.tag` containing the necessary configuration
and including options such as JavaScript dependencies to instantiate a
HeroUI avatar component.

## Details

- **src**. Type: `string`. Default: `NA`.

- **color**. Type:
  `default OR primary OR secondary OR success OR warning OR danger`.
  Default: `"default"`.

- **radius**. Type: `none OR sm OR md OR lg OR full`. Default: `"full"`.

- **size**. Type: `sm OR md OR lg`. Default: `"md"`.

- **name**. Type: `string`. Default: `NA`.

- **icon**. Type: `ReactNode`. Default: `NA`.

- **fallback**. Type: `ReactNode`. Default: `NA`.

- **isBordered**. Type: `boolean`. Default: `false`.

- **isDisabled**. Type: `boolean`. Default: `false`.

- **isFocusable**. Type: `boolean`. Default: `false`.

- **showFallback**. Type: `boolean`. Default: `false`.

- **ImgComponent**. Type: `React.ElementType`. Default: `"img"`.

- **imgProps**. Type: `ImgComponentProps`. Default: `NA`.

- **classNames**. Type:
  `Partial<Record<"base" OR "img" OR "fallback" OR "name" OR "icon", string>>`.
  Default: `NA`.

&nbsp;

- **max**. Type: `number`. Default: `"5"`.

- **total**. Type: `number`. Default: `NA`.

- **size**. Type: `AvatarProps['size']`. Default: `NA`.

- **color**. Type: `AvatarProps['color']`. Default: `NA`.

- **radius**. Type: `AvatarProps['radius']`. Default: `NA`.

- **isGrid**. Type: `boolean`. Default: `false`.

- **isDisabled**. Type: `boolean`. Default: `NA`.

- **isBordered**. Type: `boolean`. Default: `NA`.

- **renderCount**. Type: `(count: number) => ReactNode`. Default: `NA`.

- **classNames**. Type: `Partial<Record<"base" OR "count", string>>`.
  Default: `NA`.

## See also

See <https://heroui.com/docs/components/avatar>.

## Examples

``` r
library(shiny)
library(shinyNextUI)

avatar_config <- data.frame(
  size = c("xs", "sm", "md", "lg", "xl"),
  src = c(
    "https://i.pravatar.cc/150?u=a042581f4e29026024d",
    "https://i.pravatar.cc/150?u=a042581f4e29026704d",
    "https://i.pravatar.cc/150?u=a04258114e29026702d",
    "https://i.pravatar.cc/150?u=a048581f4e29026701d",
    "https://i.pravatar.cc/150?u=a092581d4ef9026700d"
  ),
  radius = c(rep("full", 2), "lg", "md", "sm"),
  disabled = c(rep(FALSE, 4), TRUE),
  bordered = c(rep(TRUE, 3), rep(FALSE, 2)),
  color = c(
    "primary",
    "secondary",
    "danger",
    "success",
    "warning"
  ),
  fallback = rep(TRUE, 5)
)

avatar_factory <- function(src, size, disabled, bordered, radius, color, fallback) {
  avatar(
    src = src,
    size = size,
    isDisabled = disabled,
    isBordered = bordered,
    radius = radius,
    color = color,
    showFallback = fallback
  )
}

avatars <- purrr::pmap(avatar_config, avatar_factory)

ui <- nextui_page(
  debug_react = TRUE,
  class = "container mx-auto px-4",
  p("avatar()"),
  spacer(y = 1),
  div(
    class = "flex gap-3 items-center",
    avatars
  ),
  spacer(y = 2),
  p("avatar_group()"),
  spacer(y = 1),
  div(
    class = "flex",
    avatar_group(
      isBordered = TRUE,
      max = 3,
      total = 10,
      lapply(avatar_config$src, function(link) avatar(src = link))
    )
  )
)

server <- function(input, output, session) {}

if (interactive() || is_testing()) shinyApp(ui, server)
```
