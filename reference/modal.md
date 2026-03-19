# modal

Displays a dialog with custom content that requires attention or
provides additional information.

## Usage

``` r
modal(...)

modal_content(...)

modal_header(...)

modal_body(...)

modal_footer(...)
```

## Arguments

- ...:

  Props to pass to the component. The allowed props are listed below in
  the **Details** section.

## Value

An object of class `shiny.tag` containing the necessary configuration
and including options such as JavaScript dependencies to instantiate a
HeroUI modal component.

## Details

- **children\***. Type: `ReactNode`. Default: `NA`.

- **size**. Type:
  `xs OR sm OR md OR lg OR xl OR 2xl OR 3xl OR 4xl OR 5xl OR full`.
  Default: `"md"`.

- **radius**. Type: `none OR sm OR md OR lg`. Default: `"lg"`.

- **shadow**. Type: `none OR sm OR md OR lg`. Default: `"lg"`.

- **backdrop**. Type: `transparent OR opaque OR blur`. Default:
  `"opaque"`.

- **scrollBehavior**. Type: `normal OR inside OR outside`. Default:
  `"normal"`.

- **placement**. Type: `auto OR top OR center OR bottom`. Default:
  `"auto"`.

- **isOpen**. Type: `boolean`. Default: `NA`.

- **defaultOpen**. Type: `boolean`. Default: `NA`.

- **isDismissable**. Type: `boolean`. Default: `true`.

- **isKeyboardDismissDisabled**. Type: `boolean`. Default: `false`.

- **shouldBlockScroll**. Type: `boolean`. Default: `true`.

- **hideCloseButton**. Type: `boolean`. Default: `false`.

- **closeButton**. Type: `ReactNode`. Default: `NA`.

- **motionProps**. Type: `MotionProps`. Default: `NA`.

- **portalContainer**. Type: `HTMLElement`. Default: `"document.body"`.

- **disableAnimation**. Type: `boolean`. Default: `false`.

- **classNames**. Type:
  `Partial<Record<'wrapper' OR 'base' OR 'backdrop' OR 'header' OR 'body' OR 'footer' OR 'closeButton', string>>`.
  Default: `NA`.

&nbsp;

- **onOpenChange**. Type: `(isOpen: boolean) => void`. Default: `NA`.

- **onClose**. Type: `() => void`. Default: `NA`.

## See also

See <https://heroui.com/docs/components/modal>.

## Examples

``` r
library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  action_button(
    inputId = "show_modal",
    color = "primary",
    shadow = TRUE,
    "Show modal"
  ),
  radio_input(
    "scroll",
    label = "Scroll option",
    choices = c(
      "inside" = "Inside",
      "outside" = "Outside"
    ),
    selected = "inside"
  ),
  reactOutput("modal")
)

server <- function(input, output, session) {
  modalVisible <- reactiveVal(FALSE)
  observeEvent(input$show_modal, {
    modalVisible(TRUE)
  })

  observeEvent(input$modal_closed, {
    modalVisible(FALSE)
  })

  output$modal <- renderReact({
    modal(
      scrollBehavior = input$scroll,
      isOpen = modalVisible(),
      size = "sm",
      modal_content(
        modal_header("My modal"),
        modal_body(
          p(
            "Cras mattis consectetur purus sit amet fermentum. Cras justo odio,
            dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta
            ac consectetur ac, vestibulum at eros."
          ),
          p(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
            Nullam pulvinar risus non risus hendrerit venenatis.
            Pellentesque sit amet hendrerit risus, sed porttitor quam.
            Magna exercitation reprehenderit magna aute tempor cupidatat
            consequat elit dolor adipisicing. Mollit dolor eiusmod sunt ex
            incididunt cillum quis. Velit duis sit officia eiusmod Lorem
            aliqua enim laboris do dolor eiusmod. Et mollit incididunt
            nisi consectetur esse laborum eiusmod pariatur proident Lorem
            eiusmod et. Culpa deserunt nostrud ad veniam."
          ),
          p(
            "Mollit dolor eiusmod sunt ex incididunt cillum quis. Velit
             duis sit officia eiusmod Lorem aliqua enim laboris do dolor
             eiusmod. Et mollit incididunt nisi consectetur esse laborum
             eiusmod pariatur proident Lorem eiusmod et. Culpa deserunt
             nostrud ad veniam. Lorem ipsum dolor sit amet, consectetur
             adipiscing elit. Nullam pulvinar risus non risus hendrerit
             venenatis. Pellentesque sit amet hendrerit risus, sed
             porttitor quam. Magna exercitation reprehenderit magna aute
             tempor cupidatat consequat elit dolor adipisicing. Mollit
             dolor eiusmod sunt ex incididunt cillum quis. Velit duis sit
             officia eiusmod Lorem aliqua enim laboris do dolor eiusmod. Et
             mollit incididunt nisi consectetur esse laborum eiusmod
             pariatur proident Lorem eiusmod et. Culpa deserunt nostrud ad
             veniam."
          ),
          p(
            "Mollit dolor eiusmod sunt ex incididunt cillum quis. Velit
             duis sit officia eiusmod Lorem aliqua enim laboris do dolor
             eiusmod. Et mollit incididunt nisi consectetur esse laborum
             eiusmod pariatur proident Lorem eiusmod et. Culpa deserunt
             nostrud ad veniam. Lorem ipsum dolor sit amet, consectetur
             adipiscing elit. Nullam pulvinar risus non risus hendrerit
             venenatis. Pellentesque sit amet hendrerit risus, sed
             porttitor quam. Magna exercitation reprehenderit magna aute
             tempor cupidatat consequat elit dolor adipisicing. Mollit
             dolor eiusmod sunt ex incididunt cillum quis. Velit duis sit
             officia eiusmod Lorem aliqua enim laboris do dolor eiusmod. Et
             mollit incididunt nisi consectetur esse laborum eiusmod
             pariatur proident Lorem eiusmod et. Culpa deserunt nostrud ad
             veniam."
          )
        ),
        modal_footer("Modal footer")
      ),
      onClose = JS("() => Shiny.setInputValue('modal_closed', true, {priority: 'event'})")
    )
  })

  exportTestValues(
    modal_state = modalVisible()
  )
}

if (interactive() || is_testing()) shinyApp(ui, server)
```
