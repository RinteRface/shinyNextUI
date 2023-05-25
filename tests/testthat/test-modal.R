library(shinytest2)
test_that("modal works as expected", {
  # Don't run these tests on the CRAN build servers
  skip_on_cran()
  shiny_app_path <- system.file(
    "examples/modal/app.R",
    package = "shinyNextUI"
  )
  app <- AppDriver$new(
    shiny_app_path,
    name = "modal-app",
    variant = platform_variant()
  )
  # Modal is closed
  expect_false(app$get_value(export = "modal_state"))
  app$click(selector = "#show_modal")
  # Modal is opened
  expect_true(app$get_value(export = "modal_state"))
})
