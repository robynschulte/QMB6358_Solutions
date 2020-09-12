
################################################################################
#
# QMB 6358: Software Tools for Business Analytics
# Testing a Library of R Functions
#
# Name: Robyn Schulte
# College of Business Administration
# University of Central Florida
#
# Date: 09/12/2020
#
################################################################################
#
# This program tests a library of R functions.
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

# Set working directory, if calling from another location.
wd_path <- 'C:/Users/robyn/OneDrive/Documents/QMB6358/Course_demos/QMB6358F20/assignment_02'
setwd(wd_path)


# Load your source code for the library of functions.
source("Q1_functions.R")
# Be sure that this library is located in the working directory.
# Otherwise, you can include the path.


################################################################################
# Testing Functions
################################################################################


print("Testing function sum_sq_dev:")

# Check values that are output.
print(sum_sq_dev(x = c(2, 4, 6), mu = 4))
# Test output against expected answer.
print(sum_sq_dev(x = c(2, 4, 6), mu = 4) == 8)

# Add more examples.

# Additional example 1
# Check values that are output.
print(sum_sq_dev(x = c(7, 9, 2), mu = 6))
# Test output against expected answer.
print(sum_sq_dev(x = c(7, 9, 2), mu = 6) == 26)

# Additional example 2
# Check values that are output.
print(sum_sq_dev(x = c(3, 5, 7), mu = 5))
# Test output against expected answer.
print(sum_sq_dev(x = c(3, 5, 7), mu = 5) == 8)




print("Testing function covar_y_x:")

# Check values that are output.
print(covar_y_x(y = c(1, 2, 4), x = c(2, 4, 6)))
# Test output against expected answer.
print(covar_y_x(y = c(1, 2, 4), x = c(2, 4, 6)) == 2)

# Add more examples.

# Additional example 1
# Check values that are output.
print(covar_y_x(y = c(1, 4, 7), x = c(1, 2, 5)))
# Test output against expected answer.
print(covar_y_x(y = c(1, 4, 7), x = c(1, 2, 5)) == 4)


#Additional example 2
# Check values that are output.
print(covar_y_x(y = c(6, 3, 9), x = c(2, 4, 10)))
# Test output against expected answer.
print(covar_y_x(y = c(6, 3, 9), x = c(2, 4, 10)) == 6)




print("Q1 library testing complete.")



################################################################################
# End
################################################################################

