#1) a method that returns the sum of two integers 

#casual pseudo code:
#given two integers.
#add the two integers together
#return the sum of the two integers 

#formal pseudo code:
#START
#given two integers called "number1" and "number2"
#use the addition operator (+) to add "number1" and  "number2" and return the sum 
#END


#2) a method that takes an array of strings and returns a string that is all those strings concatenated together

#casual pseudo code:
#given an array of strings 
#initialize a new variable called "concatenated_strings" and assign it to an empty string
#iterate through the array and combine the "concatenated_strings" string with the current element  
#return the combined string 

#formal pseudo code:
#START
#given an array of strings called "array_of_strings"
#SET concatenated_strings = ''
#SET iterator = 1
#WHILE iterator <= length of array_of_strings 
  #SET curent_string = element in array_of_strings at index "iterator"
  #concatenated_strings + current_string
  #iterator + 1
#PRINT concatenated_strings
#END


#3) a method that takes an array of integers, and returns a new array with every other element from the original array, starting with the first element.
#For instance: every_other([1,4,7,2,5]) # => [1,7,5]

#casual pseudo code:
#given an array of integers 
#initialize a new variable assigned to an empty array
#reassign the new variable to be the return value of the steps below
#iterate through the array of integers one by one
  #return the first element in the array
  #don't return the second element in the array
  #return the following element but not the next, and so on and so forth 
#return the new array containing every other element from original array, starting with the first element

#formal pseudo code:
#START
#given an array of integers called "array_of_i"
#SET every_other = empty array
#SET iterator = 0
#every_other = return value from the following lines
  #WHILE iterator < length of array_of_i
    #SET current_element = element in array_of_i at space "iteration"
    #IF iterator is even 
      #include current element in return value
    #ELSE 
      #don't include current element in return value
    #iterator = iterator + 1
#PRINT every_other
#END


#4) a method that determines the index of the 3rd occurrence of a given character in a string. For instance, if the given character is 'x' and the string 
#is 'axbxcdxex', the method should return 6 (the index of the 3rd 'x'). If the given character does not occur at least 3 times, return nil

#casual pseudo code:
#given a string of a single character and a string of characters
#save the single character as the char
#set the char count to 0
#set the index number to 0
#split the string of characters into an ordered list of the characters in the string
#iterate over the list of characters one by one
  #if the character from list of characters doesn't equal the char
    #move to the next character
    #increase index number by 1 
  #if the character does equal the char 
    #increase the count by 1
    #increase the index number by 1
  #if char count is greater than or equal to 3 
    #return the integer assigned to index number representing the index of the 3rd occurence of the given character within the given string
  
  #if after iterating through the list of characters the char count is less than 3 
    #return nil  


#formal pseudo code:
#START
#given a string of a single character and a string of characters 
#SET char = single character 
#SET index = 0 
#SET char_count = 0
#SET list_of_characters = string of characters split into an ordered list of characters
#WHILE index < length of list_of_characters
  #SET current_char = character in list_of_characters located at index
  #IF current_char doesn't equal char 
    #increase index by 1
  #ELSE current_char equals char 
    #increase char_count by 1
    #increase index by 1 
      #IF char_count equals 3
        #PRINT the index value
      #ELSE index equals length of list_of_characters, and char_count less than 3 
        #PRINT nil
#END


#5) a method that takes two arrays of numbers and returns the result of merging the arrays. The elements of the first array should become the elements at 
#the even indexes of the returned array, while the elements of the second array should become the elements at the odd indexes. 
#For instance: merge([1, 2, 3], [4, 5, 6]) # => [1, 4, 2, 5, 3, 6]
#You may assume that both array arguments have the same number of elements.

#casual pseudo code:
#given two arrays of numbers each with the same number of elements 
#save the first array as the even array
#save the second array as the odd array
#initialize the variable merged arrays to be an empty array
#create a loop that runs till first array and second array are empty 
  #remove the first element from even array and place it in merged arrays
  #remove the first element from odd array and place it at the end of merged arrays 
#return merged arrays value 

#formal pseudo code:
#START
#given two arrays of numbers, each with the same number of elements 
#SET even_array = first array
#SET odd_array = second_array
#SET merged_arrays = empty array 
#WHILE even_array and odd_array lengths > 0 
  #remove first element from even_array and put it into merged_arrays
  #remove first element from odd_array and put it at the end of merged_arrays
#PRINT merged_arrays
