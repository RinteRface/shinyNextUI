library(shiny)
library(shinyNextUI)

avatar_config <- data.frame(
  size = c("xs", "sm", "md", "lg", "xl"),
  src = c(
    "https://i.pravatar.cc/150?u=a042581f4e29026024d",
    "https://i.pravatar.cc/150?u=a042581f4e29026704d",
    "https://i.pravatar.cc/150?u=a04258114e29026702d",
    "https://i.pravatar.cc/150?u=a048581f4e29026701d",
    "https://i.pravatar.cc/150?u=a092581d4ef9026700d"
  ),
  radius = c(rep("full", 2), "lg", "md", "sm"),
  disabled = c(rep(FALSE, 4), TRUE),
  bordered = c(rep(TRUE, 3), rep(FALSE, 2)),
  color = c(
    "primary",
    "secondary",
    "danger",
    "success",
    "warning"
  ),
  fallback = rep(TRUE, 5)
)

avatar_factory <- function(src, size, disabled, bordered, radius, color, fallback) {
  avatar(
    src = src,
    size = size,
    isDisabled = disabled,
    isBordered = bordered,
    radius = radius,
    color = color,
    showFallback = fallback
  )
}

avatars <- purrr::pmap(avatar_config, avatar_factory)

ui <- nextui_page(
  debug_react = TRUE,
  class = "container mx-auto px-4",
  p("avatar()"),
  spacer(y = 1),
  div(
    class = "flex gap-3 items-center",
    avatars
  ),
  spacer(y = 2),
  p("avatar_group()"),
  spacer(y = 1),
  div(
    class = "flex",
    avatar_group(
      isBordered = TRUE,
      max = 3,
      total = 10,
      lapply(avatar_config$src, function(link) avatar(src = link))
    )
  )
)

server <- function(input, output, session) {}

if (interactive() || is_testing()) shinyApp(ui, server)
