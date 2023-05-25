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
