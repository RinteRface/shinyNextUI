mod_poke_info_ui <- function(id) {
  ns <- NS(id)
  tagList(
    uiOutput(ns("poke_infos")),
    uiOutput(ns("poke_face")),
    uiOutput(ns("poke_descr"))
  )
}

mod_poke_info_server <- function(id, selected, is_shiny) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

    mod_poke_evolve_server("poke_evolve_1", selected, is_shiny)

    output$poke_infos <- renderUI({
      req(!is.null(selected()))

      pokemon <- selected()
      div(
        class = "flex flex-col gap-2 justify-center basis-1/3",
        chip(startContent = icon("paw"), sprintf("Shape: %s", pokemon$shape)),
        chip(startContent = icon("house"), sprintf("Habitat: %s", pokemon$habitat))
      )
    })

    output$poke_face <- renderUI({
      req(!is.null(selected()))

      pokemon <- selected()

      div(
        class = "flex flex-col gap-2 basis-2/3",
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

    output$poke_descr <- renderUI({
      req(!is.null(selected()))

      pokemon <- selected()

      div(
        class = "basis-1/3",
        snippet(
          variant = "bordered",
          symbol = "",
          lapply(strsplit(pokemon$description, "\n")[[1]], span),
          hideCopyButton = TRUE
        )
      )
    })

  })
}
