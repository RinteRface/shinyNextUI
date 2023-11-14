get_type_colors <- function(type) {
  switch(type,
         "normal" = "rgb(229 231 235)",
         "fighting" = "rgb(244 63 94)",
         "flying" = "rgb(147 197 253)",
         "poison" = "rgb(139 92 246)",
         "ground" = "rgb(180 83 9)",
         "rock" = "rgb(253 230 138)",
         "bug" = "rgb(132 204 22)",
         "ghost" = "rgb(30 58 138)",
         "fire" = "rgb(249 115 22)0",
         "water" = "rgb(14 165 233)",
         "grass" = "rgb(22 163 74)",
         "electric" = "rgb(253 224 71)",
         "psychic" = "rgb(251 113 133)",
         "ice" = "rgb(94 234 212)",
         "dragon" = "rgb(29 78 216)"
  )
}

mod_poke_type_ui <- function(id) {
  ns <- NS(id)
  tagList(
    div(
      class = "flex flex-row gap-2",
      p(class = "font-extrabold text-2xl uppercase", "Types"),
      tooltip(
        tags$sup(icon("question", size = "0.75em")),
        content = HTML("A pokemon has at least one type but may have several. <br/>
        Each type has weakness/strength against another one. <br/>
        For instance, fire is weak against water."),
        color = "foreground",
        placement = "right",
        showArrow = TRUE
      )
    ),
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

      items <- lapply(seq_along(types), FUN = function(i) {
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

        accordion_item(
          key = i,
          startContent = chip(
            i,
            style = sprintf("background: %s;", get_type_colors(type_name))
          ),
          title = type_name,
          table(
            removeWrapper = TRUE,
            isStriped = TRUE,
            data.frame(
              Damages = c("2X", "1/2", "0"),
              `Damages from` = c(
                paste(double_damage_from, collapse = ", "),
                paste(half_damage_from, collapse = ", "),
                paste(no_damage_from, collapse = ", ")
              ),
              `Damages to` = c(
                paste(double_damage_to, collapse = ", "),
                paste(half_damage_to, collapse = ", "),
                paste(no_damage_to, collapse = ", ")
              )
            )
          )
        )

      })

      accordion(
        "type_accordion",
        variant = "bordered",
        selectionMode = "multiple",
        isCompact = TRUE,
        #value = JS("['1', '2']"),
        items
      )

    })
  })
}
