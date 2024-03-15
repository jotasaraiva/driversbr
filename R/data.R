#' Brazilian Licensed Drivers Data
#'
#' A dataset of licensed drivers data scraped from the
#' Brazilian Ministry of Transport
#'
#' @format ## `drivers`
#' A `tibble` data frame encoded to Brazilian Portuguese:
#' \describe{
#'    \item{regiao}{Brazilian Geographic Region}
#'    \item{uf}{Federativa Unit - Brazilian States Acronym}
#'    \item{sexo}{Drivers sex}
#'    \item{faixa_etaria}{Drivers age group}
#'    \item{ano}{Year}
#'    \item{categoria_cnh}{Drivers license category}
#'    \item{condutores}{Amount of drivers}
#' }
#' @source https://www.gov.br/transportes/pt-br/assuntos/transito/conteudo-Senatran/estatisticas-quantidade-de-habilitados-denatran
"drivers"
