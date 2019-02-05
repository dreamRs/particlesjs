
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
