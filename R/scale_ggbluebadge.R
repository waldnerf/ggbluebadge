

# CSIRO main ----
csiro_colours <- c(
  `midday blue`   = "#0ab0de",
  `midnight blue` = "#041b2b",
  `steel`         = "#6e6b6c",
  `mist`          = "#dcdcdc",
  `blueberry`     = "#2a3c9a",
  `plum`          = "#72177a",
  `ocean`         = "#1161a6",
  `teal`          = "#007582",
  `mint`          = "#007d61",
  `fuschia`       = "#ee2ba0",
  `orange`        = "#f46f1a",
  `gold`          = "#fab41d",
  `lavender`      = "#8fa1da",
  `light teal`    = "#7ad3d0",
  `forest`        = "#6ec72d",
  `light mint`    = "#73ce97",
  `black`         = "#000000"
)

#' Function to extract csiro colors as hex codes
#'
#' @param ... Character names of csiro_colors
#'
#' @export
csiro_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (csiro_colours)

  csiro_colours[cols]
}



#CSIRO Palettes ----
csiro_palettes <- list(
  main  = csiro_cols("midday blue",
                     "midnight blue",
                     "steel",
                     "mist"),

  blues <- csiro_cols("midday blue",
                      "midnight blue"),

  greys  = csiro_cols('black',
                       "steel",
                       "mist"),

  primary = csiro_cols("blueberry",
                       "mint",
                       "plum",
                       "teal",
                       "ocean"
                       ),

  secondary = csiro_cols("fuschia",
                         "light teal",
                         "orange",
                         "forest",
                         "gold",
                         "light mint",
                         "lavender"
                         ),

  data61 = csiro_cols("mint",
                      "light mint",
                      "steel",
                      "mist" )
)


#' Return function to interpolate a csiro color palette
#'
#' @param palette Character name of palette in csiro_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments to pass to colorRampPalette()
#'
#' @export
csiro_pal <- function(palette = "main", reverse = FALSE, ...) {
  pal <- csiro_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)
}


#' Color scale constructor for CSIRO colors
#'
#' @param palette Character name of palette in drsimonj_palettes
#' @param discrete Boolean indicating whether color aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale() or
#'            scale_color_gradientn(), used respectively when discrete is TRUE or FALSE
#' @export
scale_color_csiro <- function(palette = "main", reverse = FALSE, ...) {
  pal <- csiro_pal(palette = palette, reverse = reverse)
  ggplot2::discrete_scale("colour", paste0("csiro_", palette), palette = pal, ...)
}

#' @rdname scale_color_csiro
#' @export
scale_colour_csiro <- scale_color_csiro


#' Fill scale constructor for csiro colors
#'
#' @param palette Character name of palette in drsimonj_palettes
#' @param discrete Boolean indicating whether color aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale() or
#'            scale_fill_gradientn(), used respectively when discrete is TRUE or FALSE
#' @export
scale_fill_csiro <- function(palette = "main", reverse = FALSE, ...) {
  pal <- csiro_pal(palette = palette, reverse = reverse)
  ggplot2::discrete_scale("fill", paste0("csiro_", palette), palette = pal, ...)
}


#' Show available colours
#'
#' @export
show_csiro_colours <- function(){
  my_dataframe <- data.frame(names=names(csiro_colours), colours=csiro_colours, size="", stringsAsFactors=F)
  desired_order <- c("midday blue", "midnight blue", "mist", "steel", "black", "blueberry", "ocean",
                     "teal", "mint", "forest", "light mint", "light teal", "lavender", "gold", "orange",
                    "fuschia", "plum")
  #reorder the levels
  my_dataframe$names <- factor( as.character(my_dataframe$names), levels=desired_order )
  # Re-order the data.frame
  my_dataframe <- my_dataframe[order(my_dataframe$names),]
  ggplot2::ggplot(data=my_dataframe, aes(x=names,y=size, fill=colours))+
    ggplot2::geom_tile(colour="white") +
    ggplot2::scale_fill_identity() +
    ggplot2::scale_y_discrete(expand = c(0, 0)) +
    ggplot2::theme_minimal() +
    ggplot2::theme(axis.text.x = element_text(angle = 90)) +
    ggplot2::ylab('')+ ggplot2::xlab('')
}





#' Display palette of interest
#'
#' @param palette Character name of palette in drsimonj_palettes
#' @export
show_my_palette <- function(palette="main"){
  scales::show_col(unlist(csiro_palettes[palette]))
}
