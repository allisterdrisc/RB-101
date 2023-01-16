# what century is that?
# write a method that takes a year as input and returns the century
# the return value should be a string that begins with the century number
# and ends with st, nd, rd, or th as appropriate for that number
# new centuries begin in years that end with 01
# so the years 1901-2000 comprise the 20th century

# high level pseudo code
# START
# given a number (representing a year)
# determine which century the year is in
# determine the appropriate ending letters for century
# return a string of the century number with the ending letters
# END

# determining the century
# START
# centuries are 100 years long
# new centuries begin in years that end with 01
# this meeans that a year divided by 100 (without using floats), 
# will equal one less than its correct century number
# so dividing a year by 100 then adding 1 will give the correct century
# examples:
# 1/100 => 0, 0 + 1 => 1
# 1996/100 => 19, 19 + 1 => 20
# 1800/100 => 18, 18 +1 => 19 *** doesn't work for years that are divisible by 100 with no remainder
# so, all years except years divisible by 100 use that logic
# years divisible by 100, are simply divided by 100 with no 1 added
# END

# determine appropriate letters
# START
# IF number of century returned ends in 0, 4, 5, 6, 7, 8, 9, 11, 12, 13
# letters 'th' added to end of century number
# ELSEIF number of century returned ends in 1
# letters 'st' added to end of century number
# ELSEIF number of century returned ends in 2
# letters 'nd' added to end of century number
# ELSEIF number of century returned ends in 3
# letters 'rd' added to end of century number
# END

# full program pseudo code
# START
# given a number (representing a year)
# IF year % 100 has no remainder
  # SET century = year / 100
# ELSE
  # SET century = (year / 100) + 1
# turn century into a string
# IF last 2 characters in century are 11, 12, or 13
  # add 'th' to century
# ELSEIF last character in century is 1
  # add 'st' to century
# ELSEIF last character in century is 2
  # add 'nd' to century
# ELSEIF last character in century is 3
  # add 'rd' to century
# ELSE
  # add 'th' to century
# END

def century(year)
  if year % 100 == 0
    century = (year / 100).to_s
  else
    century = ((year / 100) + 1).to_s
  end

  if century.end_with?('11', '12', '13')
    century + 'th'
  elsif century.end_with?('1')
    century + 'st'
  elsif century.end_with?('2')
    century + 'nd'
  elsif century.end_with?('3')
    century + 'rd'
  else
    century + 'th'
  end
end

# launch school's solution:
# def century(year)
# century = year / 100 + 1
# century -= 1 if year % 100 == 0
# century.to_s + century_suffix(century)
# end

# def century_suffix(century)
# return 'th' if [11, 12, 13].include?(century % 100)
# last_digit = century % 10

# case last_digit
# when 1 then 'st'
# when 2 then 'nd'
# when 3 then 'rd'
# else 'th'
# end
# end