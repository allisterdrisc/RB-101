# write a method that returns true if the string passed to it is a palindrome, false otherwise
# this time, case-sensitive, ignore all non-alphanumeric characters

# START
# given a string
# SET only_letters_numbers = string change to lowercase and remove non alphanumeric characters
# IF only letters numbers string equals itself reversed 
# return true
# ELSE
# return false
# END

def real_palindrome?(string)
  only_letters_numbers = string.downcase.delete('^a-z0-9')
  only_letters_numbers == only_letters_numbers.reverse
end 