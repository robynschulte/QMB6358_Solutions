
################################################################################
#
# QMB 6358: Software Tools for Business Analytics
# Assignment 3: Data Handling
#
# Name: Robyn Schulte
# College of Business
# University of Central Florida
#
# Date: 09/27/2020
#
################################################################################
#
# This program reads two datasets and tests that the contents
# match the other dataset.
# It is a sample of the script for Assignment 3, Question 2.
#
#
#
################################################################################

# Clear workspace.
# The remove function removes everything in the workspace when the list is all.
rm(list=ls(all=TRUE))

# Load library of functions.
# source('my_R_code.R')

# Load packages.
# library(name_of_R_package_goes_here)


# Set working directory to the path containing the csv files.
# wd_path <- "/path/to/your/folder
wd_path <- "C:/Users/robyn/OneDrive/Documents/QMB6358/My assignments1/QMB6358_Solutions/assignment_03"
setwd(wd_path)


# Set paths to other folders.
data_path <- sprintf(A3Q1_data, wd_path)
# Optional: Organize data in a separate folder for larger projects.


################################################################################
# Testing datasets from Question 2
################################################################################


print("Contents of Dataset for Question 2a):")

# Read in the dataset.

A3Q2a_full <-read.table(A3Q2a_full.csv)

# Copy the commands from Question 1 to print out results.

print("Dimensions of dataset:")
print(dim(A3Q2a_full))

if (!is.null(A3Q2a_full) && ncol(A3Q2a_full) == 6) {
  colnames(A3Q2a_full) <- c("Sample", "Sepal.Length", "Sepal.Width",
                           "Petal.Length", "Petal.Width",  "Species")
}
print(summary(A3Q2a_full))

print(table(A3Q2a_full[, 6], useNA = 'ifany'))

print("Contents of Dataset for Question 2b):")

# Read in the dataset.

A3Q2b_full <- read.table(A3Q2b_full.csv)

# Copy the commands from Question 1 to print out results.

print("Dimensions of dataset:")
print(dim(A3Q2b_full))


if (!is.null(A3Q2b_full) && ncol(A3Q2b_full) == 6) {
  colnames(A3Q2b_full) <- c("Sample", "Sepal.Length", "Sepal.Width",
                           "Petal.Length", "Petal.Width",  "Species")
}
print(summary(A3Q2b_full))

print(table(A3Q2b_full[, 6], useNA = 'ifany'))


################################################################################
# End
################################################################################

