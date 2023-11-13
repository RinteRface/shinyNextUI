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
    card_header(
      mod_poke_info_ui("poke_info_1")
    ),
    divider(),
    card_body(
      class = "flex flex-col gap-4",
      mod_poke_stats_ui("poke_stats_1"),
      accordion(
        "accordion",
        variant = "bordered",
        selectionMode = "multiple",
        isCompact = TRUE,
        value = c(1, 2),
        accordion_item(
          key = 1,
          title = "Moves",
          subtitle = "What the pokemon can learn.",
          mod_poke_move_ui("poke_move_1")
        ),
        accordion_item(
          key = 2,
          title = "Locations",
          subtitle = "Where I can find it.",
          mod_poke_location_ui("poke_location_1")
        )
      )
    )
  )
)

server <- function(input, output, session) {
  main <- mod_poke_select_server("poke_select_1")
  mod_poke_info_server("poke_info_1", main$selected, main$is_shiny)
  mod_poke_stats_server("poke_stats_1", main$selected)
  mod_poke_location_server("poke_location_1", main$selected)
  mod_poke_move_server("poke_move_1", main$selected)
}

shinyApp(ui, server)
