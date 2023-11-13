library(shiny)
library(shinyNextUI)
library(echarts4r)
library(dplyr)

sapply(list.files(
  "./modules",
  #system.file("showcase/modules", package = "shinyNextUI"),
  full.names = TRUE
), function(i) {
  source(i)
})

ui <- nextui_page(
  dark_mode = TRUE,
  mod_poke_select_ui("poke_select_1"),
  spacer(y = 5),
  card(
    shadow = "sm",
    card_header(
      className = "flex gap-4 justify-evenly",
      mod_poke_info_ui("poke_info_1")
    ),
    divider(),
    card_body(
      class = "flex flex-col gap-4",
      mod_poke_stats_ui("poke_stats_1"),
      p(class = "font-extrabold text-2xl uppercase", "Moves"),
      accordion(
        "moves_accordion",
        variant = "bordered",
        isCompact = TRUE,
        value = JS("['1']"),
        accordion_item(
          key = 1,
          subtitle = "What the pokemon can learn during its growth.",
          mod_poke_move_ui("poke_move_1")
        )
      )
    )
  )
)

server <- function(input, output, session) {
  main <- mod_poke_select_server("poke_select_1")
  mod_poke_info_server("poke_info_1", main$selected, main$is_shiny)
  mod_poke_stats_server("poke_stats_1", main$selected, reactive(input$theme))
  mod_poke_move_server("poke_move_1", main$selected)
}

shinyApp(ui, server)
