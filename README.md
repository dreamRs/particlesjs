# shinyparticles

> Particles background for 'Shiny' applications and 'RMarkdown' documents with [particles.js](https://github.com/VincentGarreau/particles.js/)

[![Travis build status](https://travis-ci.org/pvictor/shinyparticles.svg?branch=master)](https://travis-ci.org/pvictor/shinyparticles)

## Installation

Install from GitHub with:

``` r
remotes::install_github("pvictor/shinyparticles")
```

## Example

Use `particles()` in the console, Shiny UI or a R markdown chunk:

``` r
# default configuration:
particles()

# with a custom config
particles("pat/to/custom-config.json")
```

Create a custom config JSON here : https://vincentgarreau.com/particles.js/

