# short long short
# write a method that takes two strings as arguments,
# determines the longest of the two strings, and then,
# returns the result of concatenating the shorter, the longer, the shorter again
# you may assume the strings are different lengths

# START
# given two strings of different lengths
# compare the lengths of the two strings to see which is longer
# IF string1 is longer than string2
# return string2 plus string1 plus string2 (no spaces between strings)
# ELSE
# return string1 plus string2 plus string1 (no spaces between strings)
# END

def short_long_short(string1, string2)
  if string1.length > string2.length
    string2 + string1 + string2
  else
    string1 + string2 + string1
  end
end
