
#' @title Print "Filter Dataset by self_identified category"
#' @description Print This function filters the dataset
#' based on self-identified category of X.
#'
#' @param data The data frame containing the data.
#' @param selected_category The category of X to filter by.
#' @return A data frame with trials matching the specified category.
#' @export
filterTrialsByCategory_of_X <- function(data, selected_category) {

  # Assuming 'accel' is your dataframe and 'X' is the column of interest
  data <- data %>%
    mutate(X_category = case_when(
      X < -1 ~ "X < -1",
      X >= -1 & X <= 1 ~ "-1 <= X <= 1",
      X > 1 ~ "X > 1",
    ))

  # Filter data based on the category of X
  filtered_data <- data %>%
    dplyr::filter(X_category == selected_category)

  return(filtered_data)
}

