# 1
# 1..10.times { |n| puts (" "* n) + "The Flintstones Rock!" }


# 2
# puts "the value of 40 + 2 is " + (40 + 2) # error
# puts "the value of 40 + 2 is #{40 + 2}" # no error


# 3
# def factors(number)
#   return if number <= 0
#   divisor = number
#   factors = []
#   while divisor > 0
#     factors << number / divisor if number % divisor == 0
#     divisor -= 1
#   end
#   factors
# end
# puts factors(21)


# 4
# def rolling_buffer1(buffer, max_buffer_size, new_element)
#   buffer << new_element # this line modified the caller
#   buffer.shift if buffer.size > max_buffer_size
#   buffer
# end
#
# def rolling_buffer2(input_array, max_buffer_size, new_element)
#   input_array = input_array + [new_element] # this line assigns a new value to the variable input_array, it does not modify the caller
#   input_array.shift if input_array.size > max_buffer_size
#   input_array
# end
#
# n = [1, 2 ,3 ,4]
# # puts rolling_buffer1(n, 4, 5)
# puts rolling_buffer2(n, 4, 5)
# # puts rolling_buffer1(n, 4, 5)


# 5
# limit = 15
#
# def fib(first_num, second_num, limit)
#   while first_num + second_num < limit
#     sum = first_num + second_num
#     first_num = second_num
#     second_num = sum
#   end
#   sum
# end
#
# result = fib(0, 1, limit)
# puts "result is #{result}"


# 6
# answer = 42
#
# def mess_with_it(some_number)
#   some_number += 8
# end
#
# new_answer = mess_with_it(answer)
#
# p answer - 8



# 7
# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"},
#   # "hey" => 200,
#   # "ya" => 500
# }
#
# def mess_with_demographics(demo_hash)
#   demo_hash.values.each do |family_member|
#     family_member["age"] += 42
#     family_member["gender"] = "other"
#     # family_member += 42
#     puts family_member
#   end
# end
#
#
# puts mess_with_demographics(munsters)
# puts munsters

# the data gets ransacked, because the array of values contains copies to the references
# of the objects(hashes) that are linked to each of the elements of the hash,
# and objects are mutable, that means the updates on the references change the object
# they are pointing to.



# 8
# def rps(fist1, fist2)
#   if fist1 == "rock"
#     (fist2 == "paper") ? "paper" : "rock"
#   elsif fist1 == "paper"
#     (fist2 == "scissors") ? "scissors" : "paper"
#   else
#     (fist2 == "rock") ? "rock" : "scissors"
#   end
# end

# puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")
#    rps(rps(paper, rock), rock)
#    rps(paper, rock)
#    paper



# 9
def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end


puts bar(foo)
