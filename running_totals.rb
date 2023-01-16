# running totals
# write a method that takes an Array of numbers, and returns an Array 
# with the same number of elements
# and each element has the running total from the original Array
# ex:
# running_total([2, 5, 13]) == [2, 7, 20]
# running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# running_total([3]) == [3]
# running_total([]) == []

# START
# given an array of numbers (array)
# SET sum = 0
# LOOP each element from array
# is the value of sum plus itself added together
# for example:
# number at idx 0 returns itself plus 0
# number at idx 1 returns itself plus the value of sum which is now the value at idx 0 
# number at idx 2 returns itself plus the value of sum which is now the value of idx 0 plus idx 1
# and so on
# END

def running_total(array)
  sum = 0
  array.map { |number| sum += number }
end
