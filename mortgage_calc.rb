# mortgage / car loan calculator
# takes 3 peices of info: the loan amount, the Annual Percentage Rate (APR), and the loan duration 
# using the above info, calculate the monthly interest rate, loan duration in months, and monthly payment
# you can use the following formula:
# m = p * (j / (1 - (1 + j)**(-n)))
# m = monthly payment
# p = loan payment
# j = monthly interest rate
# n = loan duration in months 
# use explixit names for variables in the program, not single-letters m, p, j, n

# hints:
# figure out what format inputs need to be in. Ex: should interest rate be expressed as 5 or .05 if you mean 5% interest?
# If you're working with Annual Percentage Rate (APR), you'll need to convert that to a monthly interest rate
# Be careful about the loan duration. Are you working with months or years? Choose variable names carefully to assist in remembering

# pseudo code:
# given the loan amount, the APR, and the loan duration
# calculate the monthly interest rate, loan duration in months, and monhtly payment
# monthly interest rate = APR divided by 12
# loan duration in months = total loan duration multiplies by 12 if given in years. If given in months then leave alone.
# monthly payment = loan amount multiplied by (the monthly interest rate divided by (1 - (1+ monthly interest rate)to the negative loan duration in months power)) 

# START
# PRINT "Enter your loan amount:"
# GET/SET loan_amount = user input
# PRINT "Enter the Annual Percentage Rate (APR):"
# GET/SET apr = user input
# PRINT "Enter the loan duration:"
# GET/SET duration = user input
# SET/READ monthly_interest = apr / 12
# SET/READ duration_months = duration * 12
# SET/READ monthly_payment = loan_amount * (monthly_interest / (1 - (1 + monthly_interest)**(-duration_months)))
# PRINT "Your monthly interest rate is {monhtly_interest}"
      # "Your loan duration in months is {duration_months}"
      # "And your monthly payment is {monthly_payment}"
# END

 # def prompt(message)
 #  puts "=> #{message}"
 # end 

 # prompt("Enter your loan amount:")
 # loan_amount = gets.chomp.to_f

 # prompt("Enter the Annual Percentage Rate (APR):")
 # apr = gets.chomp.to_f

 # prompt("Enter the loan duration in years:")
 # duration = gets.chomp.to_f

 # monthly_interest = apr / 12
 # duration_months = duration * 12
 # monthly_payment = loan_amount * (monthly_interest / (1 - (1 + monthly_interest)**(-duration_months)))

 # puts <<-MSG 
 #   Your monthly interest rate is #{monthly_interest}.
 #   Your loan duration in months is #{duration_months}.
 #   And your monthly payment is #{monthly_payment}.
 # MSG

 def prompt(message)
  Kernel.puts("=> #{message}")
end

loop do
  prompt("Welcome to Mortgage Calculator!")
  prompt("-------------------------------")

  prompt("What is the loan amount?")

  amount = ''
  loop do
    amount = Kernel.gets().chomp()

    if amount.empty?() || amount.to_f() < 0
      prompt("Must enter positive number.")
    else
      break
    end
  end

  prompt("What is the interest rate?")
  prompt("(Example: 5 for 5% or 2.5 for 2.5%)")

  interest_rate = ''
  loop do
    interest_rate = Kernel.gets().chomp()

    if interest_rate.empty?() || interest_rate.to_f() < 0
      prompt("Must enter positive number.")
    else
      break
    end
  end

  prompt("What is the loan duration (in years)?")

  years = ''
  loop do
    years = Kernel.gets().chomp()

    if years.empty?() || years.to_i() < 0
      prompt("Enter a valid number")
    else
      break
    end
  end

  annual_interest_rate = interest_rate.to_f() / 100
  monthly_interest_rate = annual_interest_rate / 12
  months = years.to_i() * 12

  monthly_payment = amount.to_f() *
                    (monthly_interest_rate/
                    (1 - (1 + monthly_interest_rate)**(-months)))

  prompt("Your monthly payment is: $#{format('%.2f', monthly_payment)}")

  prompt("Another calculation?")
  answer = Kernel.gets().chomp()

  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using the Mortgage Calculator!")
prompt("Good bye!")
