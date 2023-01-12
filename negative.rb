# write a method that takes a number as an argument
# if the argument is a positive number, return the negative of that number
# if the number is 0 or negative, return the original number

# START
# given a positive or negative integer (number)
# IF number is greater than zero
# THEN return the negative version of number
# ELSE
# THEN return the original number
# END

def negative(number)
  if number > 0
    -number
  else
    number
  end 
end 

# refactored to be shorter w ternanry 

def negative(number)
  number > 0 ? (-number) : (number)
end 
