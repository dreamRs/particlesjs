
#' Update Particles from the server in a Shiny app
#'
#' @param particles_id Id of the targeted element.
#' @param config A list generated with \code{\link{particles_config}}.
#' @param session the Shiny session object to which the chart belongs; usually the
#'   default value will suffice
#'
#' @export
#'
#' @importFrom shiny getDefaultReactiveDomain
#'
#' @examples
#' if (interactive()) {
#'
#' shinydemo("container")
#'
#' shinydemo("fullpage")
#'
#' }
update_particles <- function(particles_id, config, session = shiny::getDefaultReactiveDomain()) {
  session$sendCustomMessage(
    type = "update-particles",
    message = list(id = particles_id, config = config)
  )
}

