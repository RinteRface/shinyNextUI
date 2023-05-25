library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  text(
    h1 = TRUE,
    size = 60,
    color = "primary",
    "Lets's",
    css = JS("{textGradient: '45deg, $blue600 -20%, $pink600 50%'}"),
    weight = "bold"
  ),
  text(
    h1 = TRUE,
    size = 60,
    "Make the Web",
    css = JS("{textGradient: '45deg, $purple600 -20%, $pink600 100%'}"),
    weight = "bold"
  ),
  text(
    h1 = TRUE,
    size = 60,
    "Prettier",
    css = JS("{textGradient: '45deg, $yellow600 -20%, $red600 100%'}"),
    weight = "bold"
  )
)

server <- function(input, output, session) {}

if (interactive() || is_testing()) shinyApp(ui, server)
