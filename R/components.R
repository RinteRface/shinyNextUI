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

card_body <- customComponent("Card.Body", "
  const NextUI = jsmodule['@nextui-org/react'];
  return NextUI.Card.Body;
")

card_header <- customComponent("Card.Header", "
  const NextUI = jsmodule['@nextui-org/react'];
  return NextUI.Card.Header;
")

card_divider <- customComponent("Card.Divider", "
  const NextUI = jsmodule['@nextui-org/react'];
  return NextUI.Card.Divider;
")

card_footer <- customComponent("Card.Footer", "
  const NextUI = jsmodule['@nextui-org/react'];
  return NextUI.Card.Footer;
")

card_image <- customComponent("Card.Image", "
  const NextUI = jsmodule['@nextui-org/react'];
  return NextUI.Card.Image;
")

#' @rdname card
#' @inherit component params return
#' @export
card <- component("Card")

#' @inherit component params return
#' @export
text <- component("Text")

#' @inherit component params return
#' @export
modal <- component("Modal")
