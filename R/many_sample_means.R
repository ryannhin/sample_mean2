#' Perform the sample_mean process many times (reps) and return a vector of the results
#' 
#'
#' @param vec A vector
#' @param n A integer
#' @param reps A integer
#'
#' @return Return a vector of many means of subsamples
#'
#' @import tidyverse
#'
#' @export
#' 

many_sample_means <- function(vec,n,reps = 100) {
  
  replicate(reps, sample_mean(vec, n))
  
}