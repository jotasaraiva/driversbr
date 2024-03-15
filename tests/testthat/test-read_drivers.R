test_that("duplicates", {
  data <- drivers
  expect_equal(base::NROW(data[base::duplicated(data), ]), 0)
})
