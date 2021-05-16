#' Produces the string for one day of the song.
#'
#' @param dataset A data frame containing information about gifts
#' @param line The number of the line for the day you want to sing about
#' @param phrase_col The variable name for the column in the dataset that
#' contains the gift phrases
#'
#' @return A string singing the line of the song with all gifts for the given day.
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#'
#' @export
sing_day <- function(data, num, phrase_col) {


  ## first line

  num_word <- ordinal(num)

  first_line <- str_glue("On the {num_word} day of Christmas, my true love gave to me, ")

  ## gift phrases

  phrases <- data %>% pull({{phrase_col}})

  phrases[1] <- paste0("and ",phrases[1], ".")

  gift_lines <- str_c(phrases[num:1], collapse = ", \n")

  ## together

  line <- str_glue("{first_line} \n{gift_lines}")
  return(line)
}


