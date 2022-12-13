# from rstudio::conf(2020) debugging talk
# by Jenny Bryan
# src: https://github.com/jennybc/debugging/blob/master/R/fruit_avg.R
fruit_avg <- function(dat, pattern) {
  cols <- grep(pattern, names(dat))
  mini_dat <- dat[ , cols]
  message("Found ", ncol(mini_dat), " fruits!")
  rowMeans(mini_dat)
}
