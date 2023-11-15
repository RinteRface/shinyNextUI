library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  action_button(
    inputId = "show_modal",
    color = "primary",
    shadow = TRUE,
    "Show modal"
  ),
  radio_input(
    "scroll",
    label = "Scroll option",
    choices = c(
      "inside" = "Inside",
      "outside" = "Outside"
    ),
    selected = "inside"
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
      scrollBehavior = input$scroll,
      isOpen = modalVisible(),
      size = "sm",
      modal_content(
        modal_header("My modal"),
        modal_body(
          p(
            "Cras mattis consectetur purus sit amet fermentum. Cras justo odio,
            dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta
            ac consectetur ac, vestibulum at eros."
          ),
          p(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
            Nullam pulvinar risus non risus hendrerit venenatis.
            Pellentesque sit amet hendrerit risus, sed porttitor quam.
            Magna exercitation reprehenderit magna aute tempor cupidatat
            consequat elit dolor adipisicing. Mollit dolor eiusmod sunt ex
            incididunt cillum quis. Velit duis sit officia eiusmod Lorem
            aliqua enim laboris do dolor eiusmod. Et mollit incididunt
            nisi consectetur esse laborum eiusmod pariatur proident Lorem
            eiusmod et. Culpa deserunt nostrud ad veniam."
          ),
          p(
            "Mollit dolor eiusmod sunt ex incididunt cillum quis. Velit
             duis sit officia eiusmod Lorem aliqua enim laboris do dolor
             eiusmod. Et mollit incididunt nisi consectetur esse laborum
             eiusmod pariatur proident Lorem eiusmod et. Culpa deserunt
             nostrud ad veniam. Lorem ipsum dolor sit amet, consectetur
             adipiscing elit. Nullam pulvinar risus non risus hendrerit
             venenatis. Pellentesque sit amet hendrerit risus, sed
             porttitor quam. Magna exercitation reprehenderit magna aute
             tempor cupidatat consequat elit dolor adipisicing. Mollit
             dolor eiusmod sunt ex incididunt cillum quis. Velit duis sit
             officia eiusmod Lorem aliqua enim laboris do dolor eiusmod. Et
             mollit incididunt nisi consectetur esse laborum eiusmod
             pariatur proident Lorem eiusmod et. Culpa deserunt nostrud ad
             veniam."
          ),
          p(
            "Mollit dolor eiusmod sunt ex incididunt cillum quis. Velit
             duis sit officia eiusmod Lorem aliqua enim laboris do dolor
             eiusmod. Et mollit incididunt nisi consectetur esse laborum
             eiusmod pariatur proident Lorem eiusmod et. Culpa deserunt
             nostrud ad veniam. Lorem ipsum dolor sit amet, consectetur
             adipiscing elit. Nullam pulvinar risus non risus hendrerit
             venenatis. Pellentesque sit amet hendrerit risus, sed
             porttitor quam. Magna exercitation reprehenderit magna aute
             tempor cupidatat consequat elit dolor adipisicing. Mollit
             dolor eiusmod sunt ex incididunt cillum quis. Velit duis sit
             officia eiusmod Lorem aliqua enim laboris do dolor eiusmod. Et
             mollit incididunt nisi consectetur esse laborum eiusmod
             pariatur proident Lorem eiusmod et. Culpa deserunt nostrud ad
             veniam."
          )
        ),
        modal_footer("Modal footer")
      ),
      onClose = JS("() => Shiny.setInputValue('modal_closed', true, {priority: 'event'})")
    )
  })

  exportTestValues(
    modal_state = modalVisible()
  )
}

if (interactive() || is_testing()) shinyApp(ui, server)
