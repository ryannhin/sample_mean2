#' Perform the many_sample_means process for each of the values in the ns vector. 
#' It should return a data frame with the results.
#' 
#' hello
#'
#' @param vec A vector
#' @param ns A vector
#' @param reps A integer
#'
#' @return return a data frame with the results of the many_sample_means for each
#' of the values in the ns vector
#'
#' @import tidyverse
#'
#' @export
#' 

sample_means_ns <- function(vec, ns,reps = 100) 
{
  
  the_sample_means <- map(ns, ~many_sample_means(vec, .x, reps))
  
  tibble(
    sample_means = unlist(the_sample_means),
    n = as.double(rep(ns, each = reps))
  )
}