##################################################
#
# QMB 6358: Software Tools for Business Analytics
#
# Joining Datasets
#
# Name: Robyn Schulte
# College of Business
# University of Central Florida
#
# Date: 10/6/2020
#
##################################################
#
# A4Q1_data is an exercise in joining
# data sets with data on tractor sales and
# tractor specifications.
#
##################################################


##################################################
# Preparing the Workspace
##################################################

# Clear workspace.
rm(list=ls(all=TRUE))

# No libraries required.
# Otherwise would have a command like the following.
# library(name_of_R_package)


##################################################
# Setting the Parameters
##################################################


# Set path for working directory.
wd_path <- "C:/Users/robyn/OneDrive/Documents/QMB6358/My assignments2/QMB6358_Solutions/assignment_04"
# Modify the above line according to the specific path on your computer,
# as in:
# wd_path <- 'C:/Users/name/of/your/path'

# Set the working directory to this path.
setwd(wd_path)

# Verify that the path was assigned correctly.
getwd()


##################################################
# Q2 a) Loading the dataset A4Q2a_full.csv
##################################################

# Q2 a)

A4Q2a_full <- read.csv(file = "A4Q2a_full.csv")


# Q2 c)

# Test your dataset with the commands
# lm_model_1 <- lm(...)
# and
# print(summary(lm_model_1))
# from A4Q1_data.R

colnames(A4Q2a_full)

# Estimate a regression model.
lm_model_1 <- lm(data = A4Q2a_full,
                 formula = log(saleprice) ~ horsepower + age + enghours +
                   diesel + fwd + manual + johndeere +
                   spring + summer + winter)

# Output the results to screen.
print(summary(lm_model_1))


##################################################
# Q2 b) Loading the dataset A4Q2b_full.csv
##################################################

# Q2 b)

A4Q2b_full <- read.csv(file = "A4Q2b_full.csv")


# Q2 c)

# Test your dataset with the commands
# lm_model_1 <- lm(...)
# and
# print(summary(lm_model_1))
# from A4Q1_data.R

# Code goes here.
colnames(A4Q2b_full)

# Estimate a regression model.
lm_model_2 <- lm(data = A4Q2b_full,
                 formula = log(saleprice) ~ horsepower + age + enghours +
                   diesel + fwd + manual + johndeere +
                   spring + summer + winter)

# Output the results to screen.
print(summary(lm_model_2))



# These results should match the ones from A4Q1_data.R.


##################################################
# End
##################################################