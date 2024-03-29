% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/doc.R, R/inputs.R
\name{switch}
\alias{switch}
\alias{switch_input}
\alias{update_switch_input}
\title{switch}
\usage{
switch_input(inputId, ..., value = default_value)

update_switch_input(session = shiny::getDefaultReactiveDomain(), inputId, ...)
}
\arguments{
\item{inputId}{ID of the component.}

\item{...}{Props to pass to the component.
The allowed props are listed below in the \bold{Details} section.}

\item{value}{Starting value.}

\item{session}{Object passed as the \code{session} argument to Shiny server.}
}
\value{
Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
The update functions return nothing (called for side effects).
}
\description{
The Switch component is used as an alternative between checked and not checked states.
}
\details{
\itemize{
\item \bold{children}. The label of the switch.. Type: ReactNode. Default: NA.
\item \bold{value}. The value of the input element, used when submitting an HTML form.. Type: string. Default: NA.
\item \bold{name}. The name of the input element, used when submitting an HTML form.. Type: string. Default: NA.
\item \bold{size}. The size of the switch.. Type: sm | md | lg. Default: md.
\item \bold{color}. The color of the switch.. Type: default | primary | secondary | success | warning | danger. Default: primary.
\item \bold{thumbIcon}. The icon to be displayed when the switch is checked.. Type: ThumbIconProps. Default: NA.
\item \bold{startContent}. The icon to be displayed at the start of the switch.. Type: ReactNode. Default: NA.
\item \bold{endContent}. The icon to be displayed at the end of the switch.. Type: ReactNode. Default: NA.
\item \bold{isSelected}. Whether the element should be selected (controlled).. Type: boolean. Default: NA.
\item \bold{defaultSelected}. Whether the element should be selected (uncontrolled).. Type: boolean. Default: NA.
\item \bold{isRequired}. Whether user input is required on the input before form submission.. Type: boolean. Default: false.
\item \bold{isReadOnly}. Whether the input can be selected but not changed by the user.. Type: boolean. Default: NA.
\item \bold{isDisabled}. Whether the switch is disabled.. Type: boolean. Default: false.
\item \bold{disableAnimation}. Whether the animation should be disabled.. Type: boolean. Default: false.
\item \bold{classNames}. Allows to set custom class names for the switch slots.. Type: Record<"base"｜ "wrapper"｜ "thumb"｜ "label" ｜ "startContent" ｜ "endContent" ｜ "thumbIcon" , string>. Default: NA.
}
\itemize{
\item \bold{onChange}. Handler that is called when the element's selection state changes. You can pull out the new checked state by accessing event.target.checked (boolean).. Type: React.ChangeEvent\if{html}{\out{<HTMLInputElement>}}. Default: NA.
\item \bold{onValueChange}. Handler that is called when the element's selection state changes.. Type: (isSelected: boolean) => void. Default: NA.
}
}
\examples{
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
          base: '\%s',
          wrapper: 'p-0 h-4 overflow-visible',
          thumb: '\%s'
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
}
\seealso{
See \url{https://nextui.org/docs/components/switch}.
}
