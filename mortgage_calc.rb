# mortgage / car loan calculator

# need 3 peices of info: the loan amount, the Annual Percentage Rate (APR), and the loan duration 
# using the above info, calculate the monthly interest rate, loan duration in months, and monthly payment

# use the following formula:
# m = p * (j / (1 - (1 + j)**(-n)))
# m = monthly payment
# p = loan payment
# j = monthly interest rate
# n = loan duration in months 
# use explixit names for variables in the program, not single-letters m, p, j, n

# hints:
# figure out what format inputs need to be in. Ex: should interest rate be expressed as 5 or .05 if you mean 5% interest?
# If you're working with Annual Percentage Rate (APR), you'll need to convert that to a monthly interest rate
# Be careful about the loan duration. Are you working with months or years? Name variables carefully to assist in remembering

# pseudo code:
# create a method for displaying messages to user
# display a welcome message
# ask user for their laon amount 
# ask user for their annual percentage rate (annaul as in per year)
# ask the user for their loan duration in years
# calculate the monthly interest rate using the APR
# calculate the loan duration in months using the loan duration in years
# calculate the monthly payment using the formula referenced above
# print "Your monthly interest rate:(monthly interest rate)"
# print "Your loan duration in months is (loan duration in months)"
# print "Your monthly payment is (monthly payment)"

# START

# prompt method:
# given a string
# PRINT "==> (string)"

# LOOP

# prompt "Welcome to Mortgage Calculator!"

# SET loan_amount = ''
# LOOP
# prompt "What is your loan amount?"
# SET loan_amount = GET user input, remove trailing newline character
# IF loan_amount is empty or less than 0 
# prompt "Please enter a positive number."
# ELSE 
# break out of loop

# SET APR = ''
# LOOP
# prompt "What is your Annual Percentage Rate (APR)?"
# SET APR = GET user input, remove trailing newline character
# IF APR is empty or less than 0 
# prompt "Please enter a positive number."
# ELSE
# break out of loop

# SET duration_years = ''
# LOOP
# prompt "What is your loan duration in years?"
# SET duration_years = GET user input, remove trailing newline character
# IF duration_years is empty or less than 0
# prompt "Please enter a positive number."
# ELSE
# break out of loop

# SET monthly_rate = (APR / 100) / 12
# SET duration_months = duration_years multiplied by 12
# SET monthly_payment = loan_amount * (monthly_rate / (1 - (1 + monthly_rate)**(-duration_months)))

# prompt "Your monthly interest rate:(monthly interest rate)"
# prompt "Your loan duration in months is (loan duration in months)"
# prompt "Your monthly payment is (monthly payment)"

# prompt "Would you like to do another calculation? (y/n)"
# SET response = GET user input, remove trailing newline character
# IF response equals 'n'
# break out of loop

# prompt "Thank you for using Mortgage Calculator!"
# END

def prompt(string)
  puts "==> #{string}"
end

loop do
  prompt("Welcome to Mortgage Calculator!")

  loan_amount = ''
  loop do
    prompt("What's your loan amount")
    loan_amount = gets.chomp
    if (loan_amount.empty?) || (loan_amount.to_f < 0)
      prompt("Please enter a positive number.")
    else
      break
    end
  end 

  apr = ''
  loop do
    prompt("What's your Annual Percentage Rate (APR)?")
    prompt("For example: enter 5 for 5%")
    apr = gets.chomp
    if (apr.empty?) || (apr.to_f < 0)
      prompt("Please enter a positive number.")
    else
      break
    end
  end

  duration_years = ''
  loop do
    prompt("What is your loan duration in years?")
    duration_years = gets.chomp
    if (duration_years.empty?) || (duration_years.to_i < 0)
      prompt("Please enter a positive number.")
    else
      break
    end
  end 

  monthly_rate = (apr.to_f / 100) / 12
  duration_months = duration_years.to_i * 12
  monthly_payment = loan_amount.to_f * (monthly_rate / (1 - (1 + monthly_rate)**(-duration_months)))

  prompt("Your monthly interest rate is #{format("%.2f", monthly_rate)}")
  prompt("Your loan duration in months is #{format("%.2f", duration_months)}")
  prompt("Your monthly payment is #{format("%.2f", monthly_payment)}")

  prompt("Would you like to do another calculation? (y/n)")
  response = gets.chomp.downcase
  break if response == 'n'
end

prompt("Thank you for using Mortgage Calculator!")

