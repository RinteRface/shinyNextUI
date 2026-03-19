# drawer

Displays a panel that slides in from the edge of the screen, containing
supplementary content.

## Usage

``` r
drawer(...)

drawer_content(...)

drawer_header(...)

drawer_body(...)

drawer_footer(...)
```

## Arguments

- ...:

  Props to pass to the component. The allowed props are listed below in
  the **Details** section.

## Value

An object of class `shiny.tag` containing the necessary configuration
and including options such as JavaScript dependencies to instantiate a
HeroUI drawer component.

## Details

- **children**. Type: `ReactNode`. Default: `NA`.

- **size**. Type:
  `xs OR sm OR md OR lg OR xl OR 2xl OR 3xl OR 4xl OR 5xl OR full`.
  Default: `"md"`.

- **radius**. Type: `none OR sm OR md OR lg`. Default: `"lg"`.

- **placement**. Type: `left OR right OR top OR bottom`. Default:
  `"right"`.

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

See <https://heroui.com/docs/components/drawer>.

## Examples

``` r
library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  action_button(
    inputId = "show_drawer",
    color = "primary",
    shadow = TRUE,
    "Show drawer"
  ),
  reactOutput("drawer")
)

server <- function(input, output, session) {
  drawerVisible <- reactiveVal(FALSE)
  observeEvent(input$show_drawer, {
    drawerVisible(TRUE)
  })

  observeEvent(input$hide_drawer, {
    drawerVisible(FALSE)
  })

  observeEvent(input$drawer_closed, {
    drawerVisible(FALSE)
  })

  output$drawer <- renderReact({
    drawer(
      scrollBehavior = input$scroll,
      isOpen = drawerVisible(),
      size = "sm",
      backdrop = "transparent",
      placement = "right",
      motionProps = JS(
        "{
          variants: {
            enter: {
              opacity: 1,
              x: 0,
              duration: 10,
            },
            exit: {
              x: 100,
              opacity: 0,
              duration: 10,
            },
          },
        }"
      ),
      drawer_content(
        drawer_header("My drawer"),
        drawer_body(
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
        drawer_footer(
          action_button(
            inputId = "hide_drawer",
            color = "danger",
            shadow = TRUE,
            "Close drawer"
          )
        )
      ),
      onClose = JS(
        "() => Shiny.setInputValue('drawer_closed', true, {priority: 'event'})"
      )
    )
  })

  exportTestValues(
    drawer_state = drawerVisible()
  )
}

if (interactive() || is_testing()) shinyApp(ui, server)
```
