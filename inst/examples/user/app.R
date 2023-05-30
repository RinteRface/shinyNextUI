library(shiny)
library(shinyNextUI)

user <- shinyNextUI:::component("User")
colors <- c(
  "primary",
  "secondary",
  "success",
  "warning",
  "error"
)

bool_parm <- c(rep(TRUE, 3), rep(FALSE, 2))

user_config <- data.frame(
  src = c(
    "https://i.pravatar.cc/150?u=a042581f4e29026704d",
    "https://i.pravatar.cc/150?u=a04258114e29026702d",
    "https://i.pravatar.cc/150?u=a048581f4e29026701d",
    "https://i.pravatar.cc/150?u=a092581d4ef9026700d",
    "https://i.pravatar.cc/150?u=a042581f4e29026024d"
  ),
  name = c(
    "Ariana Wattson",
    "Jane Fisher",
    "William Howard",
    "Kristen Copper",
    "Tony Reichert"
  ),
  size = c("xs", "sm", "md", "lg", "xl"),
  color = colors,
  bordered = bool_parm,
  zoomed = bool_parm,
  pointer = bool_parm,
  squared = bool_parm,
  description = c(rep(NA, 2), rep("Description", 3))
)

user_factory <- function(src, name, size, color, bordered, zoomed, pointer, squared, description) {
  grid(
    user(
      src = src,
      name = name,
      size = size,
      color = color,
      bordered = bordered,
      zoomed = zoomed,
      pointer = pointer,
      squared = squared,
      description = description,
      user_link(href = "https://nextui.org/", "Link")
    )
  )
}

users <- purrr::pmap(user_config, user_factory)

ui <- nextui_page(
  text("user"),
  grid_container(
    gap = 2,
    xs = 12,
    sm = 6,
    users
  )
)

server <- function(input, output, session) {}

if (interactive() || is_testing()) shinyApp(ui, server)
