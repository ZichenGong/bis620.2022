

#' @title Print "Summarize Data"
#' @description Print This function calculates summary statistics for a data frame.
#'
#' @param data The data frame to summarize.
#' @export
summarizeData <- function(data) {

  summary_table <- data %>%
  dplyr::summarise(dplyr::across(dplyr::where(is.numeric), list(mean = mean, sd = sd, median = median, IQR = IQR)))
return(summary_table)
}


