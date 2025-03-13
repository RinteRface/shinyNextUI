#' Action button
#'
#' This is a higher level wrapper of \link{action_button} to match
#' vanilla's Shiny syntax and parameters.
#'
#' @inheritParams shiny::actionButton
#' @param width Not used with NextUI but left for compatibility.
#' @export
#'
#' @example inst/examples/button/app.R
#' @seealso See \url{https://heroui.com/docs/components/button}
#' and \link{action_button} to get the list of possible parameters.
#' @rdname button
#' @return
#' Object with `shiny.tag` class suitable for use in the UI of a Shiny app.
#' The update functions return nothing (called for side effects).
actionButton <- function(inputId, label, icon = NULL, width = NULL, ...) {
  action_button(
    inputId,
    ...,
    children = label,
    startContent = icon,
    width = width
  )
}

#' Update an action button
#'
#' This is a higher level wrapper of \link{update_action_button} to match
#' vanilla's Shiny syntax and parameters.
#'
#' @inheritParams shiny::updateActionButton
#' @export
#'
#' @example inst/examples/button/app.R
#' @rdname button
updateActionButton <- function(
  session = getDefaultReactiveDomain(),
  inputId,
  label = NULL,
  icon = NULL
) {
  update_action_button(
    session,
    inputId,
    children = label,
    startContent = icon
  )
}
