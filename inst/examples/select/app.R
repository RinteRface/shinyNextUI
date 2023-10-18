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
  select(
    inputId = "select",
    label = "Select an pokemon",
    defaultSelectedKeys = JS("['pikachu']"),
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
      select(
        inputId = sprintf("select-%s", variant),
        label = "Select a pokemon",
        variant = variant,
        defaultSelectedKeys = JS("['pikachu']"),
        description = sprintf("This is a select input with %s variant style", variant),
        select_items
      ),
      spacer(y = 2)
    )
  }),
  spacer(y = 5),
  divider(),
  p(class = "text-teal-300 font-extrabold hover:text-rose-300 text-2xl uppercase my-2", "Label placement"),
  lapply(label_placements, function(placement) {
    tagList(
      select(
        inputId = sprintf("select-%s", placement),
        label = "Select a pokemon",
        labelPlacement = placement,
        defaultSelectedKeys = JS("['pikachu']"),
        description = sprintf("This is a select input with %s label placement", placement),
        select_items
      ),
      spacer(y = 10)
    )
  })
)

server <- function(input, output, session) {
  output$select_val <- renderText(input$select)
}

if (interactive() || is_testing()) shinyApp(ui, server)
