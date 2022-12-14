test_that("uss_make_matches works", {

  # use the function
  italy <- uss_make_matches(engsoccerdata::italy, "Italy")

  expect_true(tibble::is_tibble(italy))
  expect_named(
    italy,
    c("country", "tier", "season", "date", "home", "visitor",
      "goals_home", "goals_visitor")
  )
  expect_identical(unique(italy$country), "Italy")

  # when you find a bug, add a test: 👋 from Ian
  expect_s3_class(italy$tier, "factor")
})
