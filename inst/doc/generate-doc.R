# Rerun this regularly to keep if up to date
library(rvest)

# TO DO: find way to avoid hardcoding this
items <- list(
  # layout,
  layout = c(
    "container",
    "grid",
    "spacer"
  ),
  # compo
  components = c(
    #"avatar",
    "button",
    #"button-group",
    "card",
    #"pagination",
    #"table",
    #"collapse",
    #"navbar",
    #"badge",
    "input",
    # "autocomplete",
    #"textarea",
    #"checkbox",
    #"checkbox-group",
    #"radio",
    #"popover",
    #"tooltip",
    #"dropdown",
    #"progress",
    ## "select",
    "modal",
    #"loading",
    "switch",
    "text"#,
    #"link",
    #"user",
    #"image"
  )
)

get_element_api <- function(el, context) {
  url <- sprintf("https://nextui.org/docs/%s/%s", context, el)
  root <- read_html(url)
  params <- root |>
    # This CSS selector avoids to select unwanted tables
    # that would be located before the API tables.
    html_elements(css = "#apis ~ * table") |>
    html_table()

  names(params) <- root |>
    # This CSS selector avoids to select unwanted tables
    # that would be located before the API tables.
    html_elements(css = "#apis ~ h4[id$='props'] a, #apis ~ h4[id$='events'] a") |>
    html_text2()

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


pkgload::load_all()
lapply(names(apis), function(name) {
  print(name)
  generate_element_doc(name)
})
devtools::document()
