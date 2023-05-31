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
        grid(
          xs = 6,
          card(
            isPressable = TRUE,
            isHoverable = TRUE,
            variant = "bordered",
            card_header("Card title"),
            card_divider(),
            card_body(
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
              ),
              grid_container(
                action_button(
                  inputId = "clicked",
                  color = "primary",
                  shadow = TRUE,
                  "Test Button"
                )
              )
            ),
            card_divider(),
            card_footer("Card footer")
          )
        ),
        grid(xs = 6, card(card_body(text("Card 2"))))
      ),
      reactOutput("modal"),
      switch_input(inputId = "switch", value = TRUE, size = "xs", shadow = TRUE),
      text_input(
        inputId = "text",
        value = "Plop",
        placeholder = "Next UI",
        label = "Text input"
      ),
      numeric_input(
        inputId = "numeric",
        value = 10,
        label = "Numeric input"
      ),
      date_input(
        inputId = "date",
        value = "2023-12-11",
        label = "Date input"
      )
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
        modal(
          open = modalVisible(),
          text(
            "Cras mattis consectetur purus sit amet fermentum. Cras justo odio,
            dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta
            ac consectetur ac, vestibulum at eros."
          ),
          onClose = JS("() => Shiny.setInputValue('modal_closed', true, {priority: 'event'})")
        )
      })

      observe({
        print(input$text)
        print(input$switch)
        print(input$clicked)
        print(input$numeric)
        print(class(input$date))
      })
    }
  )
}
