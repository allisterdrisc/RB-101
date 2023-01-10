# given a string and a positive integer
# print the string as many times as the integer indicates

# START
# SET words = string
# SET count = positive integer 
# WHILE count is greater than 0
  # PRINT words
  # decrease count by 1
# END

def repeat(words, count)
  while count > 0
    puts words
    count -= 1
  end 
end

repeat('Test run 1234', 7)