library(shiny)
library(shinyNextUI)

colors <- c(
  "default",
  "primary",
  "secondary",
  "success",
  "warning",
  "danger"
)

bool_par <- c(rep(FALSE, 3), rep(TRUE, 2), FALSE)

progress_config <- data.frame(
  label = c(rep("A label", 3), rep("", 3)),
  show_value_label = c(rep(FALSE, 3), rep(TRUE, 3)),
  size = c("sm", "sm", rep("md", 2), "lg", "lg"),
  color = colors,
  striped = bool_par,
  radius = c(rep("none", 2), "sm", "md", "lg", "full")
)

progress_factory <- function(
  label,
  show_value_label,
  size,
  color,
  striped,
  radius
) {
  progress(
    label = label,
    showValueLabel = show_value_label,
    value = round(runif(1, 0, 100)),
    size = size,
    color = color,
    isStriped = striped,
    radius = radius
  )
}

progresses <- purrr::pmap(progress_config, progress_factory)

ui <- nextui_page(
  div(
    class = "grid gap-4 grid-cols-3 grid-rows-3 m-5",
    progresses
  )
)

server <- function(input, output, session) {
}

if (interactive() || is_testing()) shinyApp(ui, server)
