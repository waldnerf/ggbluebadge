<!-- README.md is generated from README.Rmd. Please edit that file -->
``` r
library(ggplot2)
library(magick)
#> Linking to ImageMagick 6.9.9.14
#> Enabled features: cairo, freetype, fftw, ghostscript, lcms, pango, rsvg, webp
#> Disabled features: fontconfig, x11
library(grid)
library(ggbluebadge)

ggplot(mtcars, aes(wt, mpg, color = as.factor(cyl) )) +
    geom_point() +
    scale_color_csiro(palette="main") +
    labs(
        x = "Weight (tons)",
        y = "Fuel Efficiency (mpg)",
        title = "Just Buy a Convertible",
        subtitle = "Lighter cars are more efficient. Shave off some weight by\nditching the roof, and drive your savings to the bank!",
        caption = "Source: Motor Trend"
    ) +
    theme_csiro_dark()
```

![](/figures/V-unnamed-chunk-2-1.png)

``` r



ggplot(mtcars, aes(wt, mpg, color = as.factor(cyl) )) +
    geom_point() +
    scale_color_csiro(palette="main") +
    labs(
        x = "Weight (tons)",
        y = "Fuel Efficiency (mpg)",
        title = "Just Buy a Convertible",
        subtitle = "Lighter cars are more efficient. Shave off some weight by\nditching the roof, and drive your savings to the bank!",
        caption = "Source: Motor Trend"
    ) +
  theme_floating_axes() +
  add_floating_x(range(mtcars$wt)) + 
  add_floating_y(range(mtcars$mpg))
```

![](/figures/V-unnamed-chunk-2-2.png)

``` r


ggplot(iris, aes(Sepal.Width, Sepal.Length, color = Sepal.Length)) +
  geom_point(size = 4, alpha = .6) +
  scale_color_gradient2(low = csiro_cols("midday blue"), mid = csiro_cols("gold"), high = csiro_cols("mint"),midpoint=6) +
  theme_csiro()
```

![](/figures/V-unnamed-chunk-2-3.png)

Now, let’s add the CSIRO logo to the figure.

``` r

p <- ggplot(mtcars, aes(wt, mpg, color = as.factor(cyl) )) +
    geom_point() +
    scale_color_csiro(palette="main") +
    labs(
        x = "Weight (tons)",
        y = "Fuel Efficiency (mpg)",
        title = "Just Buy a Convertible",
        subtitle = "Lighter cars are more efficient. Shave off some weight by\nditching the roof, and drive your savings to the bank!",
        caption = "Source: Motor Trend"
    ) +
    theme_csiro()
add_logo(p, logo='csiro')
```

![](/figures/V-unnamed-chunk-3-1.png)
