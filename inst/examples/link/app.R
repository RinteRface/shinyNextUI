library(shiny)
library(shinyNextUI)

colors <- c(
  "default",
  "primary",
  "secondary",
  "success",
  "warning",
  "error"
)

link_config <- data.frame(
  color = colors,
  underline = c(rep("none", 2), "hover", "always", "active", "focus"),
  block = c(rep(TRUE, 3), rep(FALSE, 3)),
  href = c(rep("#", 3), rep("https://google.com", 3)),
  isExternal = c(rep(FALSE, 3), rep(TRUE, 3)),
  size = rep(c("sm", "md", "lg"), 2)
)

link_factory <- function(color, underline, block, href, isExternal, size) {
  link(
    "A super link!",
    color = color,
    underline = underline,
    isBlock = block,
    href = href,
    isExternal = isExternal,
    size = size
  )
}

links <- purrr::pmap(link_config, link_factory)

ui <- nextui_page(
  div(
    class = "grid gap-4 grid-cols-3 grid-rows-2 m-5",
    links
  )
)

server <- function(input, output, session) {}

if (interactive() || is_testing()) shinyApp(ui, server)
