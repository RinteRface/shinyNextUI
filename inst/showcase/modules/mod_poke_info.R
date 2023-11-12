mod_poke_info_ui <- function(id) {
  ns <- NS(id)
  uiOutput(ns("poke_infos"))
}

mod_poke_info_server <- function(id, selected, is_shiny) {
  moduleServer(id, function(input, output, session) {

    # generate the profile cards (as many as the number of selected pokemons)
    output$poke_infos <- renderUI({
      req(!is.null(selected()))

      pokemon <- selected()

      card(
        avatar(src = if (!is_shiny()) {
          pokemon$sprites$front_default
        } else {
          pokemon$sprites$front_shiny
        }, size = "lg"),
        chip(pokemon$shape),
        chip(pokemon$habitat, color = pokemon$color)
      )
    })
  })
}
