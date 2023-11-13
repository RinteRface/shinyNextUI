mod_poke_move_ui <- function(id) {
  ns <- NS(id)
  uiOutput(ns("poke_moves"), style = "max-height: 400px; overflow-y: scroll;")
}

mod_poke_move_server <- function(id, selected) {
  moduleServer(id, function(input, output, session) {

    ns <- session$ns

    # generate the card
    output$poke_moves <- renderUI({
      req(!is.null(selected()))
      moves <- selected()$moves

      dat <- data.frame(
        Name = purrr::map(moves, `[`, 'name') |> unlist(),
        Power = purrr::map(moves, `[`, 'power') |> unlist(),
        Description = purrr::map(moves, `[`, 'text') |> unlist()
      )

      table(dat, isStriped = TRUE, isHeaderSticky = TRUE, removeWrapper = TRUE)

    })

  })

}
