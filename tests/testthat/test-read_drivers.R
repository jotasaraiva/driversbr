test_that("duplicates", {
  data <- read_drivers()
  expect_equal(base::NROW(data[base::duplicated(data), ]), 0)
})
