library(shinytest2)
test_that("collapse works as expected", {
  # Don't run these tests on the CRAN build servers
  skip_on_cran()
  shiny_app_path <- system.file(
    "examples/collapse/app.R",
    package = "shinyNextUI"
  )
  app <- AppDriver$new(
    shiny_app_path,
    name = "collapse-app",
    variant = platform_variant()
  )
  app$expect_values()
})
