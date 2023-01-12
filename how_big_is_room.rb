# ask user for the length and width of a room in meters
# display the area of the room in both square meters and square feet
# 1 square meter == 10.7639 square feet
# don't worry about validating input

# START
# SET constant SQMETER_TO_SQFT = 10.7639
# PRINT "Enter the length of the room in meters:"
# SET length = GET number from user (in string) turn into float
# PRINT "Enter the width of the room in meters:"
# SET width = GET number from user (in string) turn into float
# SET area = length times width and cap off numbers after decimal to 2 
# SET area_in_feet = area times SQMETER_TO_SQFT and cap off numbers after decimal to 2
# PRINT "The area of the room is (area) square meters ((area_in_feet) square feet)."
# END

SQMETER_TO_SQFT = 10.7639

puts "Enter the length of the room in meters:"
length = gets.to_f
puts "Enter the width of the room in meters:"
width = gets.to_f

area = (length * width).round(2)
area_in_feet = (area * SQMETER_TO_SQFT).round(2)

puts  "The area of the room is #{area} square meters (#{area_in_feet} square feet)."
