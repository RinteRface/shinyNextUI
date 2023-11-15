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
    class = "flex flex-row justify-center",
    autocomplete(
      inputId = ns("selected"),
      label = "Select a pokemon:",
      variant = "bordered",
      size = "lg",
      isRequired = TRUE,
      startContent = icon("search"),
      items,
      value = poke_names[[1]]
    ),
    spacer(x = 5),
    # because it's a shiny app ;)
    div(
      class = "mt-4",
      switch_input(
        inputId = ns("is_shiny"),
        "Shiny?",
        value = TRUE
      )
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
        is_shiny = reactive(input$is_shiny),
        select_state = reactive(input$selected)
      )
    )
  })
}
