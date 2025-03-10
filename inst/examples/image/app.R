library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  div(
    class = "flex gap-5 my-2",
    image(
      width = 300,
      alt = "NextUI hero Image",
      src = "https://heroui.com/images/hero-card-complete.jpeg"
    ),
    image(
      isBlurred = TRUE,
      width = 300,
      alt = "Album cover",
      src = "https://heroui.com/images/hero-card-complete.jpeg"
    ),
    image(
      isZoomed = TRUE,
      width = 300,
      alt = "Fruit image with zoom effect",
      src = "https://heroui.com/images/hero-card-complete.jpeg"
    )
  )
)

server <- function(input, output, session) {
}

if (interactive() || is_testing()) shinyApp(ui, server)
