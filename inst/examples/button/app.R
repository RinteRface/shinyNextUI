library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  reactOutput("button")
)

server <- function(input, output, session) {
  n_click <- reactiveVal(0)
  observeEvent(input$clicked, {
    n_click(n_click() + 1)
  })

  output$button <- renderReact({
    actionButton(
      inputId = "clicked",
      color = "primary",
      shadow = TRUE,
      sprintf(
        "Test Button. You clicked: %s times.",
        n_click()
      )
    )
  })

  exportTestValues(n_click = n_click())
}

shinyApp(ui, server)
