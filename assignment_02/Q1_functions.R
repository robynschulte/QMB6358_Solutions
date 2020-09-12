
################################################################################
#
# QMB 6358: Software Tools for Business Analytics
# Library of R Functions for Assignment 2
#
# Name:
# College of Business Administration
# University of Central Florida
#
# Date:
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


sum_sq_dev <- function(x,mu){
  sumofsquares <- sum((x-mu)^2)
  return(sumofsquares)
}



#--------------------------------------------------------------------------------
# Second function: Covariance between two variables
#--------------------------------------------------------------------------------

# Function definition goes here.

covar_y_x <- function(x, y){
  covariance <- (1/(length(y)))*(sum((y-mean(y))*(x-mean(x))))
  return(covariance)
}





################################################################################
# End
################################################################################


