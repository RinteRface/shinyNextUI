library(shinytest2)
test_that("circular-progress works as expected", {
  # Don't run these tests on the CRAN build servers
  skip_on_cran()
  shiny_app_path <-
    system.file("examples/circular-progress/app.R", package = "shinyNextUI")
  app <- AppDriver$new(
    shiny_app_path,
    name = "circular-progress-app",
    variant = platform_variant()
  )
  app$expect_values()
})
test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})
