# using multiply method from previous problem, write a method that computes the square of its argument

def multiply(num1, num2)
  num1 * num2
end

# START
# given a number
# use multiply method with the arguments both set to number
# that will return number * number
# END 

def square(num)
  multiply(num, num)
end 

# power to the n type method, still using multiple

# START
# given two numbers, number1 and number2
# multiply(number1, 1) => number1
# take the result of multiply and put it to the power of number2
# END

def power_of(number1, number2)
  (multiply(number1, 1)) ** number2
end 

