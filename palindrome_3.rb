# write a method that returns true if its integer argument is palindromic, false otherwise

# START
# given a number
# IF number is equal to the reverse of the number 
# return true
# else
# return false

def palindromic_number?(number)
  number == number.digits.join.to_i
end

#or use the palindrome method from earlier and converst the number to a string to compare
def palindrome(string)
  string == string.reverse
end 

def palindromic_number?(number)
  palindrome?(number.to_s)
end 