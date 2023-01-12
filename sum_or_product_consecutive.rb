# write a program that asks user to enter an integer greater than 0, then asks if user wants to determine 
# the sum or product of all numbers between 1 and the entered integer

# START
# PRINT "Please enter an integer greater than 0:"
# SET number = GET user input turned to integer
# PRINT "Enter 's' to compute the sum, 'p' to compute the product."
# SET operation = GET user input, turned to lowercase
# SET range = 1 to number, inclusive
# SET sum = 0
# SET product = 1
# IF operation equals s
# THEN LOOP over range
  # add each number in range to sum
  # PRINT "The sum of the integers between 1 and (number) is (sum)"
# ELSEIF operation equals p
# THEN LOOP over range
  # multiply product by each number in range
  # PRINT "The product of the integers between 1 and (number) is (product)"
# ELSE 
  # PRINT "invalid input sorry"
# END

puts "Please enter an integer greater than 0:"
number = gets.to_i
puts "Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp.downcase

range = 1..number
sum = 0
product = 1

if operation == 's'
  range.each {|n| sum += n}
  puts "The sum of the integers between 1 and #{number} is #{sum}."
elsif operation == 'p'
  range.each {|n| product *= n}
  puts "The product of the integers between 1 and #{number} is #{product}."
else
  puts "Sorry, invalid input."
end

# launch school's solution created methods to call on rather than have the logic in the if/then fully written out

def compute_sum(number)
  total = 0
  1.upto(number) { |value| total += value }
  total
end

def compute_product(number)
  total = 1
  1.upto(numnber) { |value| total *= value }
  total
end

puts "Please enter an integer greater than 0"
number = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

if operation == 's'
  sum = compute_sum(number)
  puts "The sum of the integers between 1 and #{number} is #{sum}."
elsif operation == 'p'
  product = compute_product(number)
  puts "The product of the integers between 1 and #{number} is #{product}."
else
  puts "Oops. Unknown operation."
end 

