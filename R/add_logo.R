#' Return function to add a logo to a figure
#'
#' @param p ggplot object
#' @param x float indicating the x coordinate of the logo
#' @param y float indicating the  ycoordinate of the logo
#' @param w float indicating the width of the logo
#' @param u String indicating the units of the logo width: either inches or cm
#' @param logo String indicating which logo to use. There are two options: csiro, which is the usual CSIRO logo; data61, which is the CSIRO logo plus the Data61.
#'
#' @export
add_logo <- function(p, x = 0.07, y=0.03, w = 0.3 , u = 'inches', logo='csiro'){
  csiro_path <- system.file("data", package = "ggbluebadge")

  if (logo == 'csiro') {
    logo <- magick::image_read(file.path(csiro_path, "csiro_logo.png"))
  } else if(logo == 'csiro-dark') {
    logo <- magick::image_read(file.path(csiro_path, "csiro_dark_logo.png"))
  } else if(logo == 'data61') {
    logo <- magick::image_read(file.path(csiro_path, "data61_logo.png"))
  } else if(logo == 'data61-dark') {
    logo <- magick::image_read(file.path(csiro_path, "data61_dark_logo.png"))
  } else if(logo == 'csiro-other') {
    logo <- magick::image_read(file.path(csiro_path, "csiro_logo.png"))
  } else {
    stop('Logo name not found')
  }
  print(p)
  grid::grid.raster(logo, x = x, y = y, just = c('left', 'bottom'), width = unit(w, u))
}

