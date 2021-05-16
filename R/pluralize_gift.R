#' Takes a noun and makes it plural
#'
#' @param gift A string or vector of strings
#'
#' @return A string or vector of strings with the pluralized words
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#'
#' @export
#'

pluralize_gift <- function(gift){

if(str_detect(gift,"oo")) {
  gift <- str_replace(gift,"oo","ee")
} else if(str_detect(gift,"y")) {
  gift <- str_replace(gift,"y", "ies")
} else {
  gift <- paste0(gift,"s")
  }
}

