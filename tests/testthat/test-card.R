library(shinytest2)
test_that("card works as expected", {
  # Don't run these tests on the CRAN build servers
  skip_on_cran()

  # We use generalized wrapper to test component
  # props
  shiny_app <- run_app_test(
    el = card,
    props = list(variant = "bordered"),
    children = tagList(
      card_header("Card title"),
      card_divider(),
      card_body(h1("Card body")),
      card_divider(),
      card_footer("Card Footer")
    )
  )
  app <- AppDriver$new(shiny_app, name = "card-app")
  app$expect_values()
})
