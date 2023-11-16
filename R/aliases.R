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
#' @seealso See \url{https://nextui.org/docs/components/button}
#' and \link{action_button} to get the list of possible parameters.
#' @rdname button
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
