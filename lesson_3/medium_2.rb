# 1
# a = "forty two"
# b = "forty two"
# c = a
#
# puts a.object_id
# puts b.object_id # this is another object
# puts c.object_id # this is the same as a


# 2
# a = 42
# b = 42
# c = a
#
# puts a.object_id
# puts b.object_id # same as a, this is related to numbers being immutables,
# # there will be only one object with value 42,
# # and all variables that get assigned to that value will reference the same object.
# puts c.object_id # same as a


# 3
# def tricky_method(a_string_param, an_array_param)
#   a_string_param += "rutabaga" # concatenation creates a new string!
#   an_array_param << "rutabaga" # appends pushes objects into the array, modifying the caller in the process
# end
#
# my_string = "pumpkins"
# my_array = ["pumpkins"]
# tricky_method(my_string, my_array)
#
# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"


# 4
#
# def tricky_method_two(a_string_param, an_array_param)
#   a_string_param << 'rutabaga'
#   an_array_param = ['pumpkins', 'rutabaga']
# end
#
# my_string = "pumpkins"
# my_array = ["pumpkins"]
# tricky_method_two(my_string, my_array)
#
# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"


# 5
# def tricky_method(a_string_param, an_array_param)
#   a_string_param += "rutabaga"
#   an_array_param += ["rutabaga"]
#
#   return a_string_param, an_array_param
# end
#
# my_string = "pumpkins"
# my_array = ["pumpkins"]
# my_string, my_array = tricky_method(my_string, my_array)
#
# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"


# 6
# def color_valid(color)
#   color == "blue" || color == "green"
# end

# puts color_valid("green")
