library(testthat)
library(dplyr)
library(bis620.2023)

test_that("filter_by_specifiedvalue filters correctly", {
  # Create a sample dataset
  sample_data <- tibble::tibble(
    variable = c(10, 20, 30, 40, 50),
    other_col = c("A", "B", "C", "D", "E")
  )

  # Test the function
  result <- filter_by_specifiedvalue(sample_data, "variable", 35)

  # Check if the result is as expected
  expect_equal(nrow(result), 3) # Expect 3 rows where variable is less than 35
  expect_true(all(result$variable < 35)) # All values should be less than 35
})
