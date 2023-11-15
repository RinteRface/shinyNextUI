library(shiny)
library(shinyNextUI)
library(shiny.react)

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

items <- lapply(animals, function(animal) {
  autocomplete_item(
    key = animal[["value"]],
    value = animal[["value"]],
    startContent = avatar(src = animal[["avatar"]]),
    animal[["label"]]
  )
})

ui <- nextui_page(
  debug_react = TRUE,
  action_button("update", "Update to Pikachu?"),
  spacer(y = 4),
  autocomplete(
    "autocomplete",
    label = "Select a pokemon",
    isRequired = TRUE,
    value = "bulbasaur",
    autocomplete_section(
      title = "Default pokemons",
      items
    )
  ),
  textOutput("res")
)

server <- function(input, output, session) {
  output$res <- renderText(input$autocomplete)
  observeEvent(input$autocomplete, {
    print(input$autocomplete)
  })

  observeEvent(input$update, {
    update_autocomplete(session, "autocomplete", value = "pikachu")
  })
}

if (interactive() || is_testing()) shinyApp(ui, server)
