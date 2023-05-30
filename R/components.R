component <- function(name) {
  function(...) shiny.react::reactElement(
    module = "@nextui-org/react",
    name = name,
    props = shiny.react::asProps(...),
    deps = nextui_deps()
  )
}

customComponent <- function(name, js) {
  dependency <- htmltools::htmlDependency(
    name = name,
    version = "0", # Not used.
    src = c(href = ""), # Not used.
    head = paste0("
      <script>
        (jsmodule.CustomComponents ??= {})['", name, "'] = (() => {", js, "})();
      </script>
    ")
  )
  function(...) shiny.react::reactElement(
    module = "CustomComponents",
    name = name,
    props = shiny.react::asProps(...),
    deps = list(nextui_deps(), dependency)
  )
}

#' @rdname card
#' @inherit component params return
#' @export
card <- component("Card")

#' @rdname card
#' @inherit component params return
#' @export
card_body <- customComponent("Card.Body", "
  const NextUI = jsmodule['@nextui-org/react'];
  return NextUI.Card.Body;
")

#' @rdname card
#' @inherit component params return
#' @export
card_header <- customComponent("Card.Header", "
  const NextUI = jsmodule['@nextui-org/react'];
  return NextUI.Card.Header;
")

#' @rdname card
#' @inherit component params return
#' @export
card_divider <- customComponent("Card.Divider", "
  const NextUI = jsmodule['@nextui-org/react'];
  return NextUI.Card.Divider;
")

#' @rdname card
#' @inherit component params return
#' @export
card_footer <- customComponent("Card.Footer", "
  const NextUI = jsmodule['@nextui-org/react'];
  return NextUI.Card.Footer;
")

#' @rdname card
#' @inherit component params return
#' @export
card_image <- customComponent("Card.Image", "
  const NextUI = jsmodule['@nextui-org/react'];
  return NextUI.Card.Image;
")

#' @rdname text
#' @inherit component params return
#' @export
text <- component("Text")

#' @rdname avatar
#' @inherit component params return
#' @export
avatar <- component("Avatar")

#' @rdname avatar
#' @inherit component params return
#' @export
avatar_group <- customComponent("Avatar.Group", "
  const NextUI = jsmodule['@nextui-org/react'];
  return NextUI.Avatar.Group;
")

#' @rdname badge
#' @inherit component params return
#' @export
badge <- component("Badge")

#' @rdname progress
#' @inherit component params return
#' @export
progress <- component("Progress")
