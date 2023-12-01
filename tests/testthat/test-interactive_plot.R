
library(testthat)
library(plotly)
library(ggplot2)
library(tidyr)
library(dplyr)

test_data <- tibble(
  time = seq.POSIXt(from = Sys.time(), by = "min", length.out = 100),
  X = rnorm(100),
  Y = rnorm(100),
  Z = rnorm(100)
)

test_that("plot_accel_interactive creates a Plotly object", {
  p <- plot_accel_interactive(test_data)
  expect_s3_class(p, "plotly")
})

test_that("plot_accel_interactive has correct structure", {
  p <- plot_accel_interactive(test_data)
  expect_true("x" %in% names(p$x$data[[1]]))
  expect_true("y" %in% names(p$x$data[[1]]))
  expect_equal(length(p$x$data), 3)  # Expecting 3 traces for X, Y, and Z
})

