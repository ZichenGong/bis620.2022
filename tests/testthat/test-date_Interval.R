library(testthat)
library(dplyr)
library(bis620.2023)
# Sample data to use for testing
test_data <- tibble(
  time = as.POSIXct(c("2023-01-01 00:00:00", "2023-01-02 00:00:00", "2023-01-03 00:00:00"), tz = "UTC"),
  value = 1:3
)

test_that("filterTrialsByDate works correctly", {
  # Expected data after filtering
  expected_data <- tibble(
    time = as.POSIXct("2023-01-02 00:00:00", tz = "UTC"),
    value = 2
  )

  # Test filtering
  result_data <- filterTrialsByDate(
    data = test_data,
    start_date = "2023-01-02 00:00:00",
    end_date = "2023-01-02 23:59:59"
  )

  # Check if the results match the expected values
  expect_equal(result_data, expected_data)
})
