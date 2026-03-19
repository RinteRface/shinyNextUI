# skeleton

Skeleton is a placeholder to show a loading state and the expected shape
of a component.

## Usage

``` r
skeleton(...)
```

## Arguments

- ...:

  Props to pass to the component. The allowed props are listed below in
  the **Details** section.

## Value

An object of class `shiny.tag` containing the necessary configuration
and including options such as JavaScript dependencies to instantiate a
HeroUI skeleton component.

## Details

- **children**. Type: `ReactNode`. Default: `NA`.

- **isLoaded**. Type: `boolean`. Default: `false`.

- **disableAnimation**. Type: `boolean`. Default: `false`.

- **classNames**. Type: `Partial<Record<"base" OR "content", string>>`.
  Default: `NA`.

## See also

See <https://heroui.com/docs/components/skeleton>.

## Examples

``` r
library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  debug_react = TRUE,
  reactOutput("skeleton_card")
)

server <- function(input, output, session) {

  is_loaded <- reactiveVal(FALSE)
  observeEvent(req(!is_loaded()), {
    Sys.sleep(4)
    is_loaded(TRUE)
  })

  output$skeleton_card <- renderReact({
    card(
      card_header(
        skeleton(
          isLoaded = is_loaded(),
          user(
            name = "Jane Doe",
            description = "Product Designer",
            avatarProps = JS("{
            src: 'https://i.pravatar.cc/150?u=a04258114e29026702d'
          }")
          )
        )
      ),
      card_body(skeleton("Hello World", isLoaded = is_loaded())),
      card_footer(skeleton("Footer", isLoaded = is_loaded()))
    )
  })
}

if (interactive() || is_testing()) shinyApp(ui, server)
```
