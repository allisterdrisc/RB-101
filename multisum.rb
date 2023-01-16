# multiples of 3 and 5

# write a method that searches for all multiples of 3 or 5
# between 1 and some other number, and then computes the sum
# of those multiples
# ex: supplied number is 20, result is 98
# (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20)
# assume integers passed in are > 1

# START
# given an integer > 1
# SET range = 1 to integer (inclusive)
# LOOP over range and select numbers that are multiples of 3 or 5
# SET multiples = the numbers selected from the range
# SET total = 0
# LOOP over multiples and add each number to total
# return total
# END

def multisum(integer)
  range = 1..integer
  multiples = range.select { |i| i % 3 == 0 || i % 5 == 0 }
  sum = 0
  multiples.each { |i| sum += i }
  sum
end

# launch school's solution:
# theirs allows for more flexibility changing the divisors w the method

# def multiple?(number, divisor)
  # number % divisor == 0
# end

# def multisum(max_value)
  # sum = 0
  # 1.upto(max_value) do |number|
    # if multiple?(number, 3) || multiple?(number, 5)
      # sum += number
    # end
  # end
  # sum
# end