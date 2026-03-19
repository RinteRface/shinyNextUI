# navbar

A responsive navigation header positioned on top side of your page that
includes support for branding, links, navigation, collapse menu and
more.

## Usage

``` r
navbar(...)

navbar_brand(...)

navbar_content(...)

navbar_item(...)

navbar_toggle(...)
```

## Arguments

- ...:

  Props to pass to the component. The allowed props are listed below in
  the **Details** section.

## Value

An object of class `shiny.tag` containing the necessary configuration
and including options such as JavaScript dependencies to instantiate a
HeroUI navbar component.

## Details

- **children\***. Type: `ReactNode[]`. Default: `NA`.

- **height**. Type: `string OR number`. Default: `"4rem (64px)"`.

- **position**. Type: `static OR sticky`. Default: `"sticky"`.

- **maxWidth**. Type: `sm OR md OR lg OR xl OR 2xl OR full`. Default:
  `"lg"`.

- **parentRef**. Type: `React.RefObject<HTMLElement>`. Default:
  `"window"`.

- **isBordered**. Type: `boolean`. Default: `false`.

- **isBlurred**. Type: `boolean`. Default: `true`.

- **isMenuOpen**. Type: `boolean`. Default: `false`.

- **isMenuDefaultOpen**. Type: `boolean`. Default: `false`.

- **shouldHideOnScroll**. Type: `boolean`. Default: `false`.

- **motionProps**. Type: `MotionProps`. Default: `NA`.

- **disableScrollHandler**. Type: `boolean`. Default: `false`.

- **disableAnimation**. Type: `boolean`. Default: `false`.

- **classNames**. Type:
  `Partial<Record<'base' OR 'wrapper' OR 'brand' OR 'content' OR 'item' OR 'toggle' OR 'toggleIcon' OR 'menu' OR 'menuItem', string>>`.
  Default: `NA`.

&nbsp;

- **onMenuOpenChange**. Type: `(isOpen: boolean) => void`. Default:
  `NA`.

- **onScrollPositionChange**. Type: `(position: number) => void`.
  Default: `NA`.

&nbsp;

- **children\***. Type: `ReactNode[]`. Default: `NA`.

- **justify**. Type: `start OR center OR end`. Default: `"start"`.

&nbsp;

- **children**. Type: `ReactNode`. Default: `NA`.

- **isActive**. Type: `boolean`. Default: `false`.

&nbsp;

- **icon**. Type:
  `ReactNode OR ((isOpen: boolean OR undefined) => ReactNode)`. Default:
  `NA`.

- **isSelected**. Type: `boolean`. Default: `false`.

- **defaultSelected**. Type: `boolean`. Default: `false`.

- **srOnlyText**. Type: `string`. Default:
  `"open/close navigation menu"`.

&nbsp;

- **onChange**. Type: `(isOpen: boolean) => void`. Default: `NA`.

&nbsp;

- **children\***. Type: `ReactNode[]`. Default: `NA`.

- **portalContainer**. Type: `HTMLElement`. Default: `"document.body"`.

- **motionProps**. Type: `MotionProps`. Default: `NA`.

&nbsp;

- **children**. Type: `ReactNode`. Default: `NA`.

- **isActive**. Type: `boolean`. Default: `false`.

## See also

See <https://heroui.com/docs/components/navbar>.

## Examples

``` r
library(shiny)
library(shinyNextUI)
library(shiny.react)
library(shiny.router)
#> shiny.router from version > 0.2.3 introduced major
#>   changes to the API. Old API is still working but has been marked as deprecated.
#>   Please check the docs, or examples to learn more: https://github.com/Appsilon/shiny.router

sections <- c("main", "other")

layout <- function(..., content) {
  tags$div(
    css = JS("
      {
        maxW: '100%',
        boxSizing: 'border-box',
      }"
    ),
    ..., # Navbar
    # Content
    tags$div(
      css = JS(
        "{
          boxSizing: 'border-box',
          px: '$12',
          mt: '$8',
          '@xsMax': {px: '$10'}
        }"
      ),
      content
    )
  )
}

# TO DO: create wrapper for end-user to simplify all this mess.
create_navbar <- function(id) {

  input <- get("input", envir = parent.frame())

  nav_links <- lapply(seq_along(sections), function(i) {
    # Li elements
    link(
      inputId = sprintf("link_%s", i),
      href = route_link(sections[[i]]),
      key = i,
      value = i,
      parent = sprintf("navbar_%s", sections[[i]]),
      isActive = if (is.null(input[[sprintf("navbar_%s", id)]])) {
        if (i == 1) TRUE else FALSE
      } else {
        if (input[[sprintf("navbar_%s", id)]] == i) TRUE else FALSE
      },
      sprintf("Link to %s", sections[[i]])
    )
  })

  nav <- navbar(
    id = sprintf("navbar_%s", id),
    maxWidth = "lg",
    variant = "floating",
    isBordered = TRUE,
    navbar_brand(p(b = TRUE, "Brand", color = "inherit", hideIn = "xs")),
    # Ul element
    navbar_content(
      variant = "highlight",
      activeColor = "success",
      nav_links,
      navbar_item(
        action_button(
          inputId = sprintf("navbar_button-%s", id),
          "Click me",
          auto = TRUE,
          flat = TRUE
        )
      )
    )
  )

  if (is.null(input[[sprintf("navbar_%s", id)]])) {
    tagList(
      tags$script(
        sprintf("Shiny.setInputValue('navbar_%s', 0)", id)
      ),
      nav
    )
  } else {
    nav
  }
}

page <- function(id, content) {
  layout(
    reactOutput(sprintf("nav_%s", id)),
    content = content
  )
}

home <- page(
  id = "main",
  card(
    numeric_input(
      inputId = "obs",
      label = "Number of observations:",
      value = 500
    ),
    plotOutput("distPlot")
  )
)
other <- page(
  id = "other",
  tableOutput('table')
)

ui <- nextui_page(
  router_ui(
    route("main", home),
    route("other", other)
  )
)

server <- function(input, output, session) {
  observe(print(input$navbar))
  output$nav_main <- renderReact({
    create_navbar("main")
  })

  output$nav_other <- renderReact({
    create_navbar("other")
  })

  output$distPlot <- renderPlot({
    hist(rnorm(input$obs))
  })
  output$table <- renderTable(iris)

  router_server("main")
}

if (interactive() || is_testing()) shinyApp(ui, server)
```
