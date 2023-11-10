library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  debug_react = TRUE,
  action_button("update", "Update slider 1"),
  slider_input(
    "slider",
    label = "My slider",
    showTooltip = TRUE,
    radius = "none",
    step = 1,
    maxValue = 10,
    minValue = 0,
    value = 5,
    className = "max-w-md",
    showSteps = TRUE,
    color = "foreground",
    size = "sm",
    marks = JS("
      [
        {
          value: 2,
          label: 'First mark',
        },
        {
          value: 5,
          label: 'Second mark',
        },
        {
          value: 8,
          label: 'Third mark',
        },
      ]
    ")
  ),
  spacer(y = 10),
  slider_input(
    "slider2",
    radius = "lg",
    label = "Color offset",
    size = "sm",
    showTooltip = TRUE,
    color = "warning",
    maxValue = 5,
    minValue = -5,
    fillOffset = 0,
    value = 1,
    formatOptions = JS("{signDisplay: 'always'}")
  ),
  spacer(y = 10),
  slider_input(
    "slider3",
    label = "Outline",
    color = "foreground",
    showOutline = TRUE,
    minValue = 0,
    maxValue = 10,
    value = 5
  ),
  spacer(y = 10),
  slider_input(
    "slider4",
    "With start and end content",
    minValue = 0,
    maxValue = 10,
    value = 5,
    startContent = icon("volume-xmark"),
    endContent = icon("volume-high")
  ),
  spacer(y = 10),
  slider_input(
    "slider5",
    color = "success",
    step = 0.1,
    label = "Format value with getValue",
    getValue = JS("(val) => `${val} / 10`"),
    maxValue = 10,
    minValue = 0,
    value = 5
  ),
  spacer(y = 10),
  slider_input(
    "range",
    label = "Range",
    color = "danger",
    minValue = 0,
    maxValue = 10,
    value = c(1, 4)
  ),
  spacer(y = 10),
  div(
    class = "flex flex-row  max-w-md h-[348px] gap-6 w-full",
    slider_input(
      "slider4",
      label = "Vertical",
      size = "sm",
      orientation = "vertical",
      minValue = 0,
      maxValue = 10,
      value = 5,
      startContent = icon("volume-high"),
      endContent = icon("volume-xmark")
    )
  )
)

server <- function(input, output, session) {
  observeEvent(input$update, {
    update_slider_input(session, inputId = "slider", value = 10)
  })

  observeEvent(input$slider, {
    print(sprintf("Slider is: %s", input$slider))
  })
  observeEvent(input$range, {
    print(input$range)
  })
}

if (interactive() || is_testing()) shinyApp(ui, server)
