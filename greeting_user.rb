# write a program that will ask for users name
# the program will then greet the user
# if the user writes "name!" then the computer yells back to the user in all caps
# other wise the computer responds Hello, name.

# START
# PRINT "What is your name?"
# SET name = GET user input with newline characters removed
# IF name includes an '!' 
# THEN PRINT "HELLO (NAME (all caps and no !)). WHY ARE WE SCREAMING?"
# ELSE
# THEN PRINT "Hello, (name)."
# END

puts "What is your name?"
name = gets.chomp
if name.include?('!')
  puts "HELLO #{name.upcase.chop}. WHY ARE WE SCREAMING?"
else
  puts "Hello, #{name}."
end 