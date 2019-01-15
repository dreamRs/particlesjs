
#  ------------------------------------------------------------------------
#
# Title : Config helper function
#    By : Victor
#  Date : 2019-01-15
#
#  ------------------------------------------------------------------------



# Packages ----------------------------------------------------------------

library(jsonlite)
library(rlist)




# Import default config ---------------------------------------------------

config <- jsonlite::fromJSON(txt = "inst/particles/particlesjs-default.json")
config_flat <- list.flatten(x = config)

config_flat <- lapply(config_flat, function(x) {deparse(x)})



# Fun ---------------------------------------------------------------------

cat(paste0(
  "particles_config <- function(",
  paste(sprintf("%s = %s", names(config_flat), unlist(config_flat, use.names = FALSE)), collapse = ",\n"),
  ") {}"
))

cat(paste0(
  "list(",
  paste(sprintf("%s = %s", names(config_flat), names(config_flat)), collapse = ",\n"),
  ")"
))
