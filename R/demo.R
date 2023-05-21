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
      grid_container(
        gap = 2,
        justify = "center",
        Grid(
          xs = 6,
          Card(
            isPressable = TRUE,
            isHoverable = TRUE,
            variant = "bordered",
            card_header("Card title"),
            card_divider(),
            card_body(
              Text(
                h1 = TRUE,
                color = "primary",
                "Lets's",
                css = JS("{textGradient: '45deg, $blue600 -20%, $pink600 50%'}"),
                weight = "bold"
              ),
              Text(
                h1 = TRUE,
                "Make the Web",
                css = JS("{textGradient: '45deg, $purple600 -20%, $pink600 100%'}"),
                weight = "bold"
              ),
              Text(
                h1 = TRUE,
                "Prettier",
                css = JS("{textGradient: '45deg, $yellow600 -20%, $red600 100%'}"),
                weight = "bold"
              ),
              Button(
                color = "primary",
                shadow = TRUE,
                "Test Button",
                onPress = JS("(event) => Shiny.setInputValue('clicked', true, {priority: 'event'})")
              )
            ),
            card_divider(),
            card_footer("Card footer")
          )
        ),
        Grid(xs = 6, Card(card_body(Text("Card 2"))))
      ),
      reactOutput("modal"),
      Switch.shinyInput(inputId = "switch", checked = TRUE, size = "xs", shadow = TRUE)
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

      observe({
        print(input$switch)
      })
    }
  )
}
