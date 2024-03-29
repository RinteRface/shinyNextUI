% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/components.R, R/doc.R
\name{snippet}
\alias{snippet}
\title{snippet}
\usage{
snippet(...)
}
\arguments{
\item{...}{Props to pass to the component.
The allowed props are listed below in the \bold{Details} section.}
}
\value{
Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
}
\description{
Snippet is a component that can be used to display inline or multiline code snippets.
}
\details{
\itemize{
\item \bold{children}. The content of the snippet.. Type: ReactNode | ReactNode[]. Default: NA.
\item \bold{size}. The size of the snippet.. Type: sm | md | lg. Default: md.
\item \bold{radius}. The radius of the snippet.. Type: none | sm | md | lg. Default: lg.
\item \bold{symbol}. The symbol to show before the snippet.. Type: string | ReactNode. Default: $.
\item \bold{timeout}. he time in milliseconds to wait before resetting the clipboard.. Type: number. Default: 2000.
\item \bold{codeString}. The code string to copy. if codeString is passed, it will be copied instead of the children.. Type: string. Default: NA.
\item \bold{tooltipProps}. The props of the tooltip.. Type: TooltipProps. Default: NA.
\item \bold{copyIcon}. The copy icon.. Type: ReactNode. Default: NA.
\item \bold{checkIcon}. The check icon.. Type: ReactNode. Default: NA.
\item \bold{disableTooltip}. Whether to disable the tooltip.. Type: boolean. Default: false.
\item \bold{disableCopy}. Whether to disable the copy button.. Type: boolean. Default: false.
\item \bold{hideCopyButton}. Whether to hide the copy button.. Type: boolean. Default: false.
\item \bold{hideSymbol}. Whether to hide the symbol.. Type: boolean. Default: false.
\item \bold{copyButtonProps}. The props of the copy button.. Type: ButtonProps. Default: NA.
\item \bold{disableAnimation}. Whether to disable the animations.. Type: boolean. Default: false.
\item \bold{classNames}. Allows to set custom class names for the snippet slots.. Type: Record<"base"｜"content"｜"pre"｜"symbol"｜"copyButton"｜"checkIcon", string>. Default: NA.
}
\itemize{
\item \bold{onCopy}. Handler that is called when the code is copied.. Type: (value: string ｜ string[]) => void;. Default: NA.
}
}
\examples{
library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  debug_react = TRUE,
  snippet("npm install @nextui-org/react", variant = "bordered"),
  spacer(y = 2),
  snippet("you can't copy me", hideCopyButton = TRUE),
  spacer(y = 2),
  snippet(
    color = "secondary",
    variant = "flat",
    span("npm install @nextui-org/react"),
    span("yarn add @nextui-org/react")
  )
)

server <- function(input, output, session) {

}

if (interactive() || is_testing()) shinyApp(ui, server)
}
\seealso{
See \url{https://nextui.org/docs/components/snippet}.
}
