library(shiny)
library(shinyparticles)

ui <- fluidPage(
  tags$div(
    style = "text-align: center;padding-top: 150px;",
    tags$h1("Particles Demo"),
    tags$h4("Update config with controls below")
  ),
  particles(element_id = "myid"),
  fluidRow(
    column(
      width = 3,
      sliderInput(
        inputId = "n",
        label = "Number of particles",
        min = 40, max = 400, value = 200
      ),
      radioButtons(
        inputId = "shape",
        label = "Shape:",
        choices = c("circle", "triangle", "polygon", "star")
      )
    ),
    column(
      width = 3,
      sliderInput(
        inputId = "size",
        label = "Size of particles",
        min = 1, max = 15, value = 1
      ),
      sliderInput(
        inputId = "speed",
        label = "Speed of particles",
        min = 1, max = 50, value = 6
      )
    ),
    column(
      width = 3,
      checkboxInput(
        inputId = "links",
        label = "Links",
        value = TRUE
      ),
      sliderInput(
        inputId = "link_width",
        label = "Link width",
        min = 0.1, max = 3, value = 1
      ),
      radioButtons(
        inputId = "direction",
        label = "Particles direction:",
        choices = c("none", "top", "top-right","right", "bottom-right", "bottom", "bottom-left", "left", "top-left")
      )
    ),
    column(
      width = 3,
      radioButtons(
        inputId = "onhover",
        label = "On hover:",
        choices = c("repulse", "grab", "bubble")
      ),
      radioButtons(
        inputId = "onclick",
        label = "On click:",
        choices = c("push", "remove", "bubble", "repulse")
      )
    )
  )
)

server <- function(input, output, session) {

  config_r <- reactiveValues(x = particles_config())

  observeEvent(input$n, {
    config_r$x$particles$number$value <- input$n
  })

  observeEvent(input$shape, {
    config_r$x$particles$shape$type <- input$shape
  })

  observeEvent(input$size, {
    config_r$x$particles$size$value <- input$size
  })

  observeEvent(input$speed, {
    config_r$x$particles$move$speed <- input$speed
  })

  observeEvent(input$links, {
    config_r$x$particles$line_linked$enable <- input$links
  })

  observeEvent(input$link_width, {
    config_r$x$particles$line_linked$width <- input$link_width
  })

  observeEvent(input$direction, {
    config_r$x$particles$move$direction <- input$direction
  })

  observeEvent(input$onhover, {
    config_r$x$interactivity$events$onhover$mode <- input$onhover
  })

  observeEvent(input$onclick, {
    config_r$x$interactivity$events$onclick$mode <- input$onclick
  })

  observe({
    update_particles("myid-particles", config_r$x)
  })

}

shinyApp(ui, server)
