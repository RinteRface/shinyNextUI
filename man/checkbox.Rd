% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/doc.R, R/inputs.R
\name{checkbox}
\alias{checkbox}
\alias{checkbox_input}
\alias{update_checkbox_input}
\title{checkbox}
\usage{
checkbox_input(inputId, ..., value = default_value)

update_checkbox_input(
  session = shiny::getDefaultReactiveDomain(),
  inputId,
  ...
)
}
\arguments{
\item{inputId}{ID of the component.}

\item{...}{Props to pass to the component.
The allowed props are listed below in the \bold{Details} section.}

\item{value}{Starting value.}

\item{session}{Object passed as the \code{session} argument to Shiny server.}
}
\value{
An object of class \code{shiny.tag} containing the
necessary configuration and including options such as JavaScript
dependencies to instantiate a HeroUI checkbox component.
}
\description{
Checkboxes allow users to select multiple items from a list of individual items, or to mark one individual item as selected.
}
\details{
\itemize{
\item \bold{children}. Type: \code{ReactNode}. Default: \code{NA}.
\item \bold{icon}. Type: \code{CheckboxIconProps}. Default: \code{NA}.
\item \bold{value}. Type: \code{string}. Default: \code{NA}.
\item \bold{name}. Type: \code{string}. Default: \code{NA}.
\item \bold{size}. Type: \code{sm OR md OR lg}. Default: \code{"md"}.
\item \bold{color}. Type: \code{default OR primary OR secondary OR success OR warning OR danger}. Default: \code{"primary"}.
\item \bold{radius}. Type: \code{none OR sm OR md OR lg OR full}. Default: \code{NA}.
\item \bold{lineThrough}. Type: \code{boolean}. Default: \code{false}.
\item \bold{isSelected}. Type: \code{boolean}. Default: \code{NA}.
\item \bold{defaultSelected}. Type: \code{boolean}. Default: \code{NA}.
\item \bold{isRequired}. Type: \code{boolean}. Default: \code{false}.
\item \bold{isReadOnly}. Type: \code{boolean}. Default: \code{NA}.
\item \bold{isDisabled}. Type: \code{boolean}. Default: \code{false}.
\item \bold{isIndeterminate}. Type: \code{boolean}. Default: \code{NA}.
\item \bold{isInvalid}. Type: \code{boolean}. Default: \code{false}.
\item \bold{validationState}. Type: \code{valid OR invalid}. Default: \code{NA}.
\item \bold{disableAnimation}. Type: \code{boolean}. Default: \code{false}.
\item \bold{classNames}. Type: \code{Partial<Record<"base"OR "wrapper"OR "icon"OR "label", string>>}. Default: \code{NA}.
}
\itemize{
\item \bold{onChange}. Type: \code{React.ChangeEvent<HTMLInputElement>}. Default: \code{NA}.
\item \bold{onValueChange}. Type: \code{(isSelected: boolean) => void}. Default: \code{NA}.
}
}
\examples{
library(shiny)
library(shinyNextUI)

ui <- nextui_page(
  div(
    class = "flex gap-1",
    action_button("update", "Toggle checkbox"),
    spacer(y = 2),
    checkbox_input(
      inputId = "checkbox",
      value = TRUE,
      "My checkbox",
      isRounded = TRUE,
      color = "warning",
      lineThrough = TRUE
    ),
    textOutput("check_val")
  )
)

server <- function(input, output, session) {
  output$check_val <- renderText(input$checkbox)
  observeEvent(input$update, {
    update_checkbox_input(session, "checkbox", value = !input$checkbox)
  })
}

if (interactive() || is_testing()) shinyApp(ui, server)
}
\seealso{
See \url{https://heroui.com/docs/components/checkbox}.
}
