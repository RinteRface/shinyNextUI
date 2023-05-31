#' @rdname modal
#' @inherit component params return
#' @export
modal <- component("Modal")

#' @rdname modal
#' @inherit component params return
#' @export
modal_header <- custom_component("Modal.Header", "
  const NextUI = jsmodule['@nextui-org/react'];
  return NextUI.Modal.Header;
")

#' @rdname modal
#' @inherit component params return
#' @export
modal_body <- custom_component("Modal.Body", "
  const NextUI = jsmodule['@nextui-org/react'];
  return NextUI.Modal.Body;
")

#' @rdname modal
#' @inherit component params return
#' @export
modal_footer <- custom_component("Modal.Footer", "
  const NextUI = jsmodule['@nextui-org/react'];
  return NextUI.Modal.Footer;
")

#' @rdname popover
#' @inherit component params return
#' @export
popover <- component("Popover")

#' @rdname popover
#' @inherit component params return
#' @export
popover_trigger <- custom_component("Popover.Trigger", "
  const NextUI = jsmodule['@nextui-org/react'];
  return NextUI.Popover.Trigger;
")

#' @rdname popover
#' @inherit component params return
#' @export
popover_content <- custom_component("Popover.Content", "
  const NextUI = jsmodule['@nextui-org/react'];
  return NextUI.Popover.Content;
")

#' @rdname tooltip
#' @inherit component params return
#' @export
tooltip <- component("Tooltip")
