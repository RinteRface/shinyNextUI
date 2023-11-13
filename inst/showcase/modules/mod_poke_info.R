mod_poke_info_ui <- function(id) {
  ns <- NS(id)
  uiOutput(ns("poke_infos"))
}

mod_poke_info_server <- function(id, selected, is_shiny) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns
    mod_poke_evolve_server("poke_evolve_1", selected, is_shiny)

    # generate the profile cards (as many as the number of selected pokemons)
    output$poke_infos <- renderUI({
      req(!is.null(selected()))

      pokemon <- selected()

      div(
        class = "flex flex-row gap-4 content-center",
        div(
          class = "flex flex-col gap-2 justify-center",
          chip(startContent = icon("paw"), sprintf("Shape: %s", pokemon$shape)),
          chip(startContent = icon("house"), sprintf("Habitat: %s", pokemon$habitat))
        ),
        mod_poke_evolve_ui(ns("poke_evolve_1")),
        avatar(
          isBordered = TRUE,
          src = if (!is_shiny()) {
            pokemon$sprites$front_default
          } else {
            pokemon$sprites$front_shiny
          },
          className = "w-40 h-40 text-large",
          size = "lg"
        )
      )
    })
  })
}
