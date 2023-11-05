library(shinytest2)
test_that("snippet works as expected", {
  # Don't run these tests on the CRAN build servers
  skip_on_cran()
  shiny_app_path <-
    system.file("examples/snippet/app.R", package = "shinyNextUI")
  app <- AppDriver$new(
    shiny_app_path,
    name = "snippet-app",
    variant = platform_variant()
  )
  app$expect_values()
})
