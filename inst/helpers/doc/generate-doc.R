# Rerun this regularly to keep if up to date
library(rvest)

# Transform list of params into an itemize section
# for roxygen documentation.
#' @keywords internal
generate_details <- function(x) {
  res <- vapply(seq_along(x), function(i) {
    tmp <- x[[i]]
    tmp <- vapply(seq_len(nrow(tmp)), function(r) {
      attribute <- if (!("Attribute" %in% colnames(tmp[r, ]))) {
        value_not_available(tmp[r, ]$Name)
      } else {
        value_not_available(tmp[r, ]$Attribute)
      }
      description <- value_not_available(tmp[r, ]$Description)
      type <- value_not_available(tmp[r, ]$Type)
      default <- if (!("Default" %in% colnames(tmp[r, ]))) {
        "NA"
      } else {
        value_not_available(tmp[r, ]$Default)
      }

      sprintf(
        "#'  \\item \\bold{%s}. %s. Type: %s. Default: %s.",
        attribute,
        description,
        type,
        default
      )
    }, FUN.VALUE = character(1))
    paste0(
      sprintf("#' %s. %s\n", i, names(x)[[i]]),
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
generate_element_doc <- function(doc) {
  el_doc <- sprintf("
    #' %s
    #'
    #' @description
    #' %s
    #'
    #' @details
    #'
    %s
    #' @md
    #' @name %s
    #' @example inst/examples/%s/app.R
    #' @seealso See \\url{%s}.
    NULL",
    doc$title,
    doc$description,
    generate_details(doc$params),
    doc$title,
    doc$title,
    doc$url
  )
  write(gsub("  ", "", el_doc), file = "./R/doc.R", append = TRUE)
}

# Some API fields don't have values.
#' @keywords internal
value_not_available <- function(v) {
  if (is.na(v)) return("NA")
  if (v == "-") "NA" else v
}


# TO DO: find way to avoid hardcoding this
items <- list(
  # layout,
  layout = c(
    "spacer"
  ),
  # compo
  components = c(
    "accordion",
    "autocomplete",
    "avatar",
    "badge",
    "button",
    "card",
    "checkbox",
    #"checkbox-group",
    "circular-progress",
    "chip",
    "code",
    "divider",
    #"dropdown",
    "image",
    "input",
    "link",
    "listbox",
    "modal",
    "navbar",
    "pagination",
    "popover",
    "progress",
    #"radio",
    "select",
    "skeleton",
    "slider",
    "snippet",
    "switch",
    "tabs",
    "textarea",
    "tooltip",
    "user"
  )
)

get_element_api <- function(el, context) {
  url <- sprintf("https://nextui.org/docs/%s/%s", context, el)
  root <- read_html(url)
  params <- root |>
    # This CSS selector avoids to select unwanted tables
    # that would be located before the API tables.
    html_elements(css = "#api ~ * table") |>
    html_table()

  tmp <- root |>
    # This CSS selector avoids to select unwanted tables
    # that would be located before the API tables.
    html_elements(css = "#api ~ h3[id$='props'] a, #api ~ h3[id$='events'] a") |>
    html_text2()

  if (length(tmp) > length(params)) {
    names(params) <- tmp[seq_along(params)]
  }

  # TO DO: it is hard to give name to sub-tables
  # given that all elements don't have the same tables (
  # some don't have events ...)

  #details <- root |>
  #  html_elements(css = sprintf("h3:not(#apis):not(#%s-types):not([id$='props']) + .react-markdown > p", el)) |>
  #  html_text2()
  #names(details) <- root |>
  #  html_elements(css = sprintf("h3:not(#apis):not(#%s-types):not([id$='props']) a", el)) |>
  #  html_text2()

  description <- root |>
    html_element(css = sprintf("#%s + p", el)) |>
    html_text2()

  list(
    title = el,
    description = description,
    #details = details,
    params = params,
    url = url
  )
}

layout_apis <- lapply(items$layout, get_element_api, context = "layout")
names(layout_apis) <- items$layout

component_apis <- lapply(items$components, get_element_api, context = "components")
names(component_apis) <- items$components

apis <- c(layout_apis, component_apis)

# Create doc
pkgload::load_all()
lapply(names(apis), function(name) {
  print(name)
  generate_element_doc(apis[[name]])
})
devtools::document()
