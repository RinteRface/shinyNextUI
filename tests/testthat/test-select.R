library(shinytest2)
test_that("select works as expected", {
  # Don't run these tests on the CRAN build servers
  skip_on_cran()
  shiny_app_path <-
    system.file("examples/select/app.R", package = "shinyNextUI")
  app <- AppDriver$new(
    shiny_app_path,
    name = "select-app",
    variant = platform_variant()
  )
  app$expect_values()
})
