% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/inputs.R
\name{radio_input}
\alias{radio_input}
\alias{update_radio_input}
\title{Radio input}
\usage{
radio_input(inputId, ..., choices, selected = choices[1])

update_radio_input(
  session = shiny::getDefaultReactiveDomain(),
  inputId,
  ...,
  choices = NULL,
  selected = NULL
)
}
\arguments{
\item{inputId}{Unique input id.}

\item{...}{Props.}

\item{choices}{Radio choices.}

\item{selected}{Default selected value.}

\item{session}{Shiny session.}
}
\value{
A radio input tag.
}
\description{
Radio input
}
\details{
See \url{https://nextui.org/docs/components/radio-group}
to get the list of parameters to pass in \code{...}.
}
\examples{
library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  debug_react = TRUE,
  div(
    class = "flex flex-col gap-1",
    spacer(y = 2),
    select_input(
      "select",
      label = "Tab to select:",
      value = JS("['sydney']"),
      disallowEmptySelection = TRUE,
      select_item(key = "buenos-aires", value = "buenos-aires", "Buenos Aires"),
      select_item(key = "sydney", value = "sydney", "Sydney")
    ),
    spacer(y = 2),
    radio_input(
      inputId = "radio",
      label = "Radios",
      description = "Radios are fun.",
      orientation = "horizontal",
      choices = c(
        "buenos-aires" = "Buenos Aires",
        "sydney" = "Sydney"
      )
    ),
    textOutput("radio_val")
  )
)

server <- function(input, output, session) {
  observeEvent(input$select, {
    update_radio_input(session, "radio", selected = input$select)
  })
  output$radio_val <- renderText(input$radio)
}

if (interactive() || is_testing()) shinyApp(ui, server)
}
\seealso{
See \url{https://nextui.org/docs/components/radio-group}.
}
