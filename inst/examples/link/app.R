library(shiny)
library(shinyNextUI)

link <- shinyNextUI:::component("Link")
colors <- c(
  "text",
  "default",
  "primary",
  "secondary",
  "success",
  "warning",
  "error",
  "gradient"
)

link_config <- data.frame(
  color = colors,
  underline = c(rep(FALSE, 4), rep(TRUE, 4)),
  block = c(rep(TRUE, 4), rep(FALSE, 4)),
  href = c(rep("#", 4), rep("https://google.com", 4)),
  isExternal = c(rep(FALSE, 4), rep(TRUE, 4))
)

link_factory <- function(color, underline, block, href, isExternal) {
  grid(
    link(
      "A super link!",
      color = color,
      underline = underline,
      block = block,
      href = href,
      isExternal = isExternal
    )
  )
}

links <- purrr::pmap(link_config, link_factory)

ui <- nextui_page(
  text("Link"),
  grid_container(
    gap = 2,
    xs = 12,
    sm = 6,
    links
  )
)

server <- function(input, output, session) {}

if (interactive() || is_testing()) shinyApp(ui, server)
