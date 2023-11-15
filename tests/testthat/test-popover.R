library(shinytest2)
test_that("popover works as expected", {
  # Don't run these tests on the CRAN build servers
  skip_on_cran()
  shiny_app_path <- system.file(
    "examples/popover/app.R",
    package = "shinyNextUI"
  )
  app <- AppDriver$new(
    shiny_app_path,
    name = "popover-app",
    variant = platform_variant()
  )

  Sys.sleep(2)
  app$click(selector = "button")
  Sys.sleep(2)
  app$expect_values()
})
