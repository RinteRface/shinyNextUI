library(shinytest2)
test_that("navbar works as expected", {
  # Don't run these tests on the CRAN build servers
  skip_on_cran()
  #shiny_app_path <- system.file(
  #  "examples/navbar/app.R",
  #  package = "shinyNextUI"
  #)
  #app <- AppDriver$new(
  #  seed = 4323,
  #  shiny_app_path,
  #  name = "navbar-app",
  #  variant = platform_variant()
  #)
  #app$expect_values()
})
