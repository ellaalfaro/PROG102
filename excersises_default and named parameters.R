# R represents missing data with the value NA. Say you’re doing an experiment
# and you miss the second observation. In R you can write that as c(1, NA, 3,
# 4). Most summary functions, like mean(), max(), and median(), have a parameter
# called na.rm.
# Most summary functions like mean(), max(), and median(), have a parameter
# called na.rm.

# What does this parameter do?
# this parameter decides whether to remove the NA value

# What is its default value?
# Its default value is FALSE because typically its results will be NZ.

# How would you get the maximum value of the vector c(1, NA, 3, 4)?
c(1, NA, 3, 4)

max(1, NA, 3, 4)
