mod_poke_evolve_ui <- function(id) {
  ns <- NS(id)
  uiOutput(ns("poke_evolve"))
}

mod_poke_evolve_server <- function(id, selected, is_shiny) {
  moduleServer(id, function(input, output, session) {

    # treat data and generate the timeline
    output$poke_evolve <- renderUI({
      req(!is.null(selected()))
      evol <- selected()$evolve_from

      # If pokemon can't evolve ...
      if (length(evol) == 0) {
        tags$div(
          tags$p("Base Pokemon"),
        )
      } else {
        # Check that the evolution belongs to the first 151 pkmns ...
        if (evol$id <= 151) {
          tags$div(
            tags$p("Evolves From"),
            image(
              src = if (is_shiny()) {
                poke_data[[evol$id]]$sprites$front_shiny
              } else {
                poke_data[[evol$id]]$sprites$front_default
              },
            )
          )
        } else {
          tags$div(
            tags$p("Not first generation"),
          )
        }
      }

    })
  })
}
