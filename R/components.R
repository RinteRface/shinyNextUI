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
#' @export
card_body <- component("CardBody")

#' @rdname card
#' @export
card_header <- component("CardHeader")

#' @rdname card
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

#' @rdname skeleton
#' @inherit component params return
#' @export
skeleton <- component("Skeleton")

#' @rdname snippet
#' @inherit component params return
#' @export
snippet <- component("Snippet")

#' @rdname table
#' @inherit component params return
#' @keywords internal
.table <- component("Table")

#' @rdname table
#' @export
table_header <- component("TableHeader")

#' @rdname table
#' @export
table_body <- component("TableBody")

#' @rdname table
#' @export
table_col <- component("TableColumn")

#' @rdname table
#' @export
table_row <- component("TableRow")

#' @rdname table
#' @export
table_cell <-component("TableCell")

#' Table widget
#'
#' @rdname table
#' @param data Data to render.
#' @export
table <- function(data = NULL, ...) {
  cols <- colnames(data)

  if (is.null(data) || nrow(data) == 0) {
    body <- table_body(
      emptyContent = chip("No data :( ...", color = "danger"),
      JS("[]")
    )
  } else {
    body <- table_body(
      lapply(seq_len(nrow(data)), function(i) {
        table_row(
          key = i,
          lapply(seq_along(data[i, ]), function(j) {
            table_cell(data[i, j])
          })
        )
      })
    )
  }

  .table(
    ...,
    label = "My Table",
    table_header(lapply(cols, table_col)),
    body
  )
}

#' @rdname user
#' @inherit component params return
#' @export
user <- component("User")
