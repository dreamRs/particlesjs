
#' @title Particles background
#'
#' @description Add a beautiful interactive particles background in Shiny apps and rmarkdown documents.
#'
#'
#' @importFrom htmlwidgets createWidget
#'
#' @export
particles <- function() {
  htmlwidgets::createWidget(
    name = 'particles',
    x = list(),
    width = NULL,
    height = 0,
    package = 'shinyparticles',
    elementId = NULL
  )
}
