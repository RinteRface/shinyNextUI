library(shiny)
library(shinyNextUI)

ui <- nextui_page(
  grid_container(
    gap = 2,
    xs = 12,
    grid(
      action_button("toggle_panel1", "Toggle panel 1"),
      spacer(y = 1),
      collapse_panel(
        inputId = "collapse_panel1",
        bordered = TRUE,
        shadow = TRUE,
        title = "Title",
        subtitle = "Subtitle",
        "Content"
      )
    ),
    grid(
      collapse_panel(
        inputId = "collapse_panel2",
        bordered = TRUE,
        shadow = TRUE,
        title = "Disabled panel",
        subtitle = "Subtitle",
        "Content",
        disabled = TRUE
      )
    ),
    grid(
      collapse_panel(
        inputId = "collapse_panel3",
        bordered = TRUE,
        shadow = TRUE,
        title = "Collapsible panel",
        subtitle = "Subtitle",
        showArrow = FALSE,
        borderWeight = "bold",
        contentLeft = tagList(
          avatar(
            src = "https://i.pravatar.cc/150?u=a042581f4e25056704b",
            size = "lg"
          )
        ),
        text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
          eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
          enim ad minim veniam, quis nostrud exercitation ullamco laboris
          nisi ut aliquip ex ea commodo consequat."
        )
      )
    ),
    spacer(y = 1),
    text("Accordion"),
    grid(
      collapse_group(
        inputId = "collapse_group",
        accordion = TRUE,
        bordered = TRUE,
        shadow = TRUE,
        diver = TRUE,
        choices = tagList(
          collapse_option(
            title = "Title 1",
            subtitle = "Subtitle",
            "Blabla"
          ),
          collapse_option(title = "2", "Test 2")
        )
      )
    )
  )
)

server <- function(input, output, session) {
  observe({
    print(input$collapse_panel1)
    print(input$collapse_group)
  })
  observeEvent(input$toggle_panel1, {
    # Issue: this does not trigger onChange on the JS side ...
    # so the input value does not change. Maybe a bug
    # on the nextUI side.
    update_collapse_panel(
      inputId = "collapse_panel1",
      expanded = !input$collapse_panel1
    )
  })
}

if (interactive() || is_testing()) shinyApp(ui, server)
