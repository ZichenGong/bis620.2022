
#' @title Print "Filter Dataset by self_identified category"
#' @description Print This function filters the dataset
#' based on self-identified category of X.
#'
#' @param data The data frame containing the data.
#' @param variable The name of the variable (as a string)
#' @param selected_category The category of the variable to filter by.
#' @return A data frame with trials matching the specified category.
#' @export
filterTrialsByCategory_of_X <- function(data, variable, selected_category) {
    # Ensure that dplyr and rlang are available
    if (!requireNamespace("dplyr", quietly = TRUE)) {
      stop("dplyr package is required but not available")
    }
    if (!requireNamespace("rlang", quietly = TRUE)) {
      stop("rlang package is required but not available")
    }

    # Convert the variable name to a symbol
    var_sym <- rlang::sym(variable)

    # Filter data based on the category of X
    filtered_data <- data %>%
      dplyr::filter(!!var_sym == selected_category)

    return(filtered_data)
  }


