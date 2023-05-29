library(shinytest2)
test_that("tooltip works as expected", {
  # Don't run these tests on the CRAN build servers
  skip_on_cran()
  shiny_app_path <- system.file(
    "examples/tooltip/app.R",
    package = "shinyNextUI"
  )
  app <- AppDriver$new(
    shiny_app_path,
    name = "tooltip-app",
    variant = platform_variant()
  )

  Sys.sleep(2)
  app$click(selector = ".nextui-badge")
  Sys.sleep(2)
  app$expect_values()
})
