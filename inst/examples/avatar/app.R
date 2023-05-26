library(shiny)
library(shinyNextUI)

links <- c(
  "https://i.pravatar.cc/150?u=a042581f4e29026024d",
  "https://i.pravatar.cc/150?u=a042581f4e29026704d",
  "https://i.pravatar.cc/150?u=a04258114e29026702d",
  "https://i.pravatar.cc/150?u=a048581f4e29026701d",
  "https://i.pravatar.cc/150?u=a092581d4ef9026700d"
)

ui <- nextui_page(
  text("avatar()"),
  grid_container(
    gap = 2,
    grid(avatar(text = "Avatar")),
    grid(
      avatar(
        squared = TRUE,
        src = "https://i.pravatar.cc/150?u=a042581f4e29026024d"
      )
    ),
    grid(avatar(text = "Avatar", size = "xl")),
    grid(
      avatar(
        text = "Avatar",
        color = "secondary",
        textColor="white"
      )
    ),
    grid(
      avatar(
        src = "https://i.pravatar.cc/150?u=a042581f4e25056704b",
        color = "warning",
        bordered = TRUE
      )
    ),
    grid(
      avatar(
        src = "https://i.pravatar.cc/150?u=a042581f4e29026704d",
        zoomed = TRUE
      )
    )
  ),
  spacer(y = 2),
  text("avatar_group()"),
  grid_container(
    gap = 4,
    grid(
      xs = 12,
      avatar_group(
        count = 12,
        lapply(links, function(link) avatar(src = link))
      )
    )
  )
)

server <- function(input, output, session) {}

if (interactive() || is_testing()) shinyApp(ui, server)
