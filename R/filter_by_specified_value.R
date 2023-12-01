
#' @title Print "Filter Data by a specific value"
#' @description Print This function filters the dataset
#' based on a specified value on X.
#' @param data The data frame containing the dataset.
#' @param specified_value The specific value to filter by based on X.
#' @return A data frame with trials fulfilling the condition.
#' @export
filterTrialsBySpecified_value <- function(data, specified_value) {
  # Filter data based on the specific value
  filtered_data <- data %>%
    dplyr::filter(X >= specified_value)

  return(filtered_data)
}
