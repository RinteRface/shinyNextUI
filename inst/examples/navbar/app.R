library(shiny)
library(shinyNextUI)
library(shiny.react)
library(shiny.router)

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
