
#' @title Config for particles.js
#'
#' @description See examples here \url{https://vincentgarreau.com/particles.js/}
#'
#' @param particles.number.value Number of particles
#' @param particles.number.density.enable Logical, enable density
#' @param particles.number.density.value_area Density of particles.
#' @param particles.color.value Color of particles
#' @param particles.shape.type Type of shape(s): \code{"circle"}, \code{"edge"}, \code{"triangle"}, \code{"polygon"}, \code{"star"}, \code{"image"}
#' @param particles.shape.stroke.width Stroke width of shapes
#' @param particles.shape.stroke.color Stroke color of shapes
#' @param particles.shape.polygon.nb_sides For \code{"polygon"}, number of shapes
#' @param particles.shape.image.src For \code{"image"}, path to image
#' @param particles.shape.image.width For \code{"image"}, width of image
#' @param particles.shape.image.height For \code{"image"}, height of image
#' @param particles.opacity.value Opacity value
#' @param particles.opacity.random Logical. Random opacity
#' @param particles.opacity.anim.enable Enable animation for particles opacity
#' @param particles.opacity.anim.speed Speed of animation
#' @param particles.opacity.anim.opacity_min Minimal opacity
#' @param particles.opacity.anim.sync Synchronize opacity animation between particles
#' @param particles.size.value Size of particles
#' @param particles.size.random Logical. Ramdom size
#' @param particles.size.anim.enable Enable animation for size
#' @param particles.size.anim.speed Speed animation
#' @param particles.size.anim.size_min Minimal size when animated
#' @param particles.size.anim.sync Synchronize size animation between particles
#' @param particles.line_linked.enable Logical. Links particles to each other
#' @param particles.line_linked.distance Distance between particles
#' @param particles.line_linked.color Link color
#' @param particles.line_linked.opacity Link opacity
#' @param particles.line_linked.width Link width
#' @param particles.move.enable Logical.Should particles move ?
#' @param particles.move.speed Speed of particles
#' @param particles.move.direction Direction of particles: \code{"none"}, \code{"top"}, \code{"top-right"},
#'  \code{"right"}, \code{"bottom-right"}, \code{"bottom"}, \code{"bottom-left"}, \code{"left"}, \code{"top-left"}
#' @param particles.move.random Logical radom movement
#' @param particles.move.straight Logical. Straight or not
#' @param particles.move.out_mode What does particles should do when reaching border of page ? \code{"out"} or \code{"bounce"}
#' @param particles.move.bounce Logical. Movement between particles
#' @param particles.move.attract.enable Logical
#' @param particles.move.attract.rotateX Numeric
#' @param particles.move.attract.rotateY Numeric
#' @param interactivity.detect_on On \code{"canvas"} or \code{"window"}
#' @param interactivity.events.onhover.enable Enable on hover with mouse
#' @param interactivity.events.onhover.mode What to do when mouse is hover: \code{"grab"}, \code{"bubble"}, \code{"repulse"}
#' @param interactivity.events.onclick.enable Enable on click with mouse
#' @param interactivity.events.onclick.mode What to do on click: \code{"push"} (add particles), \code{"remove"}, \code{"bubble"}, \code{"repulse"}
#' @param interactivity.events.resize Logical
#' @param interactivity.modes.grab.distance Grab particles within a distance
#' @param interactivity.modes.grab.line_linked.opacity Change opacity of links between particles grabbed
#' @param interactivity.modes.bubble.distance Transform particles to buble within a distance
#' @param interactivity.modes.bubble.size Size of bubles
#' @param interactivity.modes.bubble.duration Duration of effect
#' @param interactivity.modes.bubble.opacity Opacity of bubbles
#' @param interactivity.modes.bubble.speed Speed of bubbles
#' @param interactivity.modes.repulse.distance Distance to repulse particles
#' @param interactivity.modes.repulse.duration Duration of repulse
#' @param interactivity.modes.push.particles_nb Add how many new particles
#' @param interactivity.modes.remove.particles_nb Remove how many particles
#' @param retina_detect Logical
#'
#' @export
#'
#' @examples
#'
#' particles(particles_config(
#'   particles.color.value = "#DF0101",
#'   particles.shape.type = "star",
#'   particles.line_linked.color = "#DF0101"
#' ))
#'
particles_config <- function(particles.number.value = 80L,
                             particles.number.density.enable = TRUE,
                             particles.number.density.value_area = 800L,
                             particles.color.value = "#112446",
                             particles.shape.type = "circle",
                             particles.shape.stroke.width = 0L,
                             particles.shape.stroke.color = "#000000",
                             particles.shape.polygon.nb_sides = 5L,
                             particles.shape.image.src = "img/github.svg",
                             particles.shape.image.width = 100L,
                             particles.shape.image.height = 100L,
                             particles.opacity.value = 0.5,
                             particles.opacity.random = FALSE,
                             particles.opacity.anim.enable = FALSE,
                             particles.opacity.anim.speed = 1L,
                             particles.opacity.anim.opacity_min = 0.1,
                             particles.opacity.anim.sync = FALSE,
                             particles.size.value = 3L,
                             particles.size.random = TRUE,
                             particles.size.anim.enable = FALSE,
                             particles.size.anim.speed = 40L,
                             particles.size.anim.size_min = 0.1,
                             particles.size.anim.sync = FALSE,
                             particles.line_linked.enable = TRUE,
                             particles.line_linked.distance = 150L,
                             particles.line_linked.color = "#112446",
                             particles.line_linked.opacity = 0.4,
                             particles.line_linked.width = 1L,
                             particles.move.enable = TRUE,
                             particles.move.speed = 6L,
                             particles.move.direction = "none",
                             particles.move.random = FALSE,
                             particles.move.straight = FALSE,
                             particles.move.out_mode = "out",
                             particles.move.bounce = FALSE,
                             particles.move.attract.enable = FALSE,
                             particles.move.attract.rotateX = 600L,
                             particles.move.attract.rotateY = 1200L,
                             interactivity.detect_on = "canvas",
                             interactivity.events.onhover.enable = TRUE,
                             interactivity.events.onhover.mode = "repulse",
                             interactivity.events.onclick.enable = TRUE,
                             interactivity.events.onclick.mode = "push",
                             interactivity.events.resize = TRUE,
                             interactivity.modes.grab.distance = 400L,
                             interactivity.modes.grab.line_linked.opacity = 1L,
                             interactivity.modes.bubble.distance = 400L,
                             interactivity.modes.bubble.size = 40L,
                             interactivity.modes.bubble.duration = 2L,
                             interactivity.modes.bubble.opacity = 8L,
                             interactivity.modes.bubble.speed = 3L,
                             interactivity.modes.repulse.distance = 200L,
                             interactivity.modes.repulse.duration = 0.4,
                             interactivity.modes.push.particles_nb = 4L,
                             interactivity.modes.remove.particles_nb = 2L,
                             retina_detect = TRUE) {
  config <- list(
    particles = list(
      number = list(
        value = particles.number.value,
        density = list(
          enable = particles.number.density.enable,
          value_area = particles.number.density.value_area
        )
      ),
      color = list(
        value = particles.color.value
      ),
      shape = list(
        type = particles.shape.type,
        stroke = list(
          width = particles.shape.stroke.width,
          color = particles.shape.stroke.color
        ),
        polygon = list(
          nb_sides = particles.shape.polygon.nb_sides
        ),
        image = list(
          src = particles.shape.image.src,
          width = particles.shape.image.width,
          height = particles.shape.image.height
        )
      ),
      opacity = list(
        value = particles.opacity.value,
        random = particles.opacity.random,
        anim = list(
          enable = particles.opacity.anim.enable,
          speed = particles.opacity.anim.speed,
          opacity_min = particles.opacity.anim.opacity_min,
          sync = particles.opacity.anim.sync
        )
      ),
      size = list(
        value = particles.size.value,
        random = particles.size.random,
        anim = list(
          enable = particles.size.anim.enable,
          speed = particles.size.anim.speed,
          size_min = particles.size.anim.size_min,
          sync = particles.size.anim.sync
        )
      ),
      line_linked = list(
        enable = particles.line_linked.enable,
        distance = particles.line_linked.distance,
        color = particles.line_linked.color,
        opacity = particles.line_linked.opacity,
        width = particles.line_linked.width
      ),
      move = list(
        enable = particles.move.enable,
        speed = particles.move.speed,
        direction = particles.move.direction,
        random = particles.move.random,
        straight = particles.move.straight,
        out_mode = particles.move.out_mode,
        bounce = particles.move.bounce,
        attract = list(
          enable = particles.move.attract.enable,
          rotateX = particles.move.attract.rotateX,
          rotateY = particles.move.attract.rotateY
        )
      )
    ),
    interactivity = list(
      detect_on = interactivity.detect_on,
      events = list(
        onhover = list(
          enable = interactivity.events.onhover.enable,
          mode = interactivity.events.onhover.mode
        ),
        onclick = list(
          enable = interactivity.events.onclick.enable,
          mode = interactivity.events.onclick.mode
        ),
        resize = interactivity.events.resize
      )
    ),
    modes = list(
      grab = list(
        distance = interactivity.modes.grab.distance,
        line_linked = list(
          opacity = interactivity.modes.grab.line_linked.opacity
        )
      ),
      bubble = list(
        distance = interactivity.modes.bubble.distance,
        size = interactivity.modes.bubble.size,
        duration = interactivity.modes.bubble.duration,
        opacity = interactivity.modes.bubble.opacity,
        speed = interactivity.modes.bubble.speed
      ),
      repulse = list(
        distance = interactivity.modes.repulse.distance,
        duration = interactivity.modes.repulse.duration
      ),
      push = list(
        particles_nb = interactivity.modes.push.particles_nb
      ),
      remove = list(
        particles_nb = interactivity.modes.remove.particles_nb
      )
    ),
    retina_detect = retina_detect
  )
  class(config) <- c(class(config), "particles.config")
  config
}
