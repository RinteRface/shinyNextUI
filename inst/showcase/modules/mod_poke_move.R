mod_poke_move_ui <- function(id) {
  ns <- NS(id)
  uiOutput(ns("poke_moves"), style = "max-height: 400px; overflow-y: scroll;")
}

mod_poke_move_server <- function(id, selected, theme) {
  moduleServer(id, function(input, output, session) {

    ns <- session$ns

    # generate the card
    output$poke_moves <- renderUI({
      req(!is.null(selected()))
      moves <- selected()$moves

      dat <- lapply(moves, function(move) {
        list(
          name =  move$name,
          type = chip(
            move$type,
            style = paste(
              sprintf("background: %s", get_type_colors(move$type)),
              if (move$type == "normal" && theme() == "dark") "text-color: white"
            )
          ),
          power = if (is.na(move$power)) {
            "NA"
          } else {
            progress(
              value = move$power,
              valueLabel = move$power,
              maxValue = 150,
              showValueLabel = TRUE
            )
          },
          pp = move$pp,
          priority = move$priority,
          accuracy = if (is.na(move$accuracy)) {
            "NA"
          } else {
            progress(
              value = move$accuracy,
              maxValue = 100,
              showValueLabel = TRUE
            )
          },
          text = move$text
        )
      })

      table(dat, isStriped = TRUE, isHeaderSticky = TRUE, removeWrapper = TRUE)

    })

  })

}
