mod_poke_location_ui <- function(id) {
  ns <- NS(id)
  uiOutput(ns("poke_locations"))
}

mod_poke_location_server <- function(id, selected) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

    output$poke_locations <- renderUI({
      req(!is.null(selected()))

      locations <- unique(selected()$locations)

      if (is.null(locations)) {
        "This pokemon cannot be found in the wild."
      } else {
        div(
          class = "flex gap-2 flex-wrap",
          lapply(locations, \(loc) {
            chip(loc)
          })
        )
      }
    })

  })
}
