def tricky_method(string_param, array_param)
  string_param += "rutabaga"
  array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]

tricky_method(my_string, my_array)
puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"