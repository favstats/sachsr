
<!-- README.md is generated from README.Rmd. Please edit that file -->

# sachsr

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
<!-- badges: end -->

The goal of `sachsr` is to translate German into Saxonian (German
dialect). `sachsr` is built upon [this tool](http://parallelnetz.de/)
and simply provides an interface to it.

## Installation

You can install the development version of `sachsr` from GitHub with:

``` r
# install.packages("remotes")
remotes::install_github("favstats/sachsr")
```

## Example

This is a basic example:

``` r
library(sachsr)
## basic example code
```

``` r
get_saxonian("Was geht heute noch meine Kerle")
#> [1] "Was gehd heude noch meene Kerle"
```

``` r
get_saxonian("Ich würde gerne Maultaschen essen. Oder doch vielleicht Spätzle mit Soße.")
#> [1] "Ich würde gerne Mauldaschen essen. Oder doch vielleischd Sbädzle mid Soße."
```

``` r
get_saxonian("Widerrechtlich abgestellte Fahrzeuge werden kostenpflichtig abgeschleppt.")
#> [1] "Widerreschdlisch abgeschdellde Fahrzeuge werden gosdenbflischdig abgeschlebbd."
```
