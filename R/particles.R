
#' @title Particles background
#'
#' @description Add a beautiful interactive particles background
#'  in Shiny apps and rmarkdown documents.
#'
#' @param config Path to a config JSON for particles.js or a list generated with \code{\link{particles_config}}.
#'  Visit \url{https://vincentgarreau.com/particles.js/} to play with available options and create a custom JSON.
#' @param target_id By default, a custom HTML tag is created to render the particles, you can target an existing
#'  element by providing its id, a special value is \code{"body"} to attach particles to the page body.
#' @param element_id Id for the widget. It will also used for the id of the HTML tag created suffixed by \code{"-particles"}.
#'  Not used if \code{target_id} is provided.
#' @param timeout Set a timeout before loading particles, maybe useful if you need initializing some HTML elements with percentage height.
#'
#'
#' @importFrom htmlwidgets createWidget
#' @importFrom jsonlite fromJSON
#'
#' @export
#'
#' @examples
#'
#' # See in RStudio viewer or browser
#' particles()
#'
#'
#' # Shiny usage: call particles in your UI
#'
#' if (interactive()) {
#'
#' library(shiny)
#' library(particlesjs)
#'
#'
#' ui <- fluidPage(
#'
#'   particles(),
#'
#'   headerPanel('Iris k-means clustering'),
#'
#'   sidebarLayout(
#'     sidebarPanel(
#'       selectInput('xcol', 'X Variable', names(iris)),
#'       selectInput('ycol', 'Y Variable', names(iris),
#'                   selected=names(iris)[[2]]),
#'       numericInput('clusters', 'Cluster count', 3,
#'                    min = 1, max = 9)
#'     ),
#'     mainPanel(
#'       plotOutput('plot1')
#'     )
#'   )
#' )
#'
#' server <- function(input, output, session) {
#'
#'   selectedData <- reactive({
#'     iris[, c(input$xcol, input$ycol)]
#'   })
#'
#'   clusters <- reactive({
#'     kmeans(selectedData(), input$clusters)
#'   })
#'
#'   output$plot1 <- renderPlot({
#'     palette(c("#E41A1C", "#377EB8", "#4DAF4A", "#984EA3",
#'               "#FF7F00", "#FFFF33", "#A65628", "#F781BF", "#999999"))
#'
#'     par(mar = c(5.1, 4.1, 0, 1))
#'     plot(selectedData(),
#'          col = clusters()$cluster,
#'          pch = 20, cex = 3)
#'     points(clusters()$centers, pch = 4, cex = 4, lwd = 4)
#'   })
#'
#'
#' }
#'
#' shinyApp(ui, server)
#'
#' }
#'
particles <- function(config = NULL, target_id = NULL, element_id = NULL, timeout = 0) {
  if (!is.list(config)) {
    if (is.null(config)) {
      config <- system.file("particles/particlesjs-default.json", package = "particlesjs")
    } else {
      config <- normalizePath(path = config, mustWork = TRUE)
    }
    config <- fromJSON(txt = config)
  }
  createWidget(
    name = "particles",
    x = list(config = config, target_id = target_id, timeout = timeout),
    width = NULL,
    height = 0,
    package = "particlesjs",
    elementId = element_id
  )
}

