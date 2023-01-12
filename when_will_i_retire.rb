# build a program that displays when the user will retire and how many years they have to work till retirement

# START
# PRINT "What is your age?"
# SET age = GET user input and turn into integer
# PRINT "At what age would you like to retire?"
# SET retirement_age = GET user input and turn into integer 
# SET year = the current year
# SET years_more_of_work = retirement_age minus age
# SET retirement_year = current year plus years_more_of_work
# PRINT "It's #{year}. You will retire in #{retirement_year}. You have only #{years_of_work} years of work to go!"
# END

puts "What is your age?"
age = gets.to_i

puts "At what age would you like to retire?"
retirement_age = gets.to_i

year = Time.now.year
years_more_of_work = retirement_age - age
retirement_year = year + years_more_of_work

puts "It's #{year}. You will retire in #{retirement_year}. \n You have only #{years_more_of_work} years of work to go!"
