# leap year part 2
# gregorian calendar was adopted in 1752, which was a leap year
# prior to 1752 the julian calendar was used
# under the julian calendar, leap years occur in any year that is evenly divisible by 4
# using this info, update the method from leap_year_1
# determine leap years both before and after 1752

# START
# given a number > 0
# IF number is less than 1752
  # IF number evenly divisible by 4 return true
  # ELSE return false
# ELSE
  # call original gregorian calendar leap_year? method
  # (if divisible by 400 true)
  # (if divisible by 100 false)
  # (if divisible by 4 true, else false)
# END

def leap_year_gregorian?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end

def leap_year?(number)
  if number < 1752
    number % 4 == 0
  else
    leap_year_gregorian?(number)
  end
end

# launch school's solution:
# def leap_year?(year)
  # if year < 1752 && year % 4 == 0
    # true
  # elsif year % 400 == 0
    # true
  # elsif year % 100 == 0
    # false
  # else
    # year % 4 == 0
  # end
# end