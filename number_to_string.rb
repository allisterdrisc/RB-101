# convert a number to a string
# write a method that takes a positive integer or 0
# and converts it to a string representation
# no using standard conversion methods available in Ruby

# START
# given a postive integer or zero
# SET string_number = a hash where the keys are numbers 0-9 and values string '0'-'9'
# LOOP over integer
  # use each digit in integer as a key in string_number
  # returns a list of string representation for the digits
# SET string = empty string
# LOOP over the list of strings
  # add each string value to empty string
# return string
# END

NUMBER_STRING = {
  0 => '0',
  1 => '1',
  2 => '2',
  3 => '3',
  4 => '4',
  5 => '5',
  6 => '6',
  7 => '7',
  8 => '8',
  9 => '9'
}

def integer_to_string(integer)
  array = integer.digits.reverse
  string_array = array.map { |i| NUMBER_STRING[i] } 
  
  string = ''
  string_array.each { |str| string += str }
  string
end

# launch school's solution:

#    DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
#
#    def integer_to_string(number)
#      result = ''
#      loop do
#        number, remainder = number.divmod(10)
#        result.prepend(DIGITS[remainder])
#        break if number == 0
#      end
#      result
#    end
