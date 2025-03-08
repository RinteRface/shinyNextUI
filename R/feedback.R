#' @rdname drawer
#' @inherit component params return
#' @export
drawer <- component("Drawer")

#' @rdname drawer
#' @export
drawer_content <- component("DrawerContent")

#' @rdname drawer
#' @export
drawer_header <- component("DrawerHeader")

#' @rdname drawer
#' @export
drawer_body <- component("DrawerBody")

#' @rdname drawer
#' @export
drawer_footer <- component("DrawerFooter")

#' @rdname modal
#' @inherit component params return
#' @export
modal <- component("Modal")

#' @rdname modal
#' @export
modal_content <- component("ModalContent")

#' @rdname modal
#' @export
modal_header <- component("ModalHeader")

#' @rdname modal
#' @export
modal_body <- component("ModalBody")

#' @rdname modal
#' @export
modal_footer <- component("ModalFooter")

#' @rdname popover
#' @inherit component params return
#' @export
popover <- custom_component(
  "Popover",
  motion = JS(
    "{
    variants: {
      enter: {
        y: 0,
        opacity: 1,
        duration: 0.1,
        transition: {
          opacity: {
            duration: 0.15,
          },
        },
      },
      exit: {
        y: '10%',
        opacity: 0,
        duration: 0,
        transition: {
          opacity: {
            duration: 0.1,
          },
        },
      },
    },
  }"
  )
)

#' @rdname popover
#' @export
popover_trigger <- component("PopoverTrigger")

#' @rdname popover
#' @export
popover_content <- component("PopoverContent")

#' @rdname tooltip
#' @inherit component params return
#' @export
tooltip <- custom_component(
  "Tooltip",
  motion = JS(
    "{
      variants: {
        exit: {
          opacity: 0,
          transition: {
            duration: 0.1,
            ease: 'easeIn',
          },
        },
        enter: {
          opacity: 1,
          transition: {
            duration: 0.15,
            ease: 'easeOut',
          },
        },
      }
    }"
  )
)
