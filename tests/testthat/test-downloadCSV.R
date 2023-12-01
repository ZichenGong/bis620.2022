library(testthat)
library(dplyr)
library(bis620.2023)

# Test for downloadCSV function
test_that("downloadCSV saves a file", {
  # Create a temporary file path
  temp_file <- tempfile(fileext = ".csv")

  # Create a temporary data frame
  temp_data <- data.frame(a = 1:3, b = letters[1:3])

  # Use the function to write the CSV
  downloadCSV(data = temp_data, filename = temp_file)

  # Check that the file exists
  expect_true(file.exists(temp_file))

  # Check that the file is not empty
  expect_true(file.info(temp_file)$size > 0)

  # Optionally, read back the CSV and compare it to the original data
  read_data <- read.csv(temp_file, stringsAsFactors = FALSE)
  expect_equal(read_data, temp_data)

  # Clean up the temporary file
  unlink(temp_file)
})
