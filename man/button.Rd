% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/aliases.R, R/components.R, R/doc.R, R/inputs.R
\name{actionButton}
\alias{actionButton}
\alias{updateActionButton}
\alias{button}
\alias{action_button}
\alias{update_action_button}
\title{Action button}
\usage{
actionButton(inputId, label, icon = NULL, width = NULL, ...)

updateActionButton(
  session = getDefaultReactiveDomain(),
  inputId,
  label = NULL,
  icon = NULL
)

button(...)

action_button(inputId, ..., value = default_value)

update_action_button(session = shiny::getDefaultReactiveDomain(), inputId, ...)
}
\arguments{
\item{inputId}{The \code{input} slot that will be used to access the value.}

\item{label}{The contents of the button or link--usually a text label, but
you could also use any other HTML, like an image.}

\item{icon}{An optional \code{\link[shiny:icon]{icon()}} to appear on the button.}

\item{width}{Not used with NextUI but left for compatibility.}

\item{...}{Named attributes to be applied to the button or link.}

\item{session}{The \code{session} object passed to function given to
\code{shinyServer}. Default is \code{getDefaultReactiveDomain()}.}

\item{value}{Starting value.}
}
\value{
Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
}
\description{
This is a higher level wrapper of \link{action_button} to match
vanilla's Shiny syntax and parameters.

This is a higher level wrapper of \link{update_action_button} to match
vanilla's Shiny syntax and parameters.

Buttons allow users to perform actions and choose with a single tap.
}
\details{
\itemize{
\item \bold{children}. The content to display in the button.. Type: ReactNode. Default: NA.
\item \bold{variant}. The button appearance style.. Type: solid | bordered | light | flat | faded | shadow | ghost. Default: solid.
\item \bold{color}. The button color theme.. Type: default | primary | secondary | success | warning | danger. Default: default.
\item \bold{size}. The button size.. Type: sm | md | lg. Default: md.
\item \bold{radius}. The button border radius.. Type: none | sm | md | lg | full. Default: NA.
\item \bold{startContent}. The button start content.. Type: ReactNode. Default: NA.
\item \bold{endContent}. The button end content.. Type: ReactNode. Default: NA.
\item \bold{spinner}. Spinner to display when loading.. Type: ReactNode. Default: NA.
\item \bold{spinnerPlacement}. The spinner placement.. Type: start | end. Default: start.
\item \bold{fullWidth}. Whether the button should take the full width of its parent.. Type: boolean. Default: false.
\item \bold{isIconOnly}. Whether the button should have the same width and height.. Type: boolean. Default: false.
\item \bold{isDisabled}. Whether the button is disabled.. Type: boolean. Default: false.
\item \bold{isLoading}. Whether the button is loading.. Type: boolean. Default: false.
\item \bold{disableRipple}. Whether the button should display a ripple effect on press.. Type: boolean. Default: false.
\item \bold{disableAnimation}. Whether the button should display animations.. Type: boolean. Default: false.
}
\itemize{
\item \bold{onPress}. Handler called when the press is released over the target.. Type: (e: PressEvent) => void. Default: NA.
\item \bold{onPressStart}. Handler called when a press interaction starts.. Type: (e: PressEvent) => void. Default: NA.
\item \bold{onPressEnd}. Handler called when a press interaction ends, either over the target or when the pointer leaves the target.. Type: (e: PressEvent) => void. Default: NA.
\item \bold{onPressChange}. Handler called when the press state changes.. Type: (isPressed: boolean) => void. Default: NA.
\item \bold{onPressUp}. Handler called when a press is released over the target, regardless of whether it started on the target or not.. Type: (e: PressEvent) => void. Default: NA.
\item \bold{onKeyDown}. Handler called when a key is pressed.. Type: (e: KeyboardEvent) => void. Default: NA.
\item \bold{onKeyUp}. Handler called when a key is released.. Type: (e: KeyboardEvent) => void. Default: NA.
\item \bold{onClick}. The native button click event handler (Deprecated) use onPress instead.. Type: MouseEventHandler. Default: NA.
}
\itemize{
\item \bold{children}. The buttons to display.. Type: ReactNode | ReactNode[]. Default: NA.
\item \bold{variant}. The buttons appearance style.. Type: solid | bordered | light | flat | faded | shadow | ghost. Default: solid.
\item \bold{color}. The buttons color theme.. Type: default | primary | secondary | success | warning | danger. Default: default.
\item \bold{size}. The buttons size.. Type: sm | md | lg. Default: md.
\item \bold{radius}. The buttons border radius.. Type: none | sm | md | lg | full. Default: xl.
\item \bold{fullWidth}. Whether the buttons should take the full width.. Type: boolean. Default: false.
\item \bold{isDisabled}. Whether the buttons are disabled.. Type: boolean. Default: false.
}
}
\examples{
library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  reactOutput("button")
)

server <- function(input, output, session) {
  n_click <- reactiveVal(0)
  observeEvent(input$clicked, {
    n_click(n_click() + 1)
  })

  output$button <- renderReact({
    action_button(
      inputId = "clicked",
      color = "primary",
      shadow = TRUE,
      sprintf(
        "Test Button. You clicked: \%s times.",
        n_click()
      )
    )
  })

  exportTestValues(n_click = n_click())
}

if (interactive() || is_testing()) shinyApp(ui, server)
library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  reactOutput("button")
)

server <- function(input, output, session) {
  n_click <- reactiveVal(0)
  observeEvent(input$clicked, {
    n_click(n_click() + 1)
  })

  output$button <- renderReact({
    action_button(
      inputId = "clicked",
      color = "primary",
      shadow = TRUE,
      sprintf(
        "Test Button. You clicked: \%s times.",
        n_click()
      )
    )
  })

  exportTestValues(n_click = n_click())
}

if (interactive() || is_testing()) shinyApp(ui, server)
library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  reactOutput("button")
)

server <- function(input, output, session) {
  n_click <- reactiveVal(0)
  observeEvent(input$clicked, {
    n_click(n_click() + 1)
  })

  output$button <- renderReact({
    action_button(
      inputId = "clicked",
      color = "primary",
      shadow = TRUE,
      sprintf(
        "Test Button. You clicked: \%s times.",
        n_click()
      )
    )
  })

  exportTestValues(n_click = n_click())
}

if (interactive() || is_testing()) shinyApp(ui, server)
}
\seealso{
See \url{https://nextui.org/docs/components/button}
and \link{action_button} to get the list of possible parameters.

See \url{https://nextui.org/docs/components/button}.
}
