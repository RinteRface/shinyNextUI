component <- function(name) {
  function(...) shiny.react::reactElement(
    module = "@nextui-org/react",
    name = name,
    props = shiny.react::asProps(...),
    deps = nextui_deps()
  )
}

custom_component <- function(name, js) {
  dependency <- htmltools::htmlDependency(
    name = name,
    version = "0", # Not used.
    src = c(href = ""), # Not used.
    head = paste0("
      <script>
        (jsmodule.custom_components ??= {})['", name, "'] = (() => {", js, "})();
      </script>
    ")
  )
  function(...) shiny.react::reactElement(
    module = "custom_components",
    name = name,
    props = shiny.react::asProps(...),
    deps = list(nextui_deps(), dependency)
  )
}

# #' @rdname text
# #' @inherit component params return
# #' @export
# text <- component("Text")

#' @rdname avatar
#' @inherit component params return
#' @export
avatar <- component("Avatar")

#' @rdname avatar
#' @inherit component params return
#' @export
avatar_group <- component("AvatarGroup")

#' @rdname badge
#' @inherit component params return
#' @export
badge <- component("Badge")

#' @rdname card
#' @inherit component params return
#' @export
card <- component("Card")

#' @rdname card
#' @inherit component params return
#' @export
card_body <- component("CardBody")

#' @rdname card
#' @inherit component params return
#' @export
card_header <- component("CardHeader")

#' @rdname card
#' @inherit component params return
#' @export
card_footer <- component("CardFooter")

#' @rdname chip
#' @inherit component params return
#' @export
chip <- component("Chip")

#' @rdname divider
#' @inherit component params return
#' @export
divider <- component("Divider")

#' @rdname image
#' @inherit component params return
#' @export
image <- component("Image")

#' @rdname link
#' @inherit component params return
#' @export
link <- component("Link")

#' @rdname progress
#' @inherit component params return
#' @export
progress <- component("Progress")

#' @rdname user
#' @inherit component params return
#' @export
user <- component("User")
