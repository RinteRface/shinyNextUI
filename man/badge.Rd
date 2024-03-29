% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/components.R, R/doc.R
\name{badge}
\alias{badge}
\title{badge}
\usage{
badge(...)
}
\arguments{
\item{...}{Props to pass to the component.
The allowed props are listed below in the \bold{Details} section.}
}
\value{
Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
}
\description{
Badges are used as a small numerical value or status descriptor for UI elements.
}
\details{
\itemize{
\item \bold{children *}. The wrapped component.. Type: ReactNode. Default: NA.
\item \bold{content}. The content of the badge. The badge will be rendered relative to its children.. Type: string | number | ReactNode. Default: NA.
\item \bold{variant}. The variant style of the badge.. Type: solid | flat | faded | shadow. Default: solid.
\item \bold{color}. The color of the badge.. Type: default | primary | secondary | success | warning | danger. Default: default.
\item \bold{size}. The size of the badge.. Type: sm | md | lg. Default: md.
\item \bold{shape}. The shape of the badge.. Type: circle | rectangle. Default: rectangle.
\item \bold{placement}. The placement of the badge.. Type: top-right | top-left | bottom-right | bottom-left. Default: top-right.
\item \bold{showOutline}. If true, the badge will have an outline.. Type: boolean. Default: true.
\item \bold{disableOutline}. If true, the badge will not have an outline. Deprecated use showOutline instead.. Type: boolean. Default: false.
\item \bold{disableAnimation}. If true, the badge will not have an animation.. Type: boolean. Default: false.
\item \bold{isInvisible}. If true, the badge will be invisible.. Type: boolean. Default: false.
\item \bold{isOneChar}. If true, the badge will have the same width and height.. Type: boolean. Default: false.
\item \bold{isDot}. If true, the badge will have smaller dimensions.. Type: boolean. Default: false.
\item \bold{classNames}. Allows to set custom class names for the badge slots.. Type: Record<"base"｜"badge", string>. Default: NA.
}
}
\examples{
library(shiny)
library(shinyNextUI)

badge_config <- data.frame(
  size = c(rep("sm", 2), rep("md", 2), rep("lg", 2)),
  color = c(
    "default",
    "primary",
    "secondary",
    "success",
    "warning",
    "danger"
  ),
  disable_outline = c(rep(FALSE, 3), rep(TRUE, 3))
)

variants <- c("solid", "flat", "faded", "shadow")
placement <- c("top-right", "bottom-right", "top-left", "bottom-left")
shape <- c("rectangle", "circle")

badge_factory <- function(size, color, disable_outline) {
  badge(
    class = "mx-5",
    size = size,
    color = color,
    disableOutline = disable_outline,
    content = 1,
    avatar()
  )
}

badges <- purrr::pmap(badge_config, badge_factory)

ui <- nextui_page(
  p(class = "font-extrabold text-2xl uppercase", "Badges"),
  div(
    class = "flex flex-row",
    badges
  ),
  spacer(y = 2),
  p(class = "font-extrabold text-2xl uppercase", "Badge content"),
  div(
    class = "flex flex-row",
    badge(
      color = "danger",
      content = "New",
      placement = "top-left",
      avatar(
        bordered = TRUE,
        squared = TRUE,
        color = "secondary",
        size = "lg",
        src = "https://i.pravatar.cc/300?u=a042581f4e29026707d"
      )
    )
  ),
  spacer(y = 2),
  p(class = "font-extrabold text-2xl uppercase", "Solid variant"),
  div(
    class = "flex flex-row",
    badge(variant = "solid", color = "success", size = "lg", content = 5, avatar())
  ),
  spacer(y = 2),
  p(class = "font-extrabold text-2xl uppercase", "Flat variant"),
  div(
    class = "flex flex-row",
    badge(variant = "flat", color = "success", size = "lg", content = 5, avatar())
  ),
  spacer(y = 2),
  p(class = "font-extrabold text-2xl uppercase", "Faded variant"),
  div(
    class = "flex flex-row",
    badge(variant = "faded", color = "success", size = "lg", content = 5, avatar())
  ),
  spacer(y = 2),
  p(class = "font-extrabold text-2xl uppercase", "Shadow variant"),
  div(
    class = "flex flex-row",
    badge(variant = "shadow", color = "success", size = "lg", content = 5, avatar())
  )
)

server <- function(input, output, session) {}

if (interactive() || is_testing()) shinyApp(ui, server)
}
\seealso{
See \url{https://nextui.org/docs/components/badge}.
}
