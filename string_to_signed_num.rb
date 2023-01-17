# convert a string to a signed number
# extend the method created from previous exercise to work with signed numbers
# write a method that takes a string of digits
# and returns the appropriate number as an integer
# the string may have leading + or - sign
# if + included return a positive number
# if - included return a negative number
# if no sign is given return a positive number

# (string_to_integer method)
# START
# given a string of numbers with a potential +/- sign
# SET constant variable numbers = hash with keys as string form and values as number
# LOOP through each character in string
# use the constant variable numbers and place each character in as the key
# each character will return as its value (from key:value pair)
# this will result in an array of numbers
# SET value = 0
# LOOP through the array of numbers
# SET value = 10 times the value plus the number in iteration
# example: 
# [3, 4, 2]
# value = 0
# value = (value * 10) + number
# value = 3
# value = (3 * 10) + 4
# value = 34
# value = (34 * 10) + 2
# value = 342

# (string_to_signed_integer method)
# START
# given a string
# check what the strings first character is
# IF it starts with '+'
  # pass string minus the first character into the string_to_integer method
# ELSEIF it starts with '-'
  # pass string minus the first character into string_to_integer method
  # place a negative sign in front of string_to_integer method
# ELSE
  # pass string into string_to_integer method
# END

NUMBERS = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9
}

def string_to_integer(string)
  numbers = string.chars.map { |char| NUMBERS[char] }
  value = 0
  numbers.each { |num| value = (value * 10) + num }
  value
end

def string_to_signed_integer(string)
  case string[0]
  when '+' then string_to_integer(string[1..-1])
  when '-' then -string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end


