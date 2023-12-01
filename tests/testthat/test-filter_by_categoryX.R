
library(testthat)
library(dplyr)
library(bis620.2023)

# Sample data to use for testing
test_data <- tibble(
  X = c(-2, 0, 1, 2)
)

# Test that the function filters by the category "X < -1"
test_that("filterTrialsByCategory_of_X filters by 'X < -1' correctly", {
  expected <- test_data %>%
    filter(X < -1)

  result <- filterTrialsByCategory_of_X(test_data, "X < -1")[1]

  expect_equal(result, expected)
})

# Test that the function filters by the category "-1 <= X <= 1"
test_that("filterTrialsByCategory_of_X filters by '-1 <= X <= 1' correctly", {
  expected <- test_data %>%
    filter(X >= -1 & X <= 1)

  result <- filterTrialsByCategory_of_X(test_data, "-1 <= X <= 1")[1]

  expect_equal(result, expected)
})

# Test that the function filters by the category "X > 1"
test_that("filterTrialsByCategory_of_X filters by 'X > 1' correctly", {
  expected <- test_data %>%
    filter(X > 1)

  result <- filterTrialsByCategory_of_X(test_data, "X > 1")[1]

  expect_equal(result, expected)
})
