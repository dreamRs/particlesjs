
#' Launch Shiny demo
#'
#' @param mode Example with \code{"fullpage"} particles and another one with particles inside a \code{"container"}.
#'
#' @export
#' @importFrom shiny runApp
#'
#' @examples
#' if (interactive()) {
#'
#' shinydemo("container")
#'
#' shinydemo("fullpage")
#'
#' }
shinydemo <- function(mode = c("container", "fullpage")) {
  mode <- match.arg(mode)
  shiny::runApp(
    appDir = system.file("shinydemo", mode, package = "shinyparticles"),
    display.mode = "showcase"
  )
}


