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
  div(
    class = "flex gap-4 justify-evenly",
    div(
      class = "flex flex-col gap-4 basis-1/2",
      p(class = "font-extrabold text-2xl uppercase my-2", "General"),
      uiOutput(ns("basic_stats")),
      p(class = "font-extrabold text-2xl uppercase my-2", icon("location-dot"), " Location"),
      mod_poke_location_ui(ns("poke_location_1")),
      spacer(y = 5),
      mod_poke_type_ui(ns("poke_type_1"))
    ),
    div(
      class = "flex flex-col gap-4 basis-1/2",
      div(
        class = "flex gap-4",
        p(
          class = "font-extrabold text-2xl uppercase",
          badge(
            color = "danger",
            placement = "bottom-right", "Stats",
            content = textOutput(ns("sum_stats"))
          )
        ),
        tooltip(
          tags$sup(icon("question", size = "0.75em")),
          content = HTML("Sum of stats. <br/>
            Mew is 500."),
          color = "foreground",
          placement = "right",
          showArrow = TRUE
        )
      ),
      uiOutput(ns("poke_stats_card"))
    )
  )
}

mod_poke_stats_server <- function(id, selected) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

    mod_poke_type_server("poke_type_1", selected)
    mod_poke_location_server("poke_location_1", selected)

    # Programmatically generate stat cards
    output$basic_stats <- renderUI({
      listbox(
        "basic_stats",
        label = "Basic stats",
        className = "w-full max-w-[260px] border-small px-1 py-2 rounded-small border-default-200 dark:border-default-100",
        selectionMode = "none",
        lapply(other_stats_names(), function(stat) {
          listbox_item(
            key = stat,
            startContent = switch(
              stat,
              "height" = icon("up-down"),
              "weight" = icon("weight-scale"),
              "base_happiness" = icon("face-smile"),
              "capture_rate" = icon("bowling-ball"),
              "growth_rate" = icon("up-long")
            ),
            stat,
            endContent = selected()$other_stats[[stat]]
          )
        })
      )
    })

    # Generate radar chart for pokemons
    output$poke_stats <- renderEcharts4r({
      req(!is.null(selected()))
      create_radar_stats(selected())
    })

    output$sum_stats <- renderText({
      selected()$sum_stats
    })

    # card wrapper for the charts
    output$poke_stats_card <- renderUI({
      req(!is.null(selected()))
      echarts4rOutput(outputId = ns("poke_stats"), height = "700px")
    })
  })
}
