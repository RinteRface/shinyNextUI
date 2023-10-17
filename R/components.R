component <- function(name) {
  function(...) shiny.react::reactElement(
    module = "@nextui-org/react",
    name = name,
    props = shiny.react::asProps(...),
    deps = nextui_deps()
  )
}

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

#' @rdname button
#' @inherit component params return
#' @export
button <- component("Button")

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

#' @rdname code
#' @inherit component params return
#' @export
code_block <- component("Code")

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
