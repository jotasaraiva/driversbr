
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
#> 1  Centro-Oeste DF Masculino      18 a 21 2023   categoria_a        127
#> 2  Centro-Oeste DF Masculino      18 a 21 2023  categoria_ab      10657
#> 3  Centro-Oeste DF Masculino      18 a 21 2023  categoria_ac          8
#> 4  Centro-Oeste DF Masculino      18 a 21 2023  categoria_ad         31
#> 5  Centro-Oeste DF Masculino      18 a 21 2023  categoria_ae          2
#> 6  Centro-Oeste DF Masculino      18 a 21 2023   categoria_b      16875
#> 7  Centro-Oeste DF Masculino      18 a 21 2023   categoria_c          6
#> 8  Centro-Oeste DF Masculino      18 a 21 2023   categoria_d         11
#> 9  Centro-Oeste DF Masculino      18 a 21 2023   categoria_e         NA
#> 10 Centro-Oeste DF Masculino      18 a 21 2023   categoria_x         NA
```

### Citation

This package can be cited as follows:

``` r
citation("driversbr")
#> Warning in citation("driversbr"): could not determine year for 'driversbr' from
#> package DESCRIPTION file
#> To cite package 'driversbr' in publications use:
#> 
#>   Saraiva JPM, Santos PAB (????). _driversbr: Licensed drivers data
#>   from the Brazilian Ministry of Transport_.
#>   https://github.com/jotasaraiva/driversbr,
#>   https://jotasaraiva.github.io/driversbr/.
#> 
#> A BibTeX entry for LaTeX users is
#> 
#>   @Manual{,
#>     title = {driversbr: Licensed drivers data from the Brazilian Ministry of Transport},
#>     author = {João Pedro Melani Saraiva and Pedro Augusto Borges Santos},
#>     note = {https://github.com/jotasaraiva/driversbr, https://jotasaraiva.github.io/driversbr/},
#>   }
```
