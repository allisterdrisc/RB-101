# convert a string to a number
# the String#to_i method converts a string of numeric characters
# (including optional + - signs) to an integer
# create a method that does the same thing

# write a method that takes a string of digits
# and returns the appropriate number as an integer
# no using to_i
# don't worry about + or -, assume all characters are numeric

# START
# given a string of numeric characters
# SET a constant variable numbers = hash of strings referencing numbers
# each key will be a string that is a numeric character
# each value will be a number that goes with the number character
# SET numbers = LOOP over each character from the string
  # for each character in string
  # check if it is a key in the numbers hash
  # if it is in the hash, return the value associated w it
# SET value = 0
# LOOP over numbers again
  # set the value equal to 10 times what the value equals
  # plus the current number in the loop (value's value will change each iteration)
  # example: [4, 3, 1] looped over will look like this:
  # 10 * 0 + 4 -> 4
  # 10 * 4 + 3 -> 43
  # 10 * 43 + 1 -> 431
# return value
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
  '9' => 9,
 }

def string_to_integer(string)
  numbers = string.chars.map { |char| NUMBERS[char] }
  value = 0
  numbers.each { |num| value = 10 * value + num }
  value
end

