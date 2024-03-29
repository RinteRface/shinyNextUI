% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/doc.R, R/layout.R
\name{navbar}
\alias{navbar}
\alias{navbar_brand}
\alias{navbar_content}
\alias{navbar_item}
\alias{navbar_toggle}
\title{navbar}
\usage{
navbar(...)

navbar_brand(...)

navbar_content(...)

navbar_item(...)

navbar_toggle(...)
}
\arguments{
\item{...}{Props to pass to the component.
The allowed props are listed below in the \bold{Details} section.}
}
\value{
Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
}
\description{
A responsive navigation header positioned on top side of your page that includes support for branding, links, navigation, collapse menu and more.
}
\details{
\itemize{
\item \bold{children*}. The children to render. Usually navbar elements such as NavbarBrand, NavbarContent and NavbarItem. Type: ReactNode[]. Default: NA.
\item \bold{height}. The height of the navbar.. Type: string | number. Default: 4rem (64px).
\item \bold{position}. The position of the navbar.. Type: static | sticky. Default: sticky.
\item \bold{maxWidth}. The max width of the navbar wrapper.. Type: sm | md | lg | xl | 2xl | full. Default: lg.
\item \bold{parentRef}. The parent element where the navbar is placed within. This is used to determine the scroll position and whether the navbar should be hidden or not.. Type: React.RefObject\if{html}{\out{<HTMLElement>}}. Default: window.
\item \bold{isBordered}. Whether the navbar should have a bottom border or not.. Type: boolean. Default: false.
\item \bold{isBlurred}. Whether the navbar should have a blur effect or not.. Type: boolean. Default: true.
\item \bold{isMenuOpen}. Indicates if the navbar menu is open. (controlled). Type: boolean. Default: false.
\item \bold{isMenuDefaultOpen}. Indicates if the navbar menu is open by default. (uncontrolled). Type: boolean. Default: false.
\item \bold{shouldHideOnScroll}. Indicates if the navbar should hide on scroll.. Type: boolean. Default: false.
\item \bold{motionProps}. The motion props to controle the visible / hidden animation. This motion is only available if the shouldHideOnScroll prop is set to true.. Type: MotionProps. Default: NA.
\item \bold{disableScrollHandler}. Whether the navbar parent scroll event should be listened to or not.. Type: boolean. Default: false.
\item \bold{disableAnimation}. Whether the navbar menu animation should be disabled or not.. Type: boolean. Default: false.
\item \bold{classNames}. Allows to set custom class names for the navbar slots.. Type: Record<"base"｜ "wrapper"｜ "brand"｜ "content"｜ "item"｜ "toggle"｜ "toggleIcon"｜ "menu"｜ "menuItem", string>. Default: NA.
}
\itemize{
\item \bold{onMenuOpenChange}. Handler that is called when the navbar menu open state changes.. Type: (isOpen: boolean) => void. Default: NA.
\item \bold{onScrollPositionChange}. Handler that is called when the navbar parent element is scrolled. This event is only dispatched if disableScrollHandler is set to false or shouldHideOnScroll is set to true.. Type: (position: number) => void. Default: NA.
}
\itemize{
\item \bold{children*}. The children to render. Usually navbar elements such as NavbarBrand, NavbarContent and NavbarItem. Type: ReactNode[]. Default: NA.
\item \bold{justify}. The justify content of the navbar content. It takes into account the correct space distribution.. Type: start | center | end. Default: start.
}
\itemize{
\item \bold{children}. The children to render as the navbar item.. Type: ReactNode. Default: NA.
\item \bold{isActive}. Whether the navbar item is active or not.. Type: boolean. Default: false.
}
\itemize{
\item \bold{icon}. The icon to render as the navbar menu toggle.. Type: ReactNode | (isOpen: boolean | undefined) => ReactNode | null;. Default: NA.
\item \bold{isSelected}. Whether the navbar menu toggle is selected. (controlled). Type: boolean. Default: false.
\item \bold{defaultSelected}. Whether the navbar menu toggle is selected by default. (uncontrolled). Type: boolean. Default: false.
\item \bold{srOnlyText}. The text to be used by screen readers.. Type: string. Default: open/close navigation menu.
}
\itemize{
\item \bold{onChange}. Handler that is called when the navbar menu toggle is pressed.. Type: (isOpen: boolean) => void. Default: NA.
}
\itemize{
\item \bold{children*}. The children to render as the navbar menu. Usually a list of NavbarMenuItem components.. Type: ReactNode[]. Default: NA.
\item \bold{portalContainer}. The container element in which the navbar menu overlay portal will be placed.. Type: HTMLElement. Default: document.body.
\item \bold{motionProps}. The motion props to controle the open / close animation. This motion is only available if the disableAnimation prop is set to false.. Type: MotionProps. Default: NA.
}
\itemize{
\item \bold{children}. The children to render as the menu item.. Type: ReactNode. Default: NA.
\item \bold{isActive}. Whether the menu item is active or not.. Type: boolean. Default: false.
}
}
\examples{
library(shiny)
library(shinyNextUI)
library(shiny.react)
library(shiny.router)

sections <- c("main", "other")

layout <- function(..., content) {
  tags$div(
    css = JS("
      {
        maxW: '100\%',
        boxSizing: 'border-box',
      }"
    ),
    ..., # Navbar
    # Content
    tags$div(
      css = JS(
        "{
          boxSizing: 'border-box',
          px: '$12',
          mt: '$8',
          '@xsMax': {px: '$10'}
        }"
      ),
      content
    )
  )
}

# TO DO: create wrapper for end-user to simplify all this mess.
create_navbar <- function(id) {

  input <- get("input", envir = parent.frame())

  nav_links <- lapply(seq_along(sections), function(i) {
    # Li elements
    link(
      inputId = sprintf("link_\%s", i),
      href = route_link(sections[[i]]),
      key = i,
      value = i,
      parent = sprintf("navbar_\%s", sections[[i]]),
      isActive = if (is.null(input[[sprintf("navbar_\%s", id)]])) {
        if (i == 1) TRUE else FALSE
      } else {
        if (input[[sprintf("navbar_\%s", id)]] == i) TRUE else FALSE
      },
      sprintf("Link to \%s", sections[[i]])
    )
  })

  nav <- navbar(
    id = sprintf("navbar_\%s", id),
    maxWidth = "lg",
    variant = "floating",
    isBordered = TRUE,
    navbar_brand(p(b = TRUE, "Brand", color = "inherit", hideIn = "xs")),
    # Ul element
    navbar_content(
      variant = "highlight",
      activeColor = "success",
      nav_links,
      navbar_item(
        action_button(
          inputId = sprintf("navbar_button-\%s", id),
          "Click me",
          auto = TRUE,
          flat = TRUE
        )
      )
    )
  )

  if (is.null(input[[sprintf("navbar_\%s", id)]])) {
    tagList(
      tags$script(
        sprintf("Shiny.setInputValue('navbar_\%s', 0)", id)
      ),
      nav
    )
  } else {
    nav
  }
}

page <- function(id, content) {
  layout(
    reactOutput(sprintf("nav_\%s", id)),
    content = content
  )
}

home <- page(
  id = "main",
  card(
    numeric_input(
      inputId = "obs",
      label = "Number of observations:",
      value = 500
    ),
    plotOutput("distPlot")
  )
)
other <- page(
  id = "other",
  tableOutput('table')
)

ui <- nextui_page(
  router_ui(
    route("main", home),
    route("other", other)
  )
)

server <- function(input, output, session) {
  observe(print(input$navbar))
  output$nav_main <- renderReact({
    create_navbar("main")
  })

  output$nav_other <- renderReact({
    create_navbar("other")
  })

  output$distPlot <- renderPlot({
    hist(rnorm(input$obs))
  })
  output$table <- renderTable(iris)

  router_server("main")
}

if (interactive() || is_testing()) shinyApp(ui, server)
}
\seealso{
See \url{https://nextui.org/docs/components/navbar}.
}
