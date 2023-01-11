# ask for user input
# given a noun, a verb, and an adjective
# create a story with blanks to fill in
# inject the 3 words into a story 
# print the combined story 
def prompt(message)
  puts("==> #{message}") 
end 

prompt("Enter a noun:")
noun = gets.chomp
prompt("Enter a verb:")
verb = gets.chomp
prompt("Enter an adjective:")
adjective = gets.chomp
prompt("Enter an adverb:")
adverb = gets.chomp

sentence_1 = "The best part about a #{noun} is that it can #{adverb} #{verb} and smell super #{adjective} at the same time."
sentence_2 = "My dog even likes to #{verb} but not as #{adverb} as a #{noun} and certainly not while being #{adjective}"
sentence_3 = "It's craziest when my dog and a #{noun} #{adverb} #{verb}s up #{adjective} Kevin's hole!"

prompt(sentence_1)
prompt(sentence_2)
prompt(sentence_3)

