library(shiny)
library(shinyNextUI)
library(shiny.react)

base_style <- paste(
  "inline-flex flex-row-reverse w-full max-w-md bg-content1 hover:bg-content2",
  "items-center justify-between cursor-pointer rounded-lg gap-2 p-4 border-2",
  "border-transparent data-[selected=true]:border-primary"
)

thumb_style <- paste(
  "w-6 h-6 border-2 shadow-lg group-data-[hover=true]:border-primary",
  "group-data-[selected=true]:ml-6 group-data-[pressed=true]:w-7",
  "group-data-[selected]:group-data-[pressed]:ml-4"
)

ui <- nextui_page(
  div(
    class = "flex flex-col",
    action_button("update", "Toggle switch"),
    spacer(y = 2),
    p("Basic"),
    switch_input(
      inputId = "switch",
      value = TRUE,
      size = "xs",
      shadow = TRUE
    ),
    textOutput("switch_val"),
    spacer(y = 5),
    p("Custom style"),
    spacer(y = 2),
    switch_input(
      "custom_switch",
      classNames = JS(
        sprintf("{
          base: '%s',
          wrapper: 'p-0 h-4 overflow-visible',
          thumb: '%s'
        }", base_style, thumb_style
      )),
      div(
        className = "flex flex-col gap-1",
        p(className = "text-medium", "Enable early acces"),
        p(
          className = "text-tiny text-default-400",
         "Get access to new features before they are released."
        )
      )
    )
  )
)

server <- function(input, output, session) {
  output$switch_val <- renderText(input$switch)
  observeEvent(input$update, {
    update_switch_input(session, "switch", value = !input$switch)
  })
}

if (interactive() || is_testing()) shinyApp(ui, server)
