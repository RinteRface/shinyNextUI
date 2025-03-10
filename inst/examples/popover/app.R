library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  dark_mode = TRUE,
  div(
    className = "flex align-items-start",
    popover(
      showArrow = TRUE,
      placement = "right",
      backdrop = "blur",
      popover_trigger(button("Click me!", color = "primary")),
      popover_content(
        div(
          className = "px-1 py-2",
          "This is the content of the popover."
        )
      )
    )
  )
)

server <- function(input, output, session) {
}

if (interactive() || is_testing()) shinyApp(ui, server)
