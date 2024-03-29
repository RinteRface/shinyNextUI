library(shiny)
library(shinyNextUI)

badge_config <- data.frame(
  size = c(rep("sm", 2), rep("md", 2), rep("lg", 2)),
  color = c(
    "default",
    "primary",
    "secondary",
    "success",
    "warning",
    "danger"
  ),
  disable_outline = c(rep(FALSE, 3), rep(TRUE, 3))
)

variants <- c("solid", "flat", "faded", "shadow")
placement <- c("top-right", "bottom-right", "top-left", "bottom-left")
shape <- c("rectangle", "circle")

badge_factory <- function(size, color, disable_outline) {
  badge(
    class = "mx-5",
    size = size,
    color = color,
    disableOutline = disable_outline,
    content = 1,
    avatar()
  )
}

badges <- purrr::pmap(badge_config, badge_factory)

ui <- nextui_page(
  p(class = "font-extrabold text-2xl uppercase", "Badges"),
  div(
    class = "flex flex-row",
    badges
  ),
  spacer(y = 2),
  p(class = "font-extrabold text-2xl uppercase", "Badge content"),
  div(
    class = "flex flex-row",
    badge(
      color = "danger",
      content = "New",
      placement = "top-left",
      avatar(
        bordered = TRUE,
        squared = TRUE,
        color = "secondary",
        size = "lg",
        src = "https://i.pravatar.cc/300?u=a042581f4e29026707d"
      )
    )
  ),
  spacer(y = 2),
  p(class = "font-extrabold text-2xl uppercase", "Solid variant"),
  div(
    class = "flex flex-row",
    badge(variant = "solid", color = "success", size = "lg", content = 5, avatar())
  ),
  spacer(y = 2),
  p(class = "font-extrabold text-2xl uppercase", "Flat variant"),
  div(
    class = "flex flex-row",
    badge(variant = "flat", color = "success", size = "lg", content = 5, avatar())
  ),
  spacer(y = 2),
  p(class = "font-extrabold text-2xl uppercase", "Faded variant"),
  div(
    class = "flex flex-row",
    badge(variant = "faded", color = "success", size = "lg", content = 5, avatar())
  ),
  spacer(y = 2),
  p(class = "font-extrabold text-2xl uppercase", "Shadow variant"),
  div(
    class = "flex flex-row",
    badge(variant = "shadow", color = "success", size = "lg", content = 5, avatar())
  )
)

server <- function(input, output, session) {}

if (interactive() || is_testing()) shinyApp(ui, server)
