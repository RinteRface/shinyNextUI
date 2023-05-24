# Transform list of params into an itemize section
# for roxygen documentation.
#' @keywords internal
generate_details <- function(x) {
  res <- vapply(seq_along(x), function(i) {
    tmp <- x[[i]]
    tmp <- vapply(seq_len(nrow(tmp)), function(r) {
      attribute <- value_not_available(tmp[r, ]$Attribute)
      description <- value_not_available(tmp[r, ]$Description)
      type <- value_not_available(tmp[r, ]$Type)
      default <- value_not_available(tmp[r, ]$Default)

      sprintf(
        "#'  \\item \\bold{%s}. %s. Type: %s. Default: %s.",
        attribute,
        description,
        type,
        default
      )
    }, FUN.VALUE = character(1))
    paste0(
      sprintf("#' %s\n", names(x)[[i]]),
      "#' \\itemize{\n",
      paste(tmp, collapse = "\n"),
      "\n#' }"
    )
  }, FUN.VALUE = character(1))
  paste(res, collapse = "\n")
}

# Generate roxygen like template.
# el must be a list containing all the necessary metadata.
#' @keywords internal
generate_element_doc <- function(el) {
  tmp_doc <- apis[[el]]
  el_doc <- sprintf("
    #' %s
    #'
    #' @description
    #' %s
    #'
    #' @details
    %s
    #' @md
    #' @name %s
    #' @seealso See \\url{%s}.
    #' @export
    NULL
  ",
  tmp_doc$title,
  tmp_doc$description,
  generate_details(tmp_doc$params),
  tmp_doc$title,
  tmp_doc$url
  )
  write(gsub("  ", "", el_doc), file = "./R/doc.R", append = TRUE)
}

# Some API fields don't have values.
#' @keywords internal
value_not_available <- function(v) {
  if (is.na(v)) return("NA")
  if (v == "-") "NA" else v
}
