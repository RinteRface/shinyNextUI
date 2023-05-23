generate_details <- function(x) {
  res <- vapply(seq_along(x), function(i) {
    tmp <- x[[i]]
    tmp <- vapply(seq_len(nrow(tmp)), function(r) {
      attribute <- value_not_available(tmp[r, ]$Attribute)
      description <- value_not_available(tmp[r, ]$Description)
      type <- value_not_available(tmp[r, ]$Type)
      accepted <- value_not_available(tmp[r, ]$`Accepted values`)
      default <- value_not_available(tmp[r, ]$Default)

      sprintf(
        "#'  \\item \\bold{%s}. %s. Type: %s. Accepted values: %s. Default: %s.",
        attribute,
        description,
        type,
        accepted,
        default
      )
    }, FUN.VALUE = character(1))
    paste0(
      "#' \\itemize{\n",
      paste(tmp, collapse = "\n"),
      "\n#' }"
    )
  }, FUN.VALUE = character(1))
  paste(res, collapse = "\n")
}

value_not_available <- function(v) {
  if (v == "-") "NA" else v
}
