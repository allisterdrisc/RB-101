# write a program that prompts the user for two positive integers, and then prints the results of the following
# operations on those two numbers: addition, subtraction, product, quotient, remainder, and power
# don't worry about validating input

# START

# method definitions:
# addition
# given two numbers
# add num1 and num2 

# subtraction
# given two numbers
# subtract num2 from num1

# multiplication
# given two numbers
# multiply num1 by num2

# division
# given two numbers
# divide num1 by num2

# remainder
# given two numbers
# use modulo to divide num1 by num2 and return remainder

# power
# given two numbers
# put num1 to the power of num2 

# PRINT 'Enter the first number:'
# SET number1 = GET user input turn into float
# PRINT 'Enter the second number:'
# SET number2 = GET user input turn into float

# PRINT "number1 + number2 = (addition)"
# PRINT "number1 - number2 = (subtraction)"
# PRINT "number1 * number2 = (multiplication)"
# PRINT "number1 / number2 = (division)"
# PRINT "number1 % number2 = (remainder)"
# PRINT "number1 ** number2 = (power)"

# END

def addition(num1, num2)
  (num1 + num2).round(2)
end 

def subtraction(num1, num2)
  (num1 - num2).round(2)
end 

def multiplication(num1, num2)
  (num1 * num2).round(2)
end 

def division(num1, num2)
  (num1 / num2).round(2)
end 

def remainder(num1, num2)
  (num1 % num2).round(2)
end 

def power(num1, num2)
  (num1 ** num2).round(2)
end

puts 'Enter the first number:'
number1 = gets.chomp.to_f
puts 'Enter the second number:'
number2 = gets.chomp.to_f

puts "#{number1} + #{number2} = #{addition(number1, number2)}"
puts "#{number1} - #{number2} = #{subtraction(number1, number2)}"
puts "#{number1} * #{number2} = #{multiplication(number1, number2)}"
puts "#{number1} / #{number2} = #{division(number1, number2)}"
puts "#{number1} % #{number2} = #{remainder(number1, number2)}"
puts "#{number1} ** #{number2} = #{power(number1, number2)}"

# launch school's solution opted for not having methods for the arithmetic 
# and did the math within the lines of code that printed to the console

def prompt(message)
  puts "==> #{message}"
end

prompt("Enter the first number:")
first_number = gets.chomp.to_i
prompt("Enter the second number:")
second_number = gets.chomp.to_i

prompt("#{first_number} + #{second_number} = #{first_number + second_number}")
prompt("#{first_number} - #{second_number} = #{first_number - second_number}")
prompt("#{first_number} * #{second_number} = #{first_number * second_number}")
prompt("#{first_number} / #{second_number} = #{first_number / second_number}")
prompt("#{first_number} % #{second_number} = #{first_number % second_number}")
prompt("#{first_number} ** #{second_number} = #{first_number**second_number}")