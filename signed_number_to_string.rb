# convert a signed number to a string
# write a method that takes an integer, positive or negative
# and convert it to string representation

# START
# given a positive or negative integer
# SET constant variable digits = strings '0' - '9'
# define integer_to_string method from previous problem
# IF integer is negative
  # return string "-#{integer_to_string(-number)}"
# ELSEIF integer is positive
  # return string "+#{integer_to_string(number)}"
# ELSE
  # integer_to_string(number)
# END

# number_to_string method
# (launch school's solution)
DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

def signed_number_to_string(number)
  if number < 0
    "-#{integer_to_string(-number)}"
  elsif number > 0
    "+#{integer_to_string(number)}"
  else
    integer_to_string(number)
  end
end
