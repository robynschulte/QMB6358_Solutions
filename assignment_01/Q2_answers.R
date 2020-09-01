
################################################################################
#
# QMB 6358: Software Tools for Business Analytics
# Assignment 1, Question 2:
# Drafting Code for Functions
#
# Name: Robyn Schulte
# Executive Development Center
# College of Business Administration
# University of Central Florida
#
# Date: 08/30/2020
#
################################################################################
#
# This program defines the commands for a library of functions.
#
#
#
################################################################################

# Load packages, if you need any.
# library(name_of_R_package_goes_here)


################################################################################
# Functions
################################################################################


#--------------------------------------------------------------------------------
# Example 1
#--------------------------------------------------------------------------------

num_1 <- 3
num_2 <- 6


# Code goes here: 
read num1, num2
num1*num2
write multi

product_out <- NA

print(product_out)


#--------------------------------------------------------------------------------
# Example 2
#--------------------------------------------------------------------------------

num_in <- 7

# Code goes here: 
read isfive
if(isfive is not 5 and isfive is not 6)
    write "your number is not 5 or 6"

message_5_or_6 <- NA

print(message_5_or_6)


#--------------------------------------------------------------------------------
# Example 3
#--------------------------------------------------------------------------------

number_for_color <- 27

# Code goes here: 
Read colornum
If (colornum >0 and colornum <= 10)
    Write blue
else If (colornum >10 and colornum <= 20)
    Write red
else If (colornum >20 and colornum <= 30)
    Write green 
else
    Write "not a correct color option"

color_number <- NA

print(color_number)


#--------------------------------------------------------------------------------
# Example 4
#--------------------------------------------------------------------------------

num_5_limit <- 23


# Code goes here: 

Set x to 1 
While(x < 23)
    write x 
    x = x*5

  # Code goes here:

}


#--------------------------------------------------------------------------------
# Example 5
#--------------------------------------------------------------------------------

end_num <- 13


# Initialize count.
count_even_numbers <- 0

# Code goes here:
for (num in list_goes_here) {

  # Code goes here:
    
Read count
Set x to 0;
While(x<count)
    Set even to even + 2
    x=x+1
    write even

}

print(count_even_numbers)


#--------------------------------------------------------------------------------
# Example 6
#--------------------------------------------------------------------------------

num_1 <- 1
num_2 <- 7
num_3 <- 20
num_4 <- 3
num_5 <- 4


num_list <- c(num_1, num_2, num_3, num_4, num_5)


# Code goes here:

Read num_1, num_2, num_3, num_4, num_5

Set avg to (num_1, num_2, num_3, num_4, num_5)/5
write avg

If(num_1<num_2)
    set max to num_2
Else
    set max to num_1
if(num_3>max)
    set max to num_3
if(num_4>max)
    set max to num_4
if(num_5>max)
    set max to num_5

if(num_1>num_2)
    set min to num_2
else
    set min to num_1
if(num_3<min)
    set min to num_3
if(num_4<min)
    set min to num_4
if(num_5<min)
    set min to num_5
    


my_min <- NA
my_avg <- NA
my_max <- NA


summarize_5_numbers <- c(min = my_min, avg = my_avg, max = my_max)

print(summarize_5_numbers)


################################################################################
# End
################################################################################
