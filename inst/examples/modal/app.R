library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  actionButton(
    inputId = "show_modal",
    color = "primary",
    shadow = TRUE,
    "Show modal"
  ),
  reactOutput("modal")
)

server <- function(input, output, session) {
  modalVisible <- reactiveVal(FALSE)
  observeEvent(input$show_modal, {
    modalVisible(TRUE)
  })

  observeEvent(input$modal_closed, {
    modalVisible(FALSE)
  })

  output$modal <- renderReact({
    modal(
      open = modalVisible(),
      modal_header("My modal"),
      modal_body(
        text(
          "Cras mattis consectetur purus sit amet fermentum. Cras justo odio,
            dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta
            ac consectetur ac, vestibulum at eros."
        )
      ),
      modal_footer("Modal footer"),
      onClose = JS("() => Shiny.setInputValue('modal_closed', true, {priority: 'event'})")
    )
  })

  exportTestValues(
    modal_state = modalVisible()
  )
}

if (interactive() || is_testing()) shinyApp(ui, server)
