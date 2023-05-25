test_script <- "
  library(shinytest2)
  test_that(\"%s works as expected\", {
    # Don't run these tests on the CRAN build servers
    skip_on_cran()
    shiny_app_path <- system.file(\"examples/%s/app.R\", package = \"shinyNextUI\")
    app <- AppDriver$new(
      shiny_app_path,
      name = \"%s-app\",
      variant = platform_variant()
    )
    app$expect_values()
  })
"

init_test_component <- function(el) {
  if (!dir.exists("tests/testthat/")) usethis::use_testthat()
  file.create(sprintf("tests/testthat/test-%s.R", el))
  usethis::use_test(sprintf("%s", el))
  test_script <- sprintf(test_script, el, el, el)

  # Write to test file
  rstudioapi::insertText(test_script)
  ranges <- rstudioapi::document_range(c(1, 0), c(Inf, Inf))
  rstudioapi::setSelectionRanges(ranges)
  rstudioapi::executeCommand('reformatCode')
}
