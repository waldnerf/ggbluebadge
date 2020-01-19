<!-- README.md is generated from README.Rmd. Please edit that file -->
ggbluebadge <img src="man/figures/logo.png" align="right" width="120" />
========================================================================

<!-- badges: start -->
<!-- badges: end -->
The goal of ggbluebadge is to …

Installation
------------

ggbluebadge lives on GitHub for now, so you need to use
[devtools](https://cran.r-project.org/web/packages/devtools/index.html)
(or similar) to install it:

``` r
# install devtoos if you don't have it
install.packages("devtools")

devtools::install_github("waldnerf/ggbluebadge)
```

Color Palette
-------------

The colour palette used in ggbluebadge matches the new visual identity
of the CSIRO.

From this list, I chose just a few that I thought worked well together
for colour and fill scales: main, blues, greys, primary, secondary, and
data61.

``` r
ggbluebadge::show_my_palette("main")
```

``` r
ggbluebadge::show_my_palette("blues")
```

``` r
ggbluebadge::show_my_palette("greys")
```

``` r
ggbluebadge::show_my_palette("primary")
```

``` r
ggbluebadge::show_my_palette("secondary")
```

``` r
ggbluebadge::show_my_palette("data61")
```

Setup theme and scales
----------------------

There are four variants of the theme-generating function
theme\_ggbluebadge().

theme\_pomological() sets the plot theme to be representative of the
paper and styling of the watercolors and includes a paper-colored
background,

theme\_pomological\_plain() has the same styling, just with a
transparent (or white) background,

theme\_pomological\_fancy() has the paper-colored background and
defaults to a fancy handwritten font (Homemade Apple).

For color and fill scales, ggpomological provides
scale\_color\_pomological() and scale\_fill\_pomological().

To do list:
-----------

1.  check palettes
2.  create palettes for gradients
3.  modify scale\_\* functions
4.  check fonts
5.  add logo data61

Example
-------

This is a basic example which shows you how to solve a common problem:

``` r
library(ggbluebadge)
## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub!
