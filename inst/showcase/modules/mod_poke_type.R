get_type_colors <- function(type) {
  switch(type,
         "normal" = "lightgray",
         "fighting" = "#F98D80",
         "flying" = "#BD9FFC",
         "poison" = "#CBC3E3",
         "ground" = "#FFFFED",
         "rock" = "#FDDA0D",
         "bug" = "#AEF1BD",
         "ghost" = "#BD9FFC",
         "fire" = "orange",
         "water" = "#B3DFF8",
         "grass" = "#1EE80A",
         "electric" = "yellow",
         "psychic" = "#FF9AD0",
         "ice" = "#C5FAF8",
         "dragon" = "#BD9FFC"
  )
}

mod_poke_type_ui <- function(id) {
  ns <- NS(id)
  tagList(
    p(class = "font-extrabold text-2xl uppercase my-2", "Types"),
    uiOutput(ns("poke_types"))
  )
}

mod_poke_type_server <- function(id, selected) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

    # render infoBoxes
    output$poke_types <- renderUI({
      req(!is.null(selected()))

      types <- selected()$types

      lapply(seq_along(types), FUN = function(i) {
        type_name <- types[[i]]$name
        type_slot <- types[[i]]$slot

        damage_relations <- types[[i]]$damage_relations

        double_damage_from <- extra_from_list(
          damage_relations$double_damage_from
        )
        double_damage_to <- extra_from_list(
          damage_relations$double_damage_to
        )
        half_damage_from <- extra_from_list(
          damage_relations$half_damage_from
        )
        half_damage_to <- extra_from_list(
          damage_relations$half_damage_to
        )
        no_damage_from <- extra_from_list(
          damage_relations$no_damage_from
        )
        no_damage_to <- extra_from_list(
          damage_relations$no_damage_to
        )

        poke_color <- get_type_colors(type_name)

        damages_table <- data.frame(

        )

        table(

        )

      })

    })
  })
}
