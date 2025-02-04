# Exercises: writing your own functions
# Label the five parts of this function:
  first_and_last <- function(s) {
    first_char <- substr(s, 1, 1)
    last_char <- substr(s, nchar(s), 1)
    result <- paste(first_char, last_char)
    return(result)
  }
# function_name <- first_and_last
# inputs <- s
# output_value <- result
# do_something <- paste()
# imputs <- first_char, last_char



# Match the function bodies on the left with the name that describes what they’re doing on the right.
  function(x) {
    result <- x + 1
    return(result)
  }
  function(a) {
    result <- a * 2
    return(result)
  }
  function(a, b) {
    c_squared <- a^2 + b^2
    result <- sqrt(c_squared)
    return(result)
  }

double (2)
hypotenuse_length (3)
increment (1)


# Write a function that turns a vector into a palindrome.
# For example, it should turn 1 2 3 into 1 2 3 3 2 1.
# Hint: you’ll have to use a function called rev().
# Choose a short but descriptive name for your function.

to_palindrome <- function(x) {
  result <- rev(x)
  return(result)
}





