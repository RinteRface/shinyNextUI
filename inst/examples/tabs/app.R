library(shiny)
library(shinyNextUI)

items <- tagList(
  tab(
    key = 1,
    title = div(
      class = "flex items-center gap-1",
      icon("home"),
      "Tab 1"
    ),
    card(
      card_body(
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit,
          sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
          Ut enim ad minim veniam, quis nostrud exercitation ullamco
          laboris nisi ut aliquip ex ea commodo consequat."
      )
    )
  ),
  tab(
    key = 2,
    title = "Tab 2",
    card(
      card_body(
        "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
          nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
          reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
      )
    )
  ),
  tab(
    key = 3,
    title = "Tab 3",
    card(
      card_body(
        "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
          officia deserunt mollit anim id est laborum."
      )
    )
  )
)

ui <- nextui_page(
  debug_react = TRUE,
  p(class = "text-teal-300 font-extrabold hover:text-rose-300 text-2xl uppercase my-2", "Simple tabs"),
  tabs(
    inputId = "tabs1",
    disabledKeys = "2",
    items
  ),
  spacer(y = 2),
  select(
    "select",
    label = "Tab to select:",
    value = "1",
    select_item(key = 1, value = "1", "1"),
    select_item(key = 3, value = "3", "3")
  ),
  p("Selected tab is:", textOutput("active_tab", inline = TRUE)),
  spacer(y = 5),
  divider(),
  p(class = "text-teal-300 font-extrabold hover:text-rose-300 text-2xl uppercase my-2", "Tab size"),
  lapply(sizes, function(size) {
    tagList(
      p(class = "", sprintf("Size: %s", size)),
      tabs(
        inputId = sprintf("tabs-%s", size),
        size = size,
        items
      )
    )
  }),
  spacer(y = 5),
  divider(),
  p(class = "text-teal-300 font-extrabold hover:text-rose-300 text-2xl uppercase my-2", "Tab variants"),
  lapply(tabs_variants, function(variant) {
    tagList(
      p(sprintf("Variant: %s", variant)),
      tabs(
        inputId = sprintf("tabs-%s", variant),
        variant = variant,
        items
      )
    )
  }),
  spacer(y = 5),
  divider(),
  p(class = "text-teal-300 font-extrabold hover:text-rose-300 text-2xl uppercase my-2", "Tab color"),
  lapply(colors, function(color) {
    tagList(
      p(class = "", sprintf("Color: %s", color)),
      tabs(
        inputId = sprintf("tabs-%s", color),
        variant = "bordered",
        color = color,
        items
      )
    )
  })
)

server <- function(input, output, session) {
  output$active_tab <- renderText(input$tabs1)
  observeEvent(input$select, {
    update_tabs(session, inputId = "tabs1", value = input$select)
  })
}

if (interactive() || is_testing()) shinyApp(ui, server)
