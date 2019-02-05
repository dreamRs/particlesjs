
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
    update_particles("particles-target", config_r$x)
  })

}
