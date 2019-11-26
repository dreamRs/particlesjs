# particlesjs

> Particles background for 'Shiny' applications and 'RMarkdown' documents with [particles.js](https://github.com/VincentGarreau/particles.js/)

<!-- badges: start -->
[![Travis build status](https://travis-ci.org/dreamRs/particlesjs.svg?branch=master)](https://travis-ci.org/dreamRs/particlesjs)
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
<!-- badges: end -->


## Installation

Install from GitHub with:

``` r
remotes::install_github("dreamRs/particlesjs")
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

