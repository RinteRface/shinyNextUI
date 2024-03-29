library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  div(
    class = "flex gap-2 my-2",
    chip(
      id = "plop",
      "A chip",
      onClose = JS("(e) => {
        var chipEl = e.target.offsetParent;
        Shiny.setInputValue(chipEl.id, false);
        $(chipEl).remove();
      }")
    ),
    chip(
      "A chip",
      color = "success",
      size = "lg",
      radius = "sm",
      variant = "flat",
      startContent = icon("home"),
      endContent = icon("bell")
    ),
    chip(
      avatar = avatar(name = "JW", src = "https://i.pravatar.cc/300?u=a042581f4e29026709d"),
      "hello"
    ),
    reactOutput("modal")
  )
)

server <- function(input, output, session) {

  modalVisible <- reactiveVal(FALSE)
  observeEvent({
    input$plop
  }, {
    if (!input$plop) modalVisible(TRUE)
  })

  observeEvent(input$modal_closed, {
    modalVisible(FALSE)
  })

  output$modal <- renderReact({
    modal(
      scrollBehavior = input$scroll,
      isOpen = modalVisible(),
      size = "sm",
      placement = "top",
      modal_content(
        modal_header("Congrats"),
        modal_body(
          p("You closed me!")
        )
      ),
      onClose = JS("() => Shiny.setInputValue('modal_closed', true, {priority: 'event'})")
    )
  })
}

if (interactive() || is_testing()) shinyApp(ui, server)
