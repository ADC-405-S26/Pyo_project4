# Example psychology survey data

A small toy dataset representing Likert-type responses and keyword tags.

## Usage

``` r
data(survey_demo)
```

## Format

A data frame with 10 rows and 4 variables:

- id:

  Participant ID

- satisfaction:

  Satisfaction rating (1-5 Likert)

- stress:

  Stress rating (1-5 Likert)

- tags:

  Comma-separated keywords from open-ended responses

## Examples

``` r
data(survey_demo)
head(survey_demo)
#> # A tibble: 6 × 4
#>      id satisfaction stress tags                   
#>   <int>        <dbl>  <dbl> <chr>                  
#> 1     1            1      4 anxiety, depression    
#> 2     2            3      3 stress, fatigue        
#> 3     3            4      2 happiness, satisfaction
#> 4     4            5      5 anxiety                
#> 5     5            2      4 fatigue, stress        
#> 6     6            3      3 lethargy               
```
