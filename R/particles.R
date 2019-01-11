
#' @title Particles background
#'
#' @description Add a beautiful interactive particles background
#'  in Shiny apps and rmarkdown documents.
#'
#' @param path_config Path to a config JSON for particles.js,
#'  visit \url{https://vincentgarreau.com/particles.js/} to create one.
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
#' library(shinyparticles)
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
particles <- function(path_config = NULL) {
  if (is.null(path_config)) {
    path_config <- system.file("particles/particlesjs-default.json", package = "shinyparticles")
  } else {
    path_config <- normalizePath(path = path_config, mustWork = TRUE)
  }
  createWidget(
    name = "particles",
    x = list(
      config = jsonlite::fromJSON(txt = path_config)
    ),
    width = NULL,
    height = 0,
    package = "shinyparticles",
    elementId = NULL
  )
}
