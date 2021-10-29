def tricky_method_two(string_param, array_param)
  string_param << 'rutabaga'
  array_param = ['pumpkins', 'rutabaga']
end

my_string = 'pumpkins'
my_array = ['pumpkins']
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"