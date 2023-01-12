# write a program that solicits 6 numbers from the user
# then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers

# START
# SET first_five = [] empty array
# PRINT 'Enter the 1st number:'
# GET user input and turn into integer
# add user input to first_five
# PRINT 'Enter the 2nd number:'
# GET user input and turn into integer
# add user input to first_five
# PRINT 'Enter the 3rd number:'
# GET user input and turn into integer
# add user input to first_five
# PRINT 'Enter the 4th number:'
# GET user input and turn into integer
# add user input to first_five
# PRINT 'Enter the 5th number:'
# GET user input and turn into integer
# add user input to first_five
# PRINT 'Enter the last number:'
# SET last number = GET user input and turn into integer
# IF first_five includes the last number
# PRINT "The number (last number) appears in (first_five)."
# ELSE
# PRINT "The number (last number) does not appear in (first five)."
# END

first_five = []

puts 'Enter the 1st number:'
first_five << gets.chomp.to_i
puts 'Enter the 2nd number:'
first_five << gets.chomp.to_i
puts 'Enter the 3rd number:'
first_five << gets.chomp.to_i
puts 'Enter the 4th number:'
first_five << gets.chomp.to_i
puts 'Enter the 5th number:'
first_five << gets.chomp.to_i
puts "Enter the last number:"
last_number = gets.chomp.to_i

if first_five.include?(last_number)
  puts "The number #{last_number} appears in #{first_five}."
else
  puts "The number #{last_number} does not appear in #{first_five}."
end 