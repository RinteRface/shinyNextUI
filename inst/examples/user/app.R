library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  div(
    class = "grid gap-4 grid-cols-3 grid-rows-3 m-5",
    user(
      name = "Jane Doe",
      description = "Product Designer",
      avatarProps = JS("{
        src: 'https://i.pravatar.cc/150?u=a04258114e29026702d'
      }")
    )
  )
)

server <- function(input, output, session) {}

if (interactive() || is_testing()) shinyApp(ui, server)
