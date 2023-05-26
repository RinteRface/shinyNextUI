library(shinytest2)
test_that("button works as expected", {
  # Don't run these tests on the CRAN build servers
  skip_on_cran()
  shiny_app_path <- system.file(
    "examples/button/app.R",
    package = "shinyNextUI"
  )
  app <- AppDriver$new(
    shiny_app_path,
    name = "button-app",
    variant = platform_variant()
  )

  # Give time for the UI to appear (for CICD)
  Sys.sleep(3)
  # Because shiny.react
  # does not use input bindings to create
  # shiny input but Shiny.setInputValue,
  # we have to use either the selector parameter
  # of app$click or use app$run_js ...
  app$click(selector = "#clicked")
  #app$run_js("$('#clicked').click();")

  # So the button animation does not screw up the snapshot
  Sys.sleep(3)
  app$expect_values()
})
