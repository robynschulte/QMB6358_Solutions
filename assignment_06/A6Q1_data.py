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
<<<<<<< HEAD
os.chdir('C:\\Users\\robyn\\OneDrive\\Documents\\QMB6358\\My assignments2\\QMB6358_Solutions\\assignment_06')
=======
os.chdir('C:\Users\robyn\OneDrive\Documents\QMB6358\My assignments2\QMB6358_Solutions\assignment_06')
>>>>>>> 35be952f939ad04c3fa6afb148568e999d0e0840
# Check that the change was successful.
os.getcwd()


##################################################
# Load Data.
##################################################


housing_full = pd.read_csv('housing_data/housing_data_1.csv')



# Use a for loop to bind additional datasets to housing_full.
for i in range (1,6):
    i = str(i)
    housing_file = "housing_data\\" + "housing_data_" + i + ".csv"
    text = open(housing_file, 'r')
    print(text.name)


housing_single = []

for i in range (1,6):
    i = str(i)
    housing_file = "housing_data\\" + "housing_data_" + i + ".csv"
    housing_df = pd.read_csv(housing_file, index_col=None, header=0)
    housing_single.append(housing_df)

print(housing_single)

housing_full = pd.concat(housing_single)

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