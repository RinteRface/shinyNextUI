mod_poke_location_ui <- function(id) {
  ns <- NS(id)
  uiOutput(ns("poke_locations"))
}

mod_poke_location_server <- function(id, selected) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

    output$poke_locations <- renderUI({
      req(!is.null(selected()))

      locations <- selected()$locations

      if (is.null(locations)) {
        location_content <- "This pokemon cannot be found in the wild."
      } else {
        location_content <-  listbox(
          class = "w-full max-w-[260px] border-small px-1 py-2 rounded-small border-default-200 dark:border-default-100",
          inputId = "locations",
          selectionMode = "none",
          variant = "bordered",
          lapply(locations, \(loc) {
            listbox_item(
              key = loc,
              title = loc
            )
          })
        )
      }

      location_content
    })

  })
}
