#' Takes a random sample of size n from a vector, then calculate and return the 
#' mean of that subsample
#'
#' @param vec A vector
#' @param n A integer
#'
#' @return Return mean of subsample
#'
#' @import tidyverse
#'
#' @export


sample_mean <- function(vec, n) {
  sub_sample <- sample(vec,n)
  mean(sub_sample, na.rm = TRUE)
  
}