library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  dark_mode = TRUE,
  spacer(y = 5),
  p(class = "font-extrabold text-2xl uppercase my-2", "No data"),
  spacer(y = 2),
  table(iris[0, ], hideHeader = TRUE),
  spacer(y = 5),
  p(class = "font-extrabold text-2xl uppercase my-2", "Single selection table"),
  spacer(y = 2),
  table(
    iris[1:5, ],
    removeWrapper = TRUE,
    isStriped = TRUE,
    color = "primary",
    selectionMode = "single",
    defaultSelectedKeys = JS("['2']")
  ),
  spacer(y = 5),
  p(class = "font-extrabold text-2xl uppercase my-2", "Multiple selection table"),
  spacer(y = 2),
  table(
    iris[1:5, ],
    color = "primary",
    selectionMode = "multiple",
    defaultSelectedKeys = JS("['1', '2']"),
    disabledKeys = JS("['3']")
  ),
  spacer(y = 5),
  p(class = "font-extrabold text-2xl uppercase my-2", "Top/Bottom content"),
  spacer(y = 2),
  table(
    iris[1:5, ],
    isCompact = TRUE,
    topContent = div(
      class = "flex justify-between",
      p("Top content ..."),
      chip("My chip"),
      badge(button("CLick me"), color = "success", placement = "top-right", content = "New")
    ),
    bottomContent = div(
      class = "flex justify-between",
      p("Bottom content ..."),
      link(
        href = "https://nextui.org/docs/components/table",
        target = "_blank",
        "To the doc."
      )
    )
  )
)

server <- function(input, output, session) {}

shinyApp(ui, server)
