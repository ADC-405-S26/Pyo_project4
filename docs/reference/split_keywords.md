# Split comma-separated survey keywords

Useful for open-ended responses such as "anxiety,depression".

## Usage

``` r
split_keywords(x, sep = ",")
```

## Arguments

- x:

  A character vector with one element.

- sep:

  A single character to split on, default is ",".

## Value

A character vector of trimmed keywords.

## Examples

``` r
split_keywords("anxiety, depression, stress")
#> [[1]]
#> [1] "anxiety"    "depression" "stress"    
#> 
split_keywords(c("happiness, satisfaction", "fatigue, lethargy"))
#> [[1]]
#> [1] "happiness"    "satisfaction"
#> 
#> [[2]]
#> [1] "fatigue"  "lethargy"
#> 
```
