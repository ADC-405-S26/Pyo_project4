# Scale survey responses by min-max

Convenience function to scale Likert-type responses to the 0-1 range.

## Usage

``` r
scale_responses(x)
```

## Arguments

- x:

  A numeric vector of responses

## Value

A numeric vector scaled to 0-1 range.

## Examples

``` r
x <- 1:5
scale_responses(x)
#> [1] 0.00 0.25 0.50 0.75 1.00
```
