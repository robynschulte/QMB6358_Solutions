
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
# Save the examples for the testing script:

sum_sq_dev <- function(x,mu){
  # This doesn't use mu as an argument, input above:
  sumofsquares <- sum( (x-mu) )^2)
  return(sumofsquares)
}

# Let the user decide to print outside of this function library:



#--------------------------------------------------------------------------------
# Second function: Covariance between two variables
#--------------------------------------------------------------------------------

# Function definition goes here.

# Save the examples for the testing script:

# Use the same names of arguments (y, x) as in the testing script, 
# otherwise the tests will fail.
covar_y_x <- function(x, y){
  # Perform the calculation of covariance yourself.
  # You can use the cov() function in the testing script. 
  covariance <- cov(x, y)
  # Printing not required inside the function:
  return(covariance)
}

# Let the user decide to print outside of this function library:





################################################################################
# End
################################################################################

