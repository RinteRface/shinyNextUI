mod_poke_select_ui <- function(id) {
  poke_names <- names(poke_data)
  poke_sprites <- vapply(
    lapply(poke_data, `[[`, "sprites"),
    `[[`,
    "front_default",
    FUN.VALUE = character(1)
  )

  items <- lapply(poke_names, function(pokemon) {
    autocomplete_item(
      key = pokemon,
      value = pokemon,
      startContent = avatar(src = poke_sprites[[pokemon]]),
      pokemon
    )
  })

  ns <- NS(id)
  div(
    class = "flex flex-row",
    autocomplete(
      inputId = ns("selected"),
      label = "Select a pokemon:",
      items,
      value = poke_names[[1]]
    ),
    spacer(x = 5),
    # because it's a shiny app ;)
    switch_input(
      inputId = ns("is_shiny"),
      label = "Shiny?",
      value = TRUE,
      color = "danger"
    )
  )
}

mod_poke_select_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

    # WORKSHOP TODO
    # Add user feedback to select_pokemon
    selected_pokemon <- eventReactive(input$selected, {
      poke_data[[input$selected]]
    })

    return(
      list(
        selected = selected_pokemon,
        is_shiny = reactive(input$is_shiny)
      )
    )
  })
}
