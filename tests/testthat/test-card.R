library(shinytest2)
test_that("card works as expected", {
  # Don't run these tests on the CRAN build servers
  skip_on_cran()
  # We use generalized wrapper to test component
  # props. Unfortunately people will have to
  # edit props and children manually since
  # this is not possible to generalize.
  shiny_app_path <-
    system.file("examples/card/app.R", package = "shinyNextUI")
  app <- AppDriver$new(shiny_app_path, name = "card-app")
  app$expect_values()
})
