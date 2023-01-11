# given 2 arguments, a positive integer and a boolean
# calculate the bonus for a given salary
# if the boolean is true, the bonus should be half the salary
# if the boolean is false, the bonus should be zero

# START
# given a positive integer (salary) and a boolean (bonus)
# IF bonus = true then retrurn the salary divided by 2
# IF bonus = false then return 0 
# END

def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end 