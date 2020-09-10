# Please see the revised testing script Q2_testing.R
# Aguments of covar_y_x should be (y, x)

# Next step: 
# Print both the return value and the test against the expected response
# for both of your examples.
# And make sure that the test values are correct.

################################################################################
#
# QMB 6358: Software Tools for Business Analytics
# Testing a Library of R Functions
#
# Name: Robyn Schulte
# College of Business Administration
# University of Central Florida
#
# Date: 09/08/2020
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
# wd_path <- '~/path/to/your/repo/assignment_02'
# setwd(wd_path)


# Load your source code for the library of functions.
source("Q1_functions.R")
# Be sure that this library is located in the working directory.
# Otherwise, you can include the path.


################################################################################
# Testing Functions
################################################################################


print("Testing function sum_sq_dev:")

# Check values that are output.
print(sum_sq_dev(x = c(1, 2, 3), mu = 4))
# Test output against expected answer.
# This is not the correct answer:
print(sum_sq_dev(x = c(2, 4, 6), mu = 8) == 0)
# It should not evaluate to zero. 
# Work it out on paper to find the answer you should get. 

# Add more examples.





print("Testing function covar_y_x:")

# Check values that are output.
print(covar_y_x(x = c(1, 2, 3), mu = c(4, 5, 6)))
# Test output against expected answer.
print(covar_y_x(x = c(2, 4, 8), mu = c(1, 3, 5)) == 0)
# Again, zero is not the result you would expect for these inputs.

# Add more examples.




print("Q1 library testing complete.")



################################################################################
# End
################################################################################

