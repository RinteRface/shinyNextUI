# pagination

The Pagination component allows you to display active page and navigate
between multiple pages.

## Usage

``` r
pagination(inputId, ..., value = default_value)

update_pagination(session = shiny::getDefaultReactiveDomain(), inputId, ...)
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
HeroUI pagination component.

## Details

- **variant**. Type: `flat OR bordered OR light OR faded`. Default:
  `"flat"`.

- **color**. Type:
  `default OR primary OR secondary OR success OR warning OR danger`.
  Default: `"default"`.

- **size**. Type: `sm OR md OR lg`. Default: `"md"`.

- **radius**. Type: `none OR sm OR md OR lg OR full`. Default: `"xl"`.

- **total**. Type: `number`. Default: `"1"`.

- **dotsJump**. Type: `number`. Default: `"5"`.

- **initialPage**. Type: `number`. Default: `"1"`.

- **page**. Type: `number`. Default: `NA`.

- **siblings**. Type: `number`. Default: `"1"`.

- **boundaries**. Type: `number`. Default: `"1"`.

- **loop**. Type: `boolean`. Default: `false`.

- **isCompact**. Type: `boolean`. Default: `false`.

- **isDisabled**. Type: `boolean`. Default: `false`.

- **showShadow**. Type: `boolean`. Default: `false`.

- **showControls**. Type: `boolean`. Default: `false`.

- **disableCursorAnimation**. Type: `boolean`. Default: `false`.

- **disableAnimation**. Type: `boolean`. Default: `false`.

- **renderItem**. Type: `PaginationItemProps`. Default: `NA`.

- **getItemAriaLabel**. Type: `(page: string) => string`. Default: `NA`.

- **classNames**. Type:
  `Partial<Record<'base' OR 'wrapper' OR 'prev' OR 'next' OR 'item' OR 'cursor' OR 'forwardIcon' OR 'ellipsis' OR 'chevronNext', string>>`.
  Default: `NA`.

&nbsp;

- **onChange**. Type: `(page: number) => void`. Default: `NA`.

## See also

See <https://heroui.com/docs/components/pagination>.

## Examples

``` r
library(shiny)
library(shinyNextUI)
library(shiny.react)
library(thematic)

thematic_shiny()

max <- 10
cards <- lapply(seq_len(max), function(i) {
  tagList(
    spacer(y = 2),
    card(
      id = sprintf("mycard-%s", i),
      card_header(sprintf("Card %s", i)),
      card_body(
        sprintf("Card content %s", i),
        slider_input(
          sprintf("obs-%s", i),
          "Obs",
          minValue = 0,
          maxValue = 1000,
          value = 500
        ),
        plotOutput(sprintf("distPlot-%s", i))
      )
    )
  )
})

ui <- nextui_page(
  pagination(
    inputId = "pagination",
    loop = TRUE,
    size = "lg",
    variant = "bordered",
    showControls = TRUE,
    page = 1,
    total = max
  )
)

server <- function(input, output, session) {
  history <- reactiveVal(NULL)

  # Dynamically insert cards with the pagination.
  observeEvent(input$pagination, {
    if (!is.null(history()))
      removeUI(sprintf("#mycard-%s", history()), multiple = TRUE)
    insertUI(
      selector = "#pagination",
      where = "afterEnd",
      ui = cards[[input$pagination]]
    )
    history(input$pagination)

    output[[sprintf("distPlot-%s", history())]] <- renderPlot({
      req(input[[sprintf("obs-%s", history())]])
      hist(
        rnorm(input[[sprintf("obs-%s", history())]]),
        main = sprintf("Super plot %s", history())
      )
    })
  })
}

if (interactive() || is_testing()) shinyApp(ui, server)
```
