library(shiny)
library(shinyNextUI)

animals <- list(
  list(
    label = "Bulbasaur",
    value = "bulbasaur",
    description = "Blabla",
    avatar = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png"
  ),
  list(
    label = "Pikachu",
    value = "pikachu",
    description = "Electric mouse",
    avatar = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png"
  )
)

select_items <- lapply(animals, function(animal) {
  select_item(
    key = animal[["value"]],
    value = animal[["value"]],
    startContent = avatar(src = animal[["avatar"]]),
    animal[["label"]]
  )
})

label_placements <- c(
  "inside",
  "outside",
  "outside-left"
)

ui <- nextui_page(
  debug_react = TRUE,
  p(class = "text-teal-300 font-extrabold hover:text-rose-300 text-2xl uppercase my-2", "Basic select"),
  action_button("update", "Update to bulbasaur?"),
  spacer(y = 2),
  action_button("toggle", "Open select"),
  spacer(y = 2),
  select_input(
    inputId = "select",
    label = "Select an pokemon",
    value = JS("['pikachu']"),
    selectionMode = "multiple",
    description = "This is a select input. You can select multiple values.",
    select_items
  ),
  textOutput("select_val"),
  spacer(y = 5),
  divider(),
  p(class = "text-teal-300 font-extrabold hover:text-rose-300 text-2xl uppercase my-2", "Variants"),
  lapply(select_variants, function(variant) {
    tagList(
      select_input(
        inputId = sprintf("select-%s", variant),
        label = "Select a pokemon",
        variant = variant,
        value = JS("['pikachu']"),
        description = sprintf("This is a select input with %s variant style", variant),
        select_items
      ),
      spacer(y = 2)
    )
  }),
  spacer(y = 5),
  divider(),
  p(
    class = "text-teal-300 font-extrabold hover:text-rose-300 text-2xl uppercase my-2",
    "Label placement and validation (no value specified)"
  ),
  lapply(label_placements, function(placement) {
    tagList(
      select_input(
        inputId = sprintf("select-%s", placement),
        label = "Select a pokemon",
        labelPlacement = placement,
        description = sprintf("This is a select input with %s label placement", placement),
        select_items
      ),
      spacer(y = 10)
    )
  }),
  spacer(y = 5),
  divider(),
  p(
    class = "text-teal-300 font-extrabold hover:text-rose-300 text-2xl uppercase my-2",
    "Custom render value"
  ),
  select_input(
    inputId = "customselect",
    labelPlacement = "outside-left",
    label = "Pokemon",
    description = "This is a select input. You can select multiple values.",
    items = jsonlite::toJSON(animals),
    select_items
  )
)

server <- function(input, output, session) {
  opened <- reactiveVal(FALSE)
  observeEvent(input$update, {
    update_select_input(session, "select", value = JS("['bulbasaur']"))
  })
  observeEvent(input$toggle, {
    opened(!opened())
    update_select_input(session, "select", isOpen = opened())
  })
  output$select_val <- renderText(input$select)
}

if (interactive() || is_testing()) shinyApp(ui, server)
