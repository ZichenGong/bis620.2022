

#' Plot 3DF Accelerometry Data Interactively
#'
#' @param x A tibble with columns time, X, Y, Z.
#' @param x_var The name of the column to use for the x-axis, defaults to "time".
#' @return A Plotly interactive plot object, faceted by channel, showing the acceleration or energy (in the Fourier domain) of the data.
#' @importFrom plotly ggplotly
#' @importFrom ggplot2 ggplot aes geom_line facet_wrap
#' @importFrom tidyr pivot_longer
#' @export
plot_accel_interactive <- function(x, x_var = "time") {
  # Transform the data to long format
  long_data <- tidyr::pivot_longer(
    x,
    cols = dplyr::matches("^(X|Y|Z)$"),
    names_to = "Channel",
    values_to = "Acceleration"
  )

  # Create a ggplot object with faceting
  p <- ggplot2::ggplot(long_data, ggplot2::aes_string(x = x_var, y = "Acceleration", color = "Channel")) +
    ggplot2::geom_line() +
    ggplot2::facet_wrap(~Channel)

  # Convert to an interactive plot
  interactive_p <- plotly::ggplotly(p)

  return(interactive_p)
}
