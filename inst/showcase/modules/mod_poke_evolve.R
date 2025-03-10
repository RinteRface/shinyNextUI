mod_poke_evolve_ui <- function(id) {
  ns <- NS(id)
  uiOutput(ns("poke_evolve"), inline = TRUE)
}

mod_poke_evolve_server <- function(id, selected, is_shiny) {
  moduleServer(id, function(input, output, session) {
    # treat data and generate the timeline
    output$poke_evolve <- renderUI({
      req(!is.null(selected()))
      evol <- selected()$evolve_from

      # If pokemon can't evolve ...
      if (length(evol) == 0) {
        avatar(name = "Base")
      } else {
        # Check that the evolution belongs to the first 151 pkmns ...
        if (evol$id <= 151) {
          tags$div(
            tags$p("Evolves from:"),
            avatar(
              size = "sm",
              src = if (is_shiny()) {
                poke_data[[evol$id]]$sprites$front_shiny
              } else {
                poke_data[[evol$id]]$sprites$front_default
              },
            )
          )
        }
      }
    })
  })
}
