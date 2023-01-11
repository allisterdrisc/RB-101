# given one integer that may be positive, negative, or zero
# find the numbers absolute value 
# return true if the numbers absolute value is odd 

# START
# given one integer that my be positive, negative, or zero
# take the integer and find its absolute value
# check if the absolute value is odd 
# IF it is odd 
# THEN return true 
# ELSE return false 
# END

def is_odd?(n)
  n.abs.odd?
end 

is_odd?(-7)

