library(shiny)
library(shinyNextUI)

ui <- nextui_page(
  dark_mode = TRUE,
  div(
    class = "flex gap-4",
    card(
      class = "",
      card_body(
        class = "grid grid-cols-2 gap-4",
        circular_progress(
          value = 3,
          showValueLabel = TRUE,
          strokeWidth = 4,
          size = "lg",
          minValue = 0,
          maxValue = 150,
          valueLabel = div(icon("battery-full", class = "mx-1"), "2%"),
          color = "danger"
        ),
        circular_progress(
          value = 120,
          showValueLabel = TRUE,
          strokeWidth = 4,
          size = "lg",
          minValue = 0,
          maxValue = 150,
          valueLabel = div(icon("mobile-screen-button", class = "mx-1"), "80%"),
          color = "success"
        )
      )
    )
  )
)

server <- function(input, output, session) {

}

shinyApp(ui, server)
