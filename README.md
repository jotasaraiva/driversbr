
<!-- README.md is generated from README.Rmd. Please edit that file -->

# driversbr <a href="https://jotasaraiva.github.io/driversbr/"><img src="man/figures/logo.png" align="right" height="139" alt="driversbr website" /></a>

<!-- badges: start -->

[![R-CMD-check](https://github.com/jotasaraiva/driversbr/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/jotasaraiva/driversbr/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

This package is a data source that provides a licensed drivers dataset
from the Brazilian Ministry of Transport.

## Installation

You can install the development version of `driversbr` from Github:

``` r
# install.packages("devtools")
devtools::install_github("jotasaraiva/driversbr")
```

## Example

This is a basic example of the data provided:

``` r
library(driversbr)

utils::head(drivers, 10)
#>          regiao uf      sexo faixa_etaria  ano categoria_cnh condutores
#> 1  Centro-Oeste DF Masculino      18 a 21 2024   categoria_a        128
#> 2  Centro-Oeste DF Masculino      18 a 21 2024  categoria_ab      10399
#> 3  Centro-Oeste DF Masculino      18 a 21 2024  categoria_ac         14
#> 4  Centro-Oeste DF Masculino      18 a 21 2024  categoria_ad         40
#> 5  Centro-Oeste DF Masculino      18 a 21 2024  categoria_ae          1
#> 6  Centro-Oeste DF Masculino      18 a 21 2024   categoria_b      17559
#> 7  Centro-Oeste DF Masculino      18 a 21 2024   categoria_c          7
#> 8  Centro-Oeste DF Masculino      18 a 21 2024   categoria_d         13
#> 9  Centro-Oeste DF Masculino      18 a 21 2024   categoria_e          1
#> 10 Centro-Oeste DF Masculino      18 a 21 2024   categoria_x         NA
```

### Citation

This package can be cited as follows:

``` r
citation("driversbr")
#> To cite package 'driversbr' in publications use:
#> 
#>   Saraiva JPM, Santos PAB (2024). _driversbr: Licensed drivers data
#>   from the Brazilian Ministry of Transport_. R package version 0.2.0,
#>   https://jotasaraiva.github.io/driversbr/,
#>   <https://github.com/jotasaraiva/driversbr>.
#> 
#> A BibTeX entry for LaTeX users is
#> 
#>   @Manual{,
#>     title = {driversbr: Licensed drivers data from the Brazilian Ministry of Transport},
#>     author = {João Pedro Melani Saraiva and Pedro Augusto Borges Santos},
#>     year = {2024},
#>     note = {R package version 0.2.0, https://jotasaraiva.github.io/driversbr/},
#>     url = {https://github.com/jotasaraiva/driversbr},
#>   }
```
