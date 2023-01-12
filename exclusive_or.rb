# write a method that takes 2 arguments, and returns true if exactly 1 of its arguments is truthy, false otherwise

# START
# given 2 arguments: value1 and value2
# IF value1 and value2 are both true 
# return false
# ELSEIF value1 or value2 are true
# return true
# ELSE value1 and value2 are both false
# return false
# END

def xor?(value1, value2)
  if value1 && value2 == true
    false
  elsif value1 || value2 == true
    true
  else
    false
  end 
end

# launch school's solution using the not operator to make things more concise 

def xor?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false
end 