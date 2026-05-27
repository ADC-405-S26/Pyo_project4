# A minimal APA-style theme for ggplot2

Provides a simple, clean theme suitable for psychology papers and
slides.

## Usage

``` r
theme_apa(base_size = 11, base_family = "")
```

## Arguments

- base_size:

  base font size, given in pts.

- base_family:

  base font family

## Value

A ggplot2 theme object.

## Examples

``` r
library(ggplot2)
p <- ggplot(mtcars, aes(wt, mpg)) + geom_point()
p + theme_apa()

```
