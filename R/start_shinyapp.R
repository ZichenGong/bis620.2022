

#' Launch the Shiny App
#'
#' This function starts the Shiny application contained in the bis620.2023 package.
#' @export
#' @examples
#' bis620.2023::launchMyApp()
launchMyApp <- function() {
  appDir <- system.file("shinyapp", package = "bis620.2023")
  if (appDir != "") {
    shiny::runApp(appDir)
  } else {
    stop("Shiny app not found in the package")
  }
}

