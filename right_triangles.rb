# given a positive integer
# display a right triangle whose sides each have n stars
# the hypotenuse of the triangle should have one end at the lower left of the triangle, the other at the upper right

# START
# given a positive integer (number of stars)
# PRINT (number of stars minus 1) number of ' '(spaces) and 1 * (star)
# PRINT (number of stars minus 2) number of ' ' and 2 *'s 
# and so on and so forth, until no spaces can be printed and number of stars = the number of * printed
# END

# START
# given a positve integer (number)
# SET stars = 1
# SET spaces = number - 1
# WHILE stars is less than or equal to number 
  # PRINT spaces number of ' ' plus stars number of '*'
  # add one to stars
  # subtract one from spaces
# END

def triangle(number)
  stars = 1
  spaces = number - 1

  while stars <= number
    puts "#{' ' * spaces}#{'*' * stars}"
    stars += 1
    spaces -= 1
  end 
end 
