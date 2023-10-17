library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  div(
    class = "grid gap-4 grid-cols-3 grid-rows-3 m-5",
    card(card_body("Simple card without anything")),
    card(
      variant = "bordered",
      card_header("Card title"),
      divider(),
      card_body(h1("Card body")),
      divider(),
      card_footer("Card Footer")
    ),
    card(
      #isBlurred = TRUE,
      isPressable = TRUE,
      onPress = JS("() => alert('You pressed me')"),
      shadow = "sm",
      className = "border-none bg-background/60 dark:bg-default-100/50 max-w-[610px]",
      card_body("Simple card without anything")
    )
  )
)

server <- function(input, output, session) {

}

if (interactive() || is_testing()) shinyApp(ui, server)
