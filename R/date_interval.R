

#' @title Print "Filter Trials by Date Interval"
#' @description Print Filters the clinical trial dataset
#' based on the provided start and end dates.
#' @param data The data frame containing the trial data with date-time fields.
#' @param start_date The start date-time for filtering in "YYYY-MM-DD HH:MM:SS" format.
#' @param end_date The end date-time for filtering in "YYYY-MM-DD HH:MM:SS" format.
#' @return A data frame with trials active within the chosen date-time range.
#' @export
filterTrialsByDate <- function(data, start_date, end_date) {
  # Convert the date-time strings to POSIXct objects
  start_date <- as.POSIXct(start_date, format = "%Y-%m-%d %H:%M:%S", tz = "UTC")
  end_date <- as.POSIXct(end_date, format = "%Y-%m-%d %H:%M:%S", tz = "UTC")

  # Check that start_date is before or equal to end_date
  if (start_date > end_date) {
    stop("start_date must be before or equal to end_date")
  }

  # Filter data based on the date-time range
  filtered_data <- data %>%
    dplyr::filter(time >= start_date & time <= end_date)

  return(filtered_data)
}


