#' Demo app
#'
#' @export
#'
#' @import shiny
#' @import shiny.react
run_app <- function() {
  shinyApp(
    ui = tagList(
      enableReactDebugMode(),
      Card(
        isPressable = TRUE,
        isHoverable = TRUE,
        variant = "bordered",
        card_header("Card title"),
        card_divider(),
        card_body(
          Text("A pressable card."),
          Button(
            color = "primary",
            "Test Button",
            onPress = JS("(event) => Shiny.setInputValue('clicked', true, {priority: 'event'})")
          )
        ),
        card_divider(),
        card_footer("Card footer")
      ),
      reactOutput("modal")
    ),
    server = function(input, output) {
      modalVisible <- reactiveVal(FALSE)
      observeEvent(input$clicked, {
        modalVisible(TRUE)
      })

      observeEvent(input$modal_closed, {
        modalVisible(FALSE)
      })

      output$modal <- renderReact({
        Modal(
          open = modalVisible(),
          Text(
            "Cras mattis consectetur purus sit amet fermentum. Cras justo odio,
            dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta
            ac consectetur ac, vestibulum at eros."
          ),
          onClose = JS("() => Shiny.setInputValue('modal_closed', true, {priority: 'event'})")
        )
      })
    }
  )
}
