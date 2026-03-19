# user

Display user information with avatar and name.

## Usage

``` r
user(...)
```

## Arguments

- ...:

  Props to pass to the component. The allowed props are listed below in
  the **Details** section.

## Value

An object of class `shiny.tag` containing the necessary configuration
and including options such as JavaScript dependencies to instantiate a
HeroUI user component.

## Details

- **name**. Type: `string`. Default: `NA`.

- **description**. Type: `ReactNode`. Default: `NA`.

- **isFocusable**. Type: `boolean`. Default: `false`.

- **avatarProps**. Type: `AvatarProps`. Default: `NA`.

- **classNames**. Type:
  `Partial<Record<"base" OR "wrapper" OR "name" OR "description", string>>`.
  Default: `NA`.

## See also

See <https://heroui.com/docs/components/user>.

## Examples

``` r
library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  div(
    class = "grid gap-4 grid-cols-3 grid-rows-3 m-5",
    user(
      name = "Jane Doe",
      description = "Product Designer",
      avatarProps = JS("{
        src: 'https://i.pravatar.cc/150?u=a04258114e29026702d'
      }")
    )
  )
)

server <- function(input, output, session) {}

if (interactive() || is_testing()) shinyApp(ui, server)
```
