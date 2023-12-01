
test_that("summarizeData calculates summary statistics correctly", {
  # Create a temporary data frame
  temp_data <- data.frame(
    numeric_column = c(1, 2, 3, 4),
    factor_column = factor(c("a", "a", "b", "b"))
  )

  # Expected results
  # Expected results should match the naming pattern from the summarizeData function output
  expected <- data.frame(
    numeric_column_mean = mean(temp_data$numeric_column, na.rm = TRUE),
    numeric_column_sd = sd(temp_data$numeric_column, na.rm = TRUE),
    numeric_column_median = median(temp_data$numeric_column, na.rm = TRUE),
    numeric_column_IQR = IQR(temp_data$numeric_column, na.rm = TRUE)
  )


  # Use the function to summarize the data
  result <- summarizeData(temp_data)

  # Check if the results match the expected values
  expect_equal(result, expected, tolerance = 1e-8)
})
