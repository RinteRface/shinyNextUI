# image

The Image component is used to display images with support for fallback.

## Usage

``` r
image(...)
```

## Arguments

- ...:

  Props to pass to the component. The allowed props are listed below in
  the **Details** section.

## Value

An object of class `shiny.tag` containing the necessary configuration
and including options such as JavaScript dependencies to instantiate a
HeroUI image component.

## Details

- **src**. Type: `string`. Default: `NA`.

- **srcSet**. Type: `string`. Default: `NA`.

- **sizes**. Type: `string`. Default: `NA`.

- **alt**. Type: `string`. Default: `NA`.

- **width**. Type: `number`. Default: `NA`.

- **height**. Type: `number`. Default: `NA`.

- **radius**. Type: `none OR sm OR md OR lg OR full`. Default: `"xl"`.

- **shadow**. Type: `none OR sm OR md OR lg`. Default: `"none"`.

- **loading**. Type: `eager OR lazy`. Default: `NA`.

- **fallbackSrc**. Type: `string`. Default: `NA`.

- **isBlurred**. Type: `boolean`. Default: `false`.

- **isZoomed**. Type: `boolean`. Default: `false`.

- **removeWrapper**. Type: `boolean`. Default: `false`.

- **disableSkeleton**. Type: `boolean`. Default: `false`.

- **classNames**. Type:
  `Partial<Record<"img" OR "wrapper" OR "zoomedWrapper" OR "blurredImg", string>>`.
  Default: `NA`.

&nbsp;

- **onLoad**. Type: `ReactEventHandler<HTMLImageElement>`. Default:
  `NA`.

- **onError**. Type: `() => void`. Default: `NA`.

## See also

See <https://heroui.com/docs/components/image>.

## Examples

``` r
library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  div(
    class = "flex gap-5 my-2",
    image(
      width = 300,
      alt = "NextUI hero Image",
      src = "https://heroui.com/images/hero-card-complete.jpeg"
    ),
    image(
      isBlurred = TRUE,
      width = 300,
      alt = "Album cover",
      src = "https://heroui.com/images/hero-card-complete.jpeg"
    ),
    image(
      isZoomed = TRUE,
      width = 300,
      alt = "Fruit image with zoom effect",
      src = "https://heroui.com/images/hero-card-complete.jpeg"
    )
  )
)

server <- function(input, output, session) {
}

if (interactive() || is_testing()) shinyApp(ui, server)
```
