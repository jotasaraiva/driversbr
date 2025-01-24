#' Licensed Drivers Data
#'
#' A dataset of licensed drivers data scraped from the
#' Brazilian Ministry of Transport.
#'
#' @format A tibble with 114,492 rows and 7 variables:
#' \describe{
#'   \item{regiao}{Brazilian Geographic Region}
#'   \item{uf}{Federative Unit - Brazilian States Acronym}
#'   \item{sexo}{Drivers sex}
#'   \item{faixa_etaria}{Drivers age group}
#'   \item{ano}{Year}
#'   \item{categoria_cnh}{Drivers license category}
#'   \item{condutores}{Amount of drivers}
#' }
#' @source \url{https://www.gov.br/transportes/pt-br/assuntos/transito/conteudo-Senatran/estatisticas-quantidade-de-habilitados-denatran}
"drivers"
