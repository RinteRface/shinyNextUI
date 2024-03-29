% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/components.R, R/doc.R
\name{skeleton}
\alias{skeleton}
\title{skeleton}
\usage{
skeleton(...)
}
\arguments{
\item{...}{Props to pass to the component.
The allowed props are listed below in the \bold{Details} section.}
}
\value{
Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
}
\description{
Skeleton is a placeholder to show a loading state and the expected shape of a component.
}
\details{
\itemize{
\item \bold{children}. The content of the skeleton.. Type: ReactNode. Default: NA.
\item \bold{isLoaded}. Whether the skeleton is loaded.. Type: boolean. Default: false.
\item \bold{disableAnimation}. Whether to disable the animations.. Type: boolean. Default: false.
\item \bold{classNames}. Allows to set custom class names for the skeleton slots.. Type: Record<"base"｜"content", string>. Default: NA.
}
}
\examples{
library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  debug_react = TRUE,
  reactOutput("skeleton_card")
)

server <- function(input, output, session) {

  is_loaded <- reactiveVal(FALSE)
  observeEvent(req(!is_loaded()), {
    Sys.sleep(4)
    is_loaded(TRUE)
  })

  output$skeleton_card <- renderReact({
    card(
      card_header(
        skeleton(
          isLoaded = is_loaded(),
          user(
            name = "Jane Doe",
            description = "Product Designer",
            avatarProps = JS("{
            src: 'https://i.pravatar.cc/150?u=a04258114e29026702d'
          }")
          )
        )
      ),
      card_body(skeleton("Hello World", isLoaded = is_loaded())),
      card_footer(skeleton("Footer", isLoaded = is_loaded()))
    )
  })
}

if (interactive() || is_testing()) shinyApp(ui, server)
}
\seealso{
See \url{https://nextui.org/docs/components/skeleton}.
}
