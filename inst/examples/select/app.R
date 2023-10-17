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

ui <- nextui_page(
  debug_react = TRUE,
  select(
    inputId = "select",
    label = "Select an animal",
    defaultSelectedKeys = JS("['pikachu']"),
    selectionMode = "multiple",
    description = "This is a select input. You can select multiple values.",
    select_items
  ),
  textOutput("select_val")
)

server <- function(input, output, session) {
  output$select_val <- renderText(input$select)
}

if (interactive() || is_testing()) shinyApp(ui, server)
