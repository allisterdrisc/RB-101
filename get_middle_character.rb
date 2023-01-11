# given a non-empty string argumnent
# return the middle character or characters of the argument
# if the argument has an odd length, return one character
# if the argument has an even length, return two characters

# START
# given a non-empty string
# SET length = length of string
# SET middle_index = length / 2
# IF length is odd 
# THEN return the character from string at middle index 
# ELSEIF length is even
# THEN return the character from string at one less from the middle index, plus the one after it
# END

def center_of(string)
  length = string.length
  middle_index = length / 2
  if length.odd?
    string[middle_index]
  else
    string[(middle_index - 1), 2]
  end
end 