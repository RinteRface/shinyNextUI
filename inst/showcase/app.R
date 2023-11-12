library(shiny)
library(shinyNextUI)
library(echarts4r)
library(dplyr)

#sapply(list.files(
#  "inst/showcase/modules",
#  #system.file("showcase/modules", package = "shinyNextUI"),
#  full.names = TRUE
#), source)

ui <- nextui_page(
  dark_mode = TRUE,
  mod_poke_select_ui("poke_select_1"),
  spacer(y = 5),
  div(
    class = "flex flex-row",
    mod_poke_info_ui("poke_info_1"),
    mod_poke_evolve_ui("poke_evolve_1")
  ),
  spacer(y = 5),
  mod_poke_stats_ui("poke_stats_1"),
  spacer(y = 5),
  mod_poke_location_ui("poke_location_1")
)

server <- function(input, output, session) {
  main <- mod_poke_select_server("poke_select_1")
  mod_poke_info_server("poke_info_1", main$selected, main$is_shiny)
  mod_poke_evolve_server("poke_evolve_1", main$selected, main$is_shiny)
  mod_poke_stats_server("poke_stats_1", main$selected)
  mod_poke_location_server("poke_location_1", main$selected)
}

shinyApp(ui, server)
