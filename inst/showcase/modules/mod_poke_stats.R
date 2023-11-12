other_stats_names <- function() {
  names(poke_data[[1]]$other_stats)
}

extra_from_list <- function(l, key = "name", type = character(1)) {
  vapply(
    l,
    `[[`,
    key,
    FUN.VALUE = type
  )
}

get_max_stats <- function(stat = NULL) {
  res <- lapply(
    poke_data,
    function(data) {
      stats <- data$stats
      tmp <- extra_from_list(
        stats,
        "base_stat",
        numeric(1)
      )
      names(tmp) <- extra_from_list(stats)
      tmp
    }
  )

  # Merge lists into tibble
  res <- do.call(rbind, res) |>
    as_tibble()
  if (is.null(stat)) res else pull(res, stat)
}

get_max_of_max <- function(data = get_max_stats()) {
  cols <- colnames(data)
  data |>
    # get max of each stat
    summarise(across(all_of(cols), max)) |>
    rowwise() |>
    # Max of max
    max()
}

create_radar_stats <- function(pokemon) {
  # R CMD check stop crying ...
  x <- y <- z <- NULL

  stats <- pokemon$stats
  # Prepare data
  data <- process_pokemon_stats(stats)

  # Also adds previous pokemon stats to compare
  # Check that the evolution belongs to the first 151 pkmns ...
  if (length(pokemon$evolve_from) > 0 && pokemon$evolve_from$id <= 151) {
    tmp <- process_pokemon_stats(
      poke_data[[pokemon$evolve_from$name]]$stats
    )
    data$z <- tmp$y
    data |>
      e_charts(x) |>
      e_radar(
        y,
        name = paste0(pokemon$name, " Stats"),
        max = get_max_of_max()
      ) |>
      e_radar(z, name = paste0(pokemon$evolve_from$name, " Stats")) |>
      e_tooltip(trigger = "item")
  } else {
    data |>
      e_charts(x) |>
      e_radar(y, name = paste0(pokemon$name, " Stats"), max = get_max_of_max()) |>
      e_tooltip(trigger = "item")
  }
}

process_pokemon_stats <- function(stats) {
  data.frame(
    x = extra_from_list(stats),
    y = extra_from_list(stats, "base_stat", numeric(1))
  )
}


mod_poke_stats_ui <- function(id) {
  ns <- NS(id)
  tagList(
    div(
      class = "grid grid-cols-4 gap-4",
      lapply(other_stats_names(), function(stat) {
        uiOutput(ns(stat))
      })
    ),
    spacer(y = 2),
    uiOutput(ns("poke_stats_card"))
  )
}

mod_poke_stats_server <- function(id, selected) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

    # Programmatically generate stat cards
    lapply(other_stats_names(), function(stat) {
      output[[stat]] <- renderUI({
        req(input$poke_basic_stats)
        val <- selected()$other_stats[[stat]]

        card(
          card_header(h1(stat)),
          card_body(val)
        )
      })
    })

    # Generate radar chart for pokemons
    output$poke_stats <- renderEcharts4r({
      req(!is.null(selected()))
      create_radar_stats(selected())
    })

    # card wrapper for the charts
    output$poke_stats_card <- renderUI({
      req(!is.null(selected()))

      card(
        card_header(
          class = "flex flex-row",
          h1(paste0(selected()$name, " Stats")),
          switch_input(
            inputId = ns("poke_basic_stats"),
            label = "Display Basic Stats?",
            color = "warning"
          )
        ),
        divider(),
        card_footer(tags$strong(sprintf("Sum of stats: %s (Mew is 500)", selected()$sum_stats))),
        card_body(echarts4rOutput(outputId = ns("poke_stats")))
      )
    })
  })
}
