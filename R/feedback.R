#' @rdname modal
#' @inherit component params return
#' @export
modal <- component("Modal")

#' @rdname modal
#' @inherit component params return
#' @export
modal_header <- customComponent("Modal.Header", "
  const NextUI = jsmodule['@nextui-org/react'];
  return NextUI.Modal.Header;
")

#' @rdname modal
#' @inherit component params return
#' @export
modal_body <- customComponent("Modal.Body", "
  const NextUI = jsmodule['@nextui-org/react'];
  return NextUI.Modal.Body;
")

#' @rdname modal
#' @inherit component params return
#' @export
modal_footer <- customComponent("Modal.Footer", "
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
popover_trigger <- customComponent("Popover.Trigger", "
  const NextUI = jsmodule['@nextui-org/react'];
  return NextUI.Popover.Trigger;
")

#' @rdname popover
#' @inherit component params return
#' @export
popover_content <- customComponent("Popover.Content", "
  const NextUI = jsmodule['@nextui-org/react'];
  return NextUI.Popover.Content;
")

#' @rdname tooltip
#' @inherit component params return
#' @export
tooltip <- component("Tooltip")
