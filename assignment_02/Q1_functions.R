
################################################################################
#
# QMB 6358: Software Tools for Business Analytics
# Library of R Functions for Assignment 2
#
# Name: Robyn Schulte
# College of Business Administration
# University of Central Florida
#
# Date: 09/08/2020
#
################################################################################
#
# This program is a library of R functions for Assignment 2.
#
#
#
################################################################################



################################################################################
# Load Packages
################################################################################

# Load any packages that are needed for these functions.
# library(package_name_goes_here)

# You would typically install the package first,
# instead of within the library.
# install.packages("package_name_goes_here")


################################################################################
# Functions
################################################################################

#--------------------------------------------------------------------------------
# First function: Sum of squared deviations
#--------------------------------------------------------------------------------

# Function definition goes here.
x <- c(1,2,3,4)

sum_sq_dev <- function(x,mu){
  sumofsquares <- sum( (x-mean(x) )^2)
  return(sumofsquares)
}


print(sum_sq_dev)


#--------------------------------------------------------------------------------
# Second function: Covariance between two variables
#--------------------------------------------------------------------------------

# Function definition goes here.
x <- c(1,3,5,10)

mu <- c(2,4,6,20)

covar_y_x <- function(x, mu){
  covariance <- cov(x, mu)
  print(covariance)
  return(covariance)
}


print(covar_y_x(x,mu))




################################################################################
# End
################################################################################

