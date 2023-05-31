library(shinytest2)
test_that("dropdpwn works as expected", {
  # Don't run these tests on the CRAN build servers
  skip_on_cran()
  shiny_app_path <- system.file(
    "examples/dropdown/app.R",
    package = "shinyNextUI"
  )
  app <- AppDriver$new(
    shiny_app_path,
    name = "dropdown-app",
    variant = platform_variant()
  )
  app$expect_values()
})
