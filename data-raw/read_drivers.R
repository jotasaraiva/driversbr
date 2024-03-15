read_drivers <- function() {
  urls <- get_drivers_links()

  dfs <-
    lapply(urls, read_drivers_url) |>
    purrr::reduce(dplyr::bind_rows) |>
    dplyr::arrange("ano") |>
    dplyr::rename_with( ~ paste0("categoria_", .),
                        -c("uf", "sexo", "faixa_etaria", "total", "ano")) |>
    dplyr::mutate(regiao = get_region(.data$uf), .before = 1) |>
    dplyr::select(-"total") |>
    tidyr::pivot_longer(dplyr::starts_with("categoria"),
                        names_to = "categoria_cnh",
                        values_to = "condutores")

  return(dfs)
}
