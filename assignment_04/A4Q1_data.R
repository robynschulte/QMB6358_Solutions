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
# Date: 10/06/2020
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
# Q1 a) Loading the Data
##################################################

# Q1 a)

tractor_sales <- read.csv(file = "tractor_sales.csv")


# Inspect the contents.
summary(tractor_sales)
# Make sure there are no problems with the data.



##################################################
# Estimating a Regression Model
# Model 0: Linear model for log of sale price
##################################################

# Use all available variables from first dataset.
colnames(tractor_sales)

# Estimate a regression model.
lm_model_0 <- lm(data = tractor_sales,
                 formula = log(saleprice) ~ age + enghours +
                   johndeere +
                   spring + summer + winter)

# Output the results to screen.
summary(lm_model_0)


##################################################
# Q1 b) Loading another dataset
##################################################

# Q1 b)

tractor_specs <- read.csv(file = "tractor_specs.csv")


# Inspect the contents.
summary(tractor_specs)
# Make sure there are no problems with the data.



##################################################
# Q1 c) Joining the two datasets
##################################################



# Join the two datasets.

tractor_full <- merge(tractor_specs, tractor_sales)





##################################################
# Estimating a Regression Model
# Model 1: Linear model for log of sale price
##################################################

# Use all available variables from full dataset.
colnames(tractor_full)

# Estimate a regression model.
lm_model_1 <- lm(data = tractor_full,
                 formula = log(saleprice) ~ horsepower + age + enghours +
                   diesel + fwd + manual + johndeere +
                   spring + summer + winter)

# Output the results to screen.
print(summary(lm_model_1))


# This should be a much better model.
columns_to_keep <- c('Age.Difference', 'DrPepperSchwartz', 'DrLoganLevkoff', 'DrJosephCilona', 'ChaplainGregEpstein', 'PastorCalvinRoberson', 'RachelDeAlto', 'DrJessicaGriffin', 'DrVivianaColes')
mafs_df <- data_set[,columns_to_keep]
summary(mafs_df)


##################################################
# End
##################################################