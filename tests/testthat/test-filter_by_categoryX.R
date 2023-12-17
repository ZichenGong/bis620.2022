
library(testthat)
library(dplyr)
library(bis620.2023)

test_that("filterTrialsByCategory_of_X filters correctly", {
  # Create a sample dataset
  sample_data <- tibble::tibble(
    SEX = c("Male", "Female", "Male", "Female"),
    AGE = c(30, 25, 40, 35),
    WEIGHT = c(70, 55, 80, 65)
  )

  # Test the function
  result <- filterTrialsByCategory_of_X(sample_data, "SEX", "Male")

  # Check if the result is as expected
  expect_equal(nrow(result), 2) # Expect 2 rows where SEX is "Male"
  expect_true(all(result$SEX == "Male")) # All SEX values should be "Male"
})


