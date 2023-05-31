library(shinytest2)
test_that("textarea works as expected", {
  # Don't run these tests on the CRAN build servers
  skip_on_cran()
  shiny_app_path <- system.file(
    "examples/textarea/app.R",
    package = "shinyNextUI"
  )
  app <- AppDriver$new(
    shiny_app_path,
    name = "textarea-app",
    variant = platform_variant()
  )
  app$expect_values()
})
