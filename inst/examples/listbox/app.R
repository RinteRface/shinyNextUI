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
  listbox_item(
    key = animal[["value"]],
    description = animal[["description"]],
    startContent = avatar(src = animal[["avatar"]]),
    animal[["label"]]
  )
})

ui <- nextui_page(
  debug_react = TRUE,
  theme_switcher(),
  spacer(y = 4),
  action_button("update", "Update to Pikachu?"),
  spacer(y = 4),
  div(
    class = "w-full max-w-[260px] border-small px-1 py-2
    rounded-small border-default-200 dark:border-default-100",
    listbox(
      "listbox",
      label = "Select a pokemon",
      value = "bulbasaur",
      variant = "flat",
      selectionMode = "single",
      listbox_section(
        title = "Default pokemons",
        items
      )
    )
  ),
  textOutput("res")
)

server <- function(input, output, session) {
  output$res <- renderText(input$listbox)
  observeEvent(input$listbox, {
    print(input$listbox)
  })

  observeEvent(input$update, {
    update_listbox(session, "listbox", value = JS("['pikachu']"))
  })
}

if (interactive() || is_testing()) shinyApp(ui, server)
