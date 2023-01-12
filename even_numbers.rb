# print all even numbers from 1 to 99, inclusive, each on a separate line

# START
# SET numbers = range from 1 to 99 inclusive
# SET even numbers = LOOP over range
                      # select value if even
# LOOP over even numbers
  # PRINT even numbers, each on separate line
# END

numbers = 1..99
even_numbers = numbers.select {|n| n.even?}
even_numbers.each { |n| puts n}

# launch school's solution

value = 1
while value <= 99
  puts value if value.even?
  value += 1
end 