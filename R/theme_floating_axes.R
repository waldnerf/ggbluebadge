#' Define broken axis theme
#'
#' \code{theme_floating_axes} makes the included CSIRO font available in R. This process
#' only needs to be completed once.
#'
#'
#' @export
#'

theme_floating_axes <- function(...){

  r <- theme_bw() +
  theme(panel.border = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        ...)
  r
}

#' Define broken axis theme
#'
#' \code{add_floating_x} makes the included CSIRO font available in R. This process
#' only needs to be completed once.
#' @param vector with (min, max) values for floating x-axis
#'
#' @export
#'
add_floating_x <- function(x){
  b <- pretty(x)
  d <- data.frame(y=-Inf, yend=-Inf, x=min(b), xend=max(b))
  list(geom_segment(data=d, aes(x=x, y=y, xend=xend, yend=yend), inherit.aes=FALSE),
       scale_x_continuous(breaks=b))
}

#' Define broken axis theme
#'
#' \code{add_floating_y} makes the included CSIRO font available in R. This process
#' only needs to be completed once.
#'
#' @param vector with (min, max) values for floating y-axis
#'
#' @export
#'
add_floating_y <- function(x){
  b <- pretty(x)
  d <- data.frame(x=-Inf, xend=-Inf, y=min(b), yend=max(b))
  list(geom_segment(data=d, aes(x=x, y=y, xend=xend, yend=yend), inherit.aes=FALSE),
       scale_y_continuous(breaks=b))
}
