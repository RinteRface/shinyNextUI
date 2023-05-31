library(shiny)
library(shinyNextUI)

badge <- shinyNextUI:::component("Badge")

badge_config <- data.frame(
  size = c("xs", "sm", rep("md", 2), "lg", "xl"),
  color = c(
    "primary",
    "secondary",
    "neutral",
    "success",
    "warning",
    "error"
  ),
  enable_shadow = c(rep(FALSE, 3), rep(TRUE, 3)),
  variant = c(
    rep("bordered", 3),
    rep("flat", 3)
  ),
  is_squared = c(rep(TRUE, 3), FALSE, rep(FALSE, 2))
)

badge_factory <- function(size, color, enable_shadow, variant, is_squared) {
  grid(
    badge(
      size = size,
      color = color,
      enableShadow = enable_shadow,
      variant = variant,
      isSquared = is_squared,
      "Badge"
    )
  )
}

badges <- purrr::pmap(badge_config, badge_factory)

ui <- nextui_page(
  text("Badges"),
  grid_container(
    gap = 1,
    badges
  ),
  spacer(y = 2),
  text("Badge content"),
  grid_container(
    grid(
      badge(
        color = "error",
        content = 5,
        placement = "top-left",
        avatar(
          bordered = TRUE,
          squared = TRUE,
          color = "secondary",
          size = "lg",
          src = "https://i.pravatar.cc/300?u=a042581f4e29026707d"
        )
      )
    )
  ),
  spacer(y = 2),
  text("Dot variant"),
  grid_container(
    grid(
      badge(variant = "dot", color = "success", size = "lg"),
    )
  ),
  spacer(y = 2),
  text("Points variant"),
  grid_container(
    grid(
      badge(variant = "points", color = "success", size = "lg"),
    )
  )
)

server <- function(input, output, session) {}

if (interactive() || is_testing()) shinyApp(ui, server)
