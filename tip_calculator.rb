# create a simple tip calculator
# prompt user for bill amount and tip rate
# compute the tip
# display the tip and also the total amount of the bill w tip

# START
# PRINT "What is the bill?"
# SET bill = GET input to a float
# PRINT "What is the tip percentage?"
# SET percent = GET input to a float
# SET tip = (percent / 100) * bill
# SET total = bill + tip 
# PRINT "The tip is (tip)" (and make sure theres 2 decimal places included at the end)
# PRINT "The total is (total)" (and make sure theres 2 decimal places included at the end)
# END

puts "What is the bill?"
bill = gets.chomp.to_f
puts "What is the tip percentage?"
percent = gets.chomp.to_f

tip = (percent/100) * bill
total = bill + tip

puts "The tip is #{format("%.2f", tip)}"
puts "The total is #{format("%.2f", total)}"