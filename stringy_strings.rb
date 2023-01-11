# given a positive integer 
# return a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer

# START
# given a positive integer
# label the positive integer argument as "length"
# SET numbers = an empty array
# length number of times loop over
  # SET number = if the index is even 1, if the index is odd 0
  # add number to the numbers array
# combine the array of numbers into a string
# END

def stringy(length)
  numbers = []
  
  length.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end 

  numbers.join
end 