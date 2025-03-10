library(shiny)
library(shinyNextUI)
library(shiny.react)
library(thematic)

thematic_shiny()

max <- 10
cards <- lapply(seq_len(max), function(i) {
  tagList(
    spacer(y = 2),
    card(
      id = sprintf("mycard-%s", i),
      card_header(sprintf("Card %s", i)),
      card_body(
        sprintf("Card content %s", i),
        slider_input(
          sprintf("obs-%s", i),
          "Obs",
          minValue = 0,
          maxValue = 1000,
          value = 500
        ),
        plotOutput(sprintf("distPlot-%s", i))
      )
    )
  )
})

ui <- nextui_page(
  pagination(
    inputId = "pagination",
    loop = TRUE,
    size = "lg",
    variant = "bordered",
    showControls = TRUE,
    page = 1,
    total = max
  )
)

server <- function(input, output, session) {
  history <- reactiveVal(NULL)

  # Dynamically insert cards with the pagination.
  observeEvent(input$pagination, {
    if (!is.null(history()))
      removeUI(sprintf("#mycard-%s", history()), multiple = TRUE)
    insertUI(
      selector = "#pagination",
      where = "afterEnd",
      ui = cards[[input$pagination]]
    )
    history(input$pagination)

    output[[sprintf("distPlot-%s", history())]] <- renderPlot({
      req(input[[sprintf("obs-%s", history())]])
      hist(
        rnorm(input[[sprintf("obs-%s", history())]]),
        main = sprintf("Super plot %s", history())
      )
    })
  })
}

if (interactive() || is_testing()) shinyApp(ui, server)
