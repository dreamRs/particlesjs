
#' @title Particles background
#'
#' @description Add a beautiful interactive particles background
#'  in Shiny apps and rmarkdown documents.
#'
#' @param path_config Path to a config JSON for particles.js,
#'  visit \url{https://vincentgarreau.com/particles.js/} to create one.
#'
#' @importFrom htmlwidgets createWidget
#' @importFrom htmltools htmlDependency
#'
#' @export
particles <- function(path_config = NULL) {
  if (is.null(path_config)) {
    config <- htmlDependency(
      name = 'particles-config',
      version = '0.1.0',
      src = system.file('particles', package = 'shinyparticles'),
      attachment = list("config-json" = "particlesjs-default.json")
    )
  } else {
    path_config <- normalizePath(path = path_config, mustWork = TRUE)
    config <- htmlDependency(
      name = 'particles-config',
      version = '0.1.0',
      src = dirname(path_config),
      attachment = list("config-json" = basename(path_config))
    )
  }
  createWidget(
    name = 'particles',
    x = list(),
    width = NULL,
    height = 0,
    package = 'shinyparticles',
    dependencies = config,
    elementId = NULL
  )
}
