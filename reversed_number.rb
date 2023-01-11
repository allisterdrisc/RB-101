# given a positive integer
# return that number with its digits reversed
# don't worry about returning leading zeros

# START
# given a positive integer
# reverse the integer 
# END

# START
# given a positive integer
# separate the integer into a list of digits
# reverse the order of the digits
# combine the list into one integer
# END

def reversed_number(number)
  number.digits.join.to_i
end

# launch schools solution below

def reversed_number(number)
  string = number.to_s
  reversed_string = string.reverse
  reversed_string.to_i
end 