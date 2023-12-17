
#' @title Print "Filter Data by a specific value"
#' @description Print This function filters the dataset
#' based on a specified value on X.
#' @param data The data frame containing the dataset.
#' @param variable The name of the variable (as a string).
#' @param specified_value The specific value to filter by based on X.
#' @return A data frame with trials fulfilling the condition.
#' @export
filter_by_specifiedvalue <- function(data, variable, value) {
  # Ensure that dplyr is available
  if (!requireNamespace("dplyr", quietly = TRUE)) {
    stop("dplyr package is required but not available")
  }

  # Convert the variable name to a symbol and filter
  var_sym <- rlang::sym(variable)
  filtered_data <- dplyr::filter(data, !!var_sym < value)

  return(filtered_data)
}
