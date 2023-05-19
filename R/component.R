nextui_deps <- function() {
  htmltools::htmlDependency(
    name = "nextui",
    version = "1.0.0",
    package = "shinyNextUI",
    src = c(file = "nextui-1.0.0"),
    script = "nextui.js"
  )
}

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

#' @export
Button <- component("Button")

#' @export
Card <- component("Card")

#' @export
Text <- component("Text")

#' @export
Modal <- component("Modal")
