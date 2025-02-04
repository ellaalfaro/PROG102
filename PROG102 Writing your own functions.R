function_name <- function(imputs) {
  output_value <- do_something(imputs)
  return(output_value)
}

square <- function(x) {
  result <- x^2
  return(result)
}
square(3)
y <- 4
square(y)
square(y+1)

nth_power <- function(x, n) {
  result <- x^n
  return(result)
}
nth_power(3, 2)
nth_power(3, 4)

# gt stands for greater than. Note will come out with trues and false, true
# counts as 1 and false counts as 0, so it will give you the number of trues
gt_threshold <- function(x, threshold) {
  is_gt <- x > threshold
  result <- sum(is_gt)
}
gt_threshold(c(1, 2, 4), 3)






