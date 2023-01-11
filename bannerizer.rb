# given a short line of text, print it within a box

# START
# given a string
# SET length = length of the string
# PRINT "+-" plus "-" times the length of the string plus "-+"
# PRINT "| " plus " " times the length of the string plus " |"
# PRINT "| " plus the string plus " |" 
# PRINT "| " plus " " times the length of the string plus " |"
# PRINT "+-" plus "-" times the length of the string plus "-+"
# END

# the sets of lines can be extracted into variables

# horitontal line = '+-' plus '-' times the length plus '-+'
# vertical line = '| ' plus ' ' times the length plus ' |'

# now with those variables the method would look like this:
# START
# given a string
# SET length = length of string
# PRINT horizontal line
# PRINT vertical line
# PRINT "| " plus the string plus " |" 
# PRINT vertical line
# PRINT horizontal line
# END

def print_in_box(string)
  length = string.length
  horizontal_line = "+-#{'-' * length}-+"
  vertical_line = "| #{' ' * length} |"
  
  puts horizontal_line
  puts vertical_line
  puts "| #{string} |"
  puts vertical_line
  puts horizontal_line
end 