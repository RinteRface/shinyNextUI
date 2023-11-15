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

      dat <- lapply(moves, function(move) {
        list(
          name =  chip(move$name),
          type = chip(
            move$type,
            style = sprintf("background: %s", get_type_colors(move$type))
          ),
          power = progress(
            value = move$power,
            valueLabel = move$power,
            maxValue = 150,
            showValueLabel = TRUE
          ),
          pp = move$pp,
          priority = move$priority,
          accuracy = move$accuracy,
          text = move$text
        )
      })

      table(dat, isStriped = TRUE, isHeaderSticky = TRUE, removeWrapper = TRUE)

    })

  })

}
