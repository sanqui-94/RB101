# 1
# numbers = [1, 2, 2, 3]
# numbers.uniq
#
# puts numbers


# 2
# `!` can be a negation operator, or it can be used to mark a function as
# destructive that is, a method that will modify the caller, additionaly, the
# exclamation sign can be used to convert a value into its boolean representation.
# `?` can be a ternary operator to describe conditions, in other context
# is used as part of the name of methods that will have a boolean return value.

# 3
# advice = "Few things in life are as important as house training your pet dinosaur."
# advice.gsub!('important', 'urgent')
# puts advice


# 4
# numbers = [1, 2, 2, 3]
# numbers.delete_at(1) # deletes item at index
# puts numbers
# puts 'hey'
# numbers.delete(1) # deletes the first item that matches the value passed as argument
# puts numbers


# 5
# puts 42 > 10 && 42 < 100
# puts (10..100).cover?(42)

#6
# famous_words = "seven years ago..."
# puts "Four score and #{famous_words}"
# puts "Four score and " << famous_words


#7
# flintstones = ["Fred", "Wilma"]
# flintstones << ["Barney", "Betty"]
# flintstones << ["BamBam", "Pebbles"]
# puts flintstones.flatten

#8
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
# puts flintstones.slice("Barney")
puts flintstones.assoc("Barney")
