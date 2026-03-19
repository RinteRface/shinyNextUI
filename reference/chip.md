# chip

A Chip is a small block of essential information that represent an
input, attribute, or action.

## Usage

``` r
chip(...)
```

## Arguments

- ...:

  Props to pass to the component. The allowed props are listed below in
  the **Details** section.

## Value

An object of class `shiny.tag` containing the necessary configuration
and including options such as JavaScript dependencies to instantiate a
HeroUI chip component.

## Details

- **children**. Type: `ReactNode`. Default: `NA`.

- **variant**. Type:
  `solid OR bordered OR light OR flat OR faded OR shadow OR dot`.
  Default: `"solid"`.

- **color**. Type:
  `default OR primary OR secondary OR success OR warning OR danger`.
  Default: `"default"`.

- **size**. Type: `sm OR md OR lg`. Default: `"md"`.

- **radius**. Type: `none OR sm OR md OR lg OR full`. Default: `"full"`.

- **avatar**. Type: `ReactNode`. Default: `NA`.

- **startContent**. Type: `ReactNode`. Default: `NA`.

- **endContent**. Type: `ReactNode`. Default: `NA`.

- **isDisabled**. Type: `boolean`. Default: `false`.

- **classNames**. Type:
  `Partial<Record<"base" OR "content" OR "dot" OR "avatar" OR "closeButton", string>>`.
  Default: `NA`.

&nbsp;

- **onClose**. Type: `(e: PressEvent) => void`. Default: `NA`.

## See also

See <https://heroui.com/docs/components/chip>.

## Examples

``` r
library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  div(
    class = "flex gap-2 my-2",
    chip(
      id = "plop",
      "A chip",
      onClose = JS("(e) => {
        var chipEl = e.target.offsetParent;
        Shiny.setInputValue(chipEl.id, false);
        $(chipEl).remove();
      }")
    ),
    chip(
      "A chip",
      color = "success",
      size = "lg",
      radius = "sm",
      variant = "flat",
      startContent = icon("home"),
      endContent = icon("bell")
    ),
    chip(
      avatar = avatar(name = "JW", src = "https://i.pravatar.cc/300?u=a042581f4e29026709d"),
      "hello"
    ),
    reactOutput("modal")
  )
)

server <- function(input, output, session) {

  modalVisible <- reactiveVal(FALSE)
  observeEvent({
    input$plop
  }, {
    if (!input$plop) modalVisible(TRUE)
  })

  observeEvent(input$modal_closed, {
    modalVisible(FALSE)
  })

  output$modal <- renderReact({
    modal(
      scrollBehavior = input$scroll,
      isOpen = modalVisible(),
      size = "sm",
      placement = "top",
      modal_content(
        modal_header("Congrats"),
        modal_body(
          p("You closed me!")
        )
      ),
      onClose = JS("() => Shiny.setInputValue('modal_closed', true, {priority: 'event'})")
    )
  })
}

if (interactive() || is_testing()) shinyApp(ui, server)
```
