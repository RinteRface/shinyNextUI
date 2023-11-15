library(shinytest2)
test_that("autocomplete works as expected", {
  # Don't run these tests on the CRAN build servers
  skip_on_cran()
  shiny_app_path <-
    system.file("examples/autocomplete/app.R", package = "shinyNextUI")
  app <- AppDriver$new(
    shiny_app_path,
    name = "autocomplete-app",
    variant = platform_variant()
  )
  app$expect_values()
})
