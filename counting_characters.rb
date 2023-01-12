# write a program that asks a user for input of a word or multiple words
# and gives back the number of characters. Spaces should not be counted as characters

# START
# PRINT "Please write a word or multiple words:"
# SET string = GET user inuput with newline character removed
# SET characters = string separated into list of each character
# delete all spaces from characters list
# SET character_count = characters list length
# PRINT "There are (character count) characters in "(string)"."

puts "Please write a word or multiple words:"
string = gets.chomp

characters = string.split('')
characters.delete(' ')
character_count = characters.length

puts "There are #{character_count} characters in \"#{string}\"."

#launch school's solution was similar but more consise
print 'Please write word or multiple words: '
input = gets.chomp
number_of_characters = input.delete(' ').size
puts "There are #{number_of_characters} characters in \"#{input}\"."