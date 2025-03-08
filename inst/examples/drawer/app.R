library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  action_button(
    inputId = "show_drawer",
    color = "primary",
    shadow = TRUE,
    "Show drawer"
  ),
  reactOutput("drawer")
)

server <- function(input, output, session) {
  drawerVisible <- reactiveVal(FALSE)
  observeEvent(input$show_drawer, {
    drawerVisible(TRUE)
  })

  observeEvent(input$hide_drawer, {
    drawerVisible(FALSE)
  })

  observeEvent(input$drawer_closed, {
    drawerVisible(FALSE)
  })

  output$drawer <- renderReact({
    drawer(
      scrollBehavior = input$scroll,
      isOpen = drawerVisible(),
      size = "sm",
      backdrop = "transparent",
      placement = "right",
      motionProps = JS(
        "{
          variants: {
            enter: {
              opacity: 1,
              x: 0,
              duration: 10,
            },
            exit: {
              x: 100,
              opacity: 0,
              duration: 10,
            },
          },
        }"
      ),
      drawer_content(
        drawer_header("My drawer"),
        drawer_body(
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
        drawer_footer(
          action_button(
            inputId = "hide_drawer",
            color = "danger",
            shadow = TRUE,
            "Close drawer"
          )
        )
      ),
      onClose = JS(
        "() => Shiny.setInputValue('drawer_closed', true, {priority: 'event'})"
      )
    )
  })

  exportTestValues(
    drawer_state = drawerVisible()
  )
}

if (interactive() || is_testing()) shinyApp(ui, server)
