#' Puts the various parts of speech together into a full phrase.
#'
#' @param num An integer
#' @param num_word A string corresponding to the integer
#' @param item A string
#' @param verb A string
#' @param adjective A string
#' @param location A string
#'
#' @return A string containing the words in grammatical order.
#'
#' @import stringr
#' @import glue
#' @import dplyr
#' @import purrr
#'
#' @export


make_phrase <- function(num, num_word, item, verb, adjective, location){

  verb <- replace_na(verb, "")
  item <- replace_na(item, "")
  adjective <- replace_na(adjective, "")
  location <- replace_na(location, "")


  if (num > 1) {

    item <- pluralize_gift(item)

  } else if (substring(item,1,1) %>% str_detect("[aeiou]")) {

    num_word <- "an"

  } else {

    num_word <- "a"

  }
  myphrase = paste(num_word,adjective,item,verb,location)
  myphrase <- str_trim(myphrase, side = c("both", "left", "right"))

  return(myphrase)
}
