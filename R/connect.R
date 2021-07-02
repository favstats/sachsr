#' get_saxonion
#'
#' Translates German to Saxonian
#'
#'
#' @param txt provide a text you want to translate from German into Saxonian
#' @export
get_saxonian <- function(txt) {

  html <- rvest::session("http://parallelnetz.de/Saxophone?phrase=")
  hessform <- rvest::html_form(html)[[1]]

  hessform_in <- rvest::html_form_set(hessform, phrase = txt)

  resp <- rvest::html_form_submit(hessform_in, submit = 1)

  fin <- rvest::read_html(resp) %>%
    rvest::html_table() %>%
    .[[1]] %>%
    .[2, 2] %>%
    stringr::str_replace("Ã\u009c", "Ü") %>%
    stringr::str_replace("Ã¼", "ü") %>%
    stringr::str_replace("Ã¤", "ä") %>%
    stringr::str_replace("Ã\u0084", "Ä") %>%
    stringr::str_replace("Ã¶", "ö") %>%
    stringr::str_replace("Ã\u0096", "Ö") %>%
    stringr::str_replace("Ã\u009f", "ß")

  return(fin)

}
