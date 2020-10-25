# -*- coding: utf-8 -*-
"""
##################################################
#
# QMB 6358: Software Tools for Business Analytics
#
# Sample script for Assignment 6, Question 1
#
# Name: Robyn Schulte
# College of Business Administration
# University of Central Florida
#
# Date: 10/25/2020
#
#
##################################################
"""


##################################################
# Import Modules.
##################################################


import os # To set working directory
# import numpy as np # Not needed here but often useful
import pandas as pd # To read and inspect data
import statsmodels.formula.api as sm # Another way to estimate linear regression



##################################################
# Set Working Directory.
##################################################


# Find out the current directory.
os.getcwd()
# Change to a new directory.
os.chdir('C:\Users\robyn\OneDrive\Documents\QMB6358\My assignments2\QMB6358_Solutions\assignment_06')
# Check that the change was successful.
os.getcwd()


##################################################
# Load Data.
##################################################


housing_full = pd.read_csv('housing_data/housing_data_1.csv')



# Use a for loop to bind additional datasets to housing_full.
# Code goes here.



# Calculate summary statistics for your data.
housing_full.describe()
# Use this to check whether your data handling is working correctly.


##################################################
# Fit the Regression Model
##################################################

# After the full dataset is obtained:

# Fit the regression model.
reg_model_full_sm = sm.ols(formula = "house_price ~ income + in_cali + earthquake", 
                           data = housing_full).fit()



# Display a summary table of regression results.
print(reg_model_full_sm.summary())





##################################################
# End
##################################################
