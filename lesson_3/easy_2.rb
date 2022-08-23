# 1
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# puts ages.include?("Spot")
# puts ages.has_key?("Spot")
# puts ages.key?("Spot")
# puts ages.member?("Spot")


# 2
# munsters_description = "The Munsters are creepy in a good way."
# puts munsters_description.swapcase!
# puts munsters_description.capitalize!
# puts munsters_description.downcase!
# puts munsters_description.upcase!


# 3
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
# additional_ages = { "Marilyn" => 22, "Spot" => 237 }
# ages.merge!(additional_ages)
# puts ages


# 4
# advice = "Few things in life are as important as house training your pet dinosaur."
# puts advice.match?("Dino")


# 5
# flintstones = %W(Fred Barney Wilma Betty BamBam Pebbles)
# puts flintstones


# 6
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones << "Dino"
# puts flintstones


# 7
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# # flintstones << "Dino"
# flintstones.push("Dino").push("Hoppy")
# puts flintstones


# 8
# advice = "Few things in life are as important as house training your pet dinosaur."
# # puts advice.slice!(0, 36)
# # puts advice
#
# advice.slice!(0, advice.index('house'))  # => "Few things in life are as important as "
# p advice # => "house training your pet dinosaur."


# 9
# statement = "The Flintstones Rock!"
# puts statement.count("t")


# 10
# title = "Flintstone Family Members"
# puts title.center(40)
