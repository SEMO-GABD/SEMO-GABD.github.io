# Standard error of the mean function
# This the form that the students will write
std_err <- function(x, na.rm = FALSE) {
  ifelse(na.rm,
         x <- na.omit(x),
         x)
  se <- sd(x)/sqrt(length(x))
  se
}

# Scaled mass index function
# This will be similar to the format the students write
scaled_index <- function(m = 0, t = 0, b = 0) {
  scaled_tarsus <- (mean(t)/t)^b
  index <- m * scaled_tarsus
  index
}
