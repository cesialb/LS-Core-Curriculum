# Exercise 1
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each do |num|
  puts num
end

# Exercise 2
arr.each do |num|
  puts num if num > 5
end

# Exercise 3
new_arr = arr.select { |num| num.odd? }
p new_arr

# Exercise 4
arr.push(11)
arr.unshift(0)
p arr

# Exercise 5
arr.pop
arr.push(3)
p arr

# Exercise 6
arr.uniq!
p arr

# Exercise 8
hash = { city: 'New York' }
hash = { :city => 'New York' }

# Exercise 9
h = { a: 1, b: 2, c: 3, d: 4 }
p h[:b]
h[:e] = 5
p h

new_h = h.reject {|key, val| val < 3.5}
p new_h

# Exercise 10
h = { b: [1, 2, 3] }
hash_arr = [{a: 1, b: 2}, 'lol']

# Exercise 11
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts['Joe Smith'][:email] = contact_data[0][0]
contacts['Joe Smith'][:address] = contact_data[0][1]
contacts['Joe Smith'][:phone] = contact_data[0][2]

contacts['Sally Johnson'][:email] = contact_data[1][0]
contacts['Sally Johnson'][:address] = contact_data[1][1]
contacts['Sally Johnson'][:phone] = contact_data[1][2]

# Exercise 12
contacts['Joe Smith'][:email]
contacts['Sally Johnson'][:phone]

# Exercise 13
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |word| word.start_with?('s')}

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |word| word.start_with?('s', 'w')}

# Exercise 14
a = ['white snow', 'winter wonderland', 'melting ice',
  'slippery sidewalk', 'salted roads', 'white trees']

new_arr = a.map do |seq|
  seq.split
end.flatten

p new_arr

# Exercise 16
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567", "sally@email.com", "404 Not Found Dr.", "123-234-3454"]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts.each do |key, _|
  [:email, :address, :phone].each do |attribute|
    contacts[key][attribute] = contact_data.shift
  end
end

p contacts
