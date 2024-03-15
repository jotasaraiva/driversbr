get_drivers_links <- function() {
  page <- "https://www.gov.br/transportes/pt-br/assuntos/transito/conteudo-Senatran/estatisticas-quantidade-de-habilitados-denatran"
  
  xl_links <- rvest::read_html(page) |>
    rvest::html_elements(".internal-link") |>
    rvest::html_attr("href") |>
    Filter(
      f = function(l) {
        grepl("condutores.*12",l) & tools::file_ext(l) %in% c("xls","xlsx")
      }
    ) |>
    unique()
  
  return(xl_links)
}

get_region <- function(acronyms) {
  region_map <- list(
    "Norte" = c("AC", "AM", "AP", "PA", "RO", "RR", "TO"),
    "Nordeste" = c("AL", "BA", "CE", "MA", "PB", "PE", "PI", "RN", "SE"),
    "Centro-Oeste" = c("GO", "MT", "MS", "DF"),
    "Sudeste" = c("ES", "MG", "RJ", "SP"),
    "Sul" = c("PR", "RS", "SC")
  )
  
  region <- sapply(acronyms, function(acronym) {
    for (r in names(region_map)) {
      if (acronym %in% region_map[[r]]) {
        return(r)
      }
    }
    return("Not found")
  })
  
  return(region)
}

brazil_states_acronym <- function(df) {
  brazil_states_df <- data.frame(
    State = c(
      "Acre", "Alagoas", "Amap\u00e1", "Amazonas", "Bahia", "Cear\u00e1", "Distrito Federal",
      "Esp\u00edrito Santo", "Goi\u00e1s", "Maranh\u00e3o", "Mato Grosso", "Mato Grosso do Sul",
      "Minas Gerais", "Par\u00e1", "Para\u00edba", "Paran\u00e1", "Pernambuco", "Piau\u00ed",
      "Rio de Janeiro", "Rio Grande do Norte", "Rio Grande do Sul", "Rond\u00f4nia", "Roraima",
      "Santa Catarina", "S\u00e3o Paulo", "Sergipe", "Tocantins"
    ),
    Acronym = c(
      "AC", "AL", "AP", "AM", "BA", "CE", "DF", "ES", "GO", "MA", "MT", "MS", "MG",
      "PA", "PB", "PR", "PE", "PI", "RJ", "RN", "RS", "RO", "RR", "SC", "SP", "SE", "TO"
    )
  )
  
  for(i in 1:length(df$uf)) {
    for(j in 1:length(brazil_states_df$State)) {
      if(df$uf[i] == brazil_states_df$State[j] & !is.na(df$uf[i])) {
        df$uf[i] <- brazil_states_df$Acronym[j]
      }
    }
  }
  
  return(df)
}

#' @importFrom rlang .data
read_drivers_url <- function(url) {
  temp <- tempfile(fileext = ".xlsx")
  utils::download.file(url, temp, mode = "wb", quiet = T)
  
  suppressMessages({
    df <-
      readxl::read_excel(
        temp, sheet = 1, range = readxl::cell_cols(c("B",NA)),
        .name_repair = "universal"
      ) |>
      dplyr::slice(-1) |>
      dplyr::rename_with(~ tolower(stringr::word(., 1, sep = "\\."))) |>
      dplyr::filter(dplyr::if_all(dplyr::everything(), ~ !grepl("Total", .))) |>
      dplyr::rename("faixa_etaria" = "categoria") |>
      dplyr::mutate(
        dplyr::across("a":"total", ~ as.numeric( .)),
        ano = as.integer(stringr::str_extract(url, "[12][0-9]{3}"))
      ) |>
      tidyr::fill("uf", "sexo") |>
      tidyr::drop_na("faixa_etaria") |>
      dplyr::mutate(faixa_etaria = forcats::as_factor(.data$faixa_etaria)) |>
      brazil_states_acronym()
  })
  
  unlink(temp)
  
  return(df)
}