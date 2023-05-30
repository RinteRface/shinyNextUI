library(shiny)
library(shinyNextUI)

progress <- shinyNextUI:::component("Progress")
colors <- c(
  "primary",
  "secondary",
  "success",
  "warning",
  "error",
  "gradient"
)

bool_par <- c(rep(FALSE, 3), rep(TRUE, 2), FALSE)

progress_config <- data.frame(
  size = c("xs", "sm", rep("md", 2), "lg", "xl"),
  color = colors,
  status = colors,
  shadow = bool_par,
  striped = bool_par,
  squared = bool_par
)

progress_factory <- function(size, color, status, shadow, striped, squared) {
  grid(
    progress(
      value = round(runif(1, 0, 100)),
      size = size,
      color = color,
      status = status,
      shadow = shadow,
      striped = striped,
      squared = squared
    )
  )
}

progresses <- purrr::pmap(progress_config, progress_factory)

ui <- nextui_page(
  text("Progress"),
  grid_container(
    gap = 2,
    xs = 12,
    sm = 6,
    progresses
  )
)

server <- function(input, output, session) {}

if (interactive() || is_testing()) shinyApp(ui, server)
