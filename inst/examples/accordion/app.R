library(shiny)
library(shinyNextUI)

ui <- nextui_page(
  debug_react = TRUE,
  p(class = "text-teal-300 font-extrabold hover:text-rose-300 text-2xl uppercase my-2", "accordion()"),
  accordion(
    inputId = "accordion1",
    value = "2",
    accordion_item(
      startContent = avatar(
        isBordered = TRUE,
        color = "primary",
        radius = "lg",
        src = "https://i.pravatar.cc/150?u=a042581f4e29026024d"
      ),
      onPress = JS("(e) => alert('Your pressed me')"),
      "plop",
      title = "Element 1",
      key = "1",
      subtitle = "subtitle"
    ),
    accordion_item("plop", title = "Element 2", key = "2")
  ),
  spacer(y = 2),
  p(class = "text-teal-300 font-extrabold hover:text-rose-300 text-2xl uppercase my-2", "shadow variant accordion()"),
  accordion(
    inputId = "accordion2",
    isCompact = TRUE,
    variant = "shadow",
    value = "3",
    accordion_item("plop", title = "Element 1", key = "1", subtitle = "subtitle"),
    accordion_item("plop", title = "Element 2", key = "2"),
    accordion_item("plop", title = "Element 3", key = "3")
  ),
  spacer(y = 2),
  p(class = "text-teal-300 font-extrabold hover:text-rose-300 text-2xl uppercase my-2", "bordered variant accordion()"),
  accordion(
    inputId = "accordion3",
    isCompact = TRUE,
    variant = "bordered",
    accordion_item("plop", title = "Element 1", key = "1", subtitle = "subtitle"),
    accordion_item("plop", title = "Element 2", key = "2")
  ),
  spacer(y = 2),
  p(class = "text-teal-300 font-extrabold hover:text-rose-300 text-2xl uppercase my-2", "splitted variant accordion()"),
  accordion(
    inputId = "accordion4",
    isCompact = TRUE,
    variant = "splitted",
    motionProps= JS(
      '{
      variants: {
        enter: {
          y: 0,
          opacity: 1,
          height: "auto",
          transition: {
            height: {
              type: "spring",
              stiffness: 500,
              damping: 30,
              duration: 1,
            },
            opacity: {
              easings: "ease",
              duration: 1,
            },
          },
        },
        exit: {
          y: -10,
          opacity: 0,
          height: 0,
          transition: {
            height: {
              easings: "ease",
              duration: 0.25,
            },
            opacity: {
              easings: "ease",
              duration: 0.3,
            },
          },
        },
      },
    }'),
    defaultExpandedKeys = JS('["2"]'),
    accordion_item("plop", title = "Element 1", key = "1", subtitle = "subtitle"),
    accordion_item("plop", title = "Element 2", key = "2")
  )
)

server <- function(input, output, session) {
  observe(
    print(input$accordion1)
  )
}

if (interactive() || is_testing()) shinyApp(ui, server)
