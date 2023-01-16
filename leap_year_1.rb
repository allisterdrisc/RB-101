# leap years part 1

# in the gregorian calendar, leap years occur in every year that is evenly divisible by 4
# unless the year is also divisible by 100
# if the year is evenly divisible by 100 it is not a leap year
# unless the year is evenly divisible by 400

# assume the rule is good for any number > 0
# write a method that takes a number > 0
# and returns true if a leap year, false if not

# START
# given a number > 0
# IF number is divisible by 4 and by 400
  # return true
# ELSEIF number is divisible by 4 and 100
  # return false
# ELSIF number is divisible by 4
  # return true
# ELSE
  # return false
# END

def leap_year?(number)
  if (number % 4 == 0) && (number % 400 == 0)
    true
  elsif (number % 4 == 0) && (number % 100 == 0)
    false
  elsif (number % 4 == 0)
    true
  else
    false
  end
end

# launch school's solution:
# def leap_year?(year)
  # if year % 400 == 0
    # true
  # elsif year % 100 == 0
    # false
  # else
    # year % 4 == 0
  # end
# end

