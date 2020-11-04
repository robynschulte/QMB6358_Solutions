#!/usr/bin/python
"""
##################################################
# 
# QMB 6358: Software Tools for Business Analytics
# 
# 
##################################################
"""


##################################################
# Q1: Functions.
##################################################


    #--------------------------------------------------
    # Example 1
    #--------------------------------------------------

def letter_grade(grade):
    if grade <= 100 and grade >= 93:
        letter_grade_out = "A"
    elif grade <= 92 and grade >= 90:
        letter_grade_out = "A-"
    elif grade <= 89 and grade >= 87:
        letter_grade_out = "B+"
    elif grade <= 86 and grade >= 83:
        letter_grade_out = "B"
    elif grade <= 82 and grade >= 80:
        letter_grade_out = "B-"
    elif grade <= 79 and grade >= 77:
        letter_grade_out = "C+"
    elif grade <= 76 and grade >= 73:
        letter_grade_out = "C"
    elif grade <= 72 and grade >= 70:
        letter_grade_out = "C-"
    elif grade <= 69 and grade >= 67:
        letter_grade_out = "D+"
    elif grade <= 66 and grade >= 63:
        letter_grade_out = "D"
    elif grade <= 62 and grade >= 60:
        letter_grade_out = "D-"
    else:
        letter_grade_out = "F"
    return letter_grade_out

 

    #--------------------------------------------------
    # Example 2
    #--------------------------------------------------

def path_to_data_file(path,prefix,file_num,extension):
    return(path + prefix + "_" + file_num + "." + extension)
         


    #--------------------------------------------------
    # Example 3
    #--------------------------------------------------

import math

def cyl_vol (height, radius):
    pi = math.pi
    return height * pi * radius ** 2



    #--------------------------------------------------
    # Example 4
    #--------------------------------------------------
def number_of_vowels(str):
    count = 0
    vowel = set("aeiouAEIOU")
    for alphabet in str:
        if alphabet in vowel:
            count = count + 1
    # print("Number of vowels:", count)
    return count



##################################################
# Q2: Testing
##################################################

def main():

    
    #--------------------------------------------------
    # Example 1
    #--------------------------------------------------

    print(letter_grade(90))
    print(letter_grade(65))
    print(letter_grade(72))
    print(letter_grade(59))
    
    #--------------------------------------------------
    # Example 2
    #--------------------------------------------------
    
    print(path_to_data_file('~/IRIS4/QMB6358-iris/','iris','1','txt'))
    print(path_to_data_file('~/QMB6358/My assignments2/QMB6358_Solutions/assignment_01/','Q1','answer', 'txt'))
    print(path_to_data_file('~/QMB6358/My assignments2/QMB6358_Solutions/assignment_02/','Q1','functions','r'))
    print(path_to_data_file('~/QMB6358/My assignments2/QMB6358_Solutions/assignment_03/','A3Q1','data','r'))     
    
    #--------------------------------------------------
    # Example 3
    #--------------------------------------------------
    
    print (cyl_vol(10, 5))
    print (cyl_vol(4, 3))
    print (cyl_vol(9, 4))
    print (cyl_vol(12, 2))
    
    #--------------------------------------------------
    # Example 4
    #--------------------------------------------------
    
    str = "Coding is fun"
    number_of_vowels(str)
    
    str = "Business Analytics"
    number_of_vowels(str)
    
    str = "Tuesdays and Thursdays"
    number_of_vowels(str)
    
    str = "Go Knights"
    number_of_vowels(str)    





if __name__== '__main__':
    main()
  
  
  
##################################################
# End.
##################################################
