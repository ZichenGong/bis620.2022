

# Sample data to use for testing
test_data <- tibble(
  X = c(-2, -1, 0, 1, 2),
  Y = c(5, 4, 3, 2, 1)
)

test_that("filterTrialsBySpecified_value works correctly", {
  # Expected data after filtering
  expected_data <- tibble(
    X = c(0, 1, 2),
    Y = c(3, 2, 1)
  )

  # Test filtering by a specified value
  result_data <- filterTrialsBySpecified_value(
    data = test_data,
    specified_value = 0
  )

  # Check if the results match the expected values
  expect_equal(result_data, expected_data)
})
