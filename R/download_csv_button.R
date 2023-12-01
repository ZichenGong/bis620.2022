
#' @title Print "Download a data frame as CSV"
#' @description Print This function generates a download button
#' for saving a data frame as a CSV file.
#' @param data The data frame to be downloaded.
#' @param filename The name of the file to save.
#' @export
downloadCSV <- function(data, filename = "data.csv") {
  write.csv(data, filename, row.names = FALSE)
}

