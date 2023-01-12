# write a method that takes a string argument, and returns true if all of the alphabetic characters inside
# the string are uppercase, false otherwise. Ignore characters that are not alphabetic

# START
# given a string
# IF string equals the string turned to all uppercase 
# return true
# ELSE
# return false
# END

def uppercase?(string)
  string == string.upcase
end 
