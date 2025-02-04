# • What value does the following code yield?
# value returned is 11
# • How could you change fish_mass so the code yields 12 instead?
# change fish_mass to 6
# • How could you change the body of the function so the code yields 12?
# cahnge growth <- 3 + 0.2 * temp instead of growth <- 2 + 0.2 * temp
  fish_mass <- 5
  temperature <- 20
  fish_growth <- function(mass, temp) {
    growth <- 2 + 0.2 * temp
    mass <- mass + growth
    return(mass)
  }
  fish_growth(fish_mass, temperature)

# In your own words, why does running this code generate an error? There is an
# error because it only returned part of the body(volume), not all of it. It did
# not include "area"
    calc_volume <- function(height, width, depth) {
      area <- height * width
      volume <- area * depth
      return(volume)
    }
  vol <- calc_volume(3, 5, 1)
  area
