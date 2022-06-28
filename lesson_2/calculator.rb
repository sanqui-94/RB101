
def add(a, b)
  a + b
end

def substract(a, b)
  a - b
end

def multiply(a, b)
  a * b
end

def divide(a, b)
  a.to_f / b.to_f
end


puts "Please give me 2 operands."
a = gets().chomp.to_i
b = gets().chomp.to_i

puts "What operation should I perform? (add, substract, multiply or divide)"
operation = gets().chomp.upcase

case operation
  when "ADD" then puts add(a, b)
  when "SUBSTRACT" then puts substract(a, b)
  when "MULTIPLY" then puts multiply(a, b)
  when "DIVIDE" then puts divide(a, b)
end
