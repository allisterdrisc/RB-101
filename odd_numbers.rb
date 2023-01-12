# print all odd numbers from 1 to 99, inclusive, each on a separate line

# START
# SET numbers = a range from 1 to 99 inclusive
# LOOP over numbers 
  # IF number is odd
  # THEN PRINT number on separate line
# END

numbers = 1..99
numbers.each do |n|
  if n.odd?
    puts n
  end
end

# launch school's solution 

value = 1
while value <= 99
  puts value
  value += 2
end 

# another solution using a different approach

# START
# SET numbers = a range from 1 to 99 inclusive
# SET odd numbers = LOOP over range
                    # select value if odd
# LOOP over odd numbers values
  # PRINT each value
# END

numbers = 1..99
odd_numbers = numbers.select {|n| n.odd?}
odd_numbers.each { |n| puts n}
