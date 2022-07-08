def print_result(monthly_payment)
  puts "The monthly payment you are expected to make is: $#{monthly_payment}"
end

puts "Welcome to the Car Loan Calculator!"
puts "What's the loan amount in dolars?"
loan_amount = gets().chomp().to_i()

puts "What's the Annual percentage Rate (APR)?"
annual_percentage_rate = gets().chomp().to_i()

puts "How many months will the loan last?"
duration = gets().chomp().to_i()

monthly_percentage_rate = annual_percentage_rate.to_f / 1200.0

monthly_payment = loan_amount * (monthly_percentage_rate /
  (1 - (1 + monthly_percentage_rate)**(-duration)))

print_result(monthly_payment.round(2))
