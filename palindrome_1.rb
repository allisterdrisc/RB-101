# write a method that returns true if the string passed as an argument is a palindrome, false otherwise
# case matters as does punctuation and spaces

# START
# given a string
# IF the reverse of string equals string
# return true
# ELSE
# return false

def palindrome?(string)
  string.reverse == string ? (true) : (false)
end 

# launch school's solution, dropped unncessary ternary expression since boolean comparison will return true or false

def palindrome?(string)
  string == string.reverse
end 