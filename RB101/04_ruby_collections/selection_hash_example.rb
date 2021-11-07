produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}


# Inputs: hash
# Outputs: new hash, containing key-value pairs where the value is "fruit"

# Examples:
#   - select_fruit(produce) # => {"apple"=> "Fruit", "pear"=>"Fruit"}

# Data Structure
#   - new hash of selected key-value pairs

# Algorithm
#   - Create new empty hash
#   - Iterate through existing hash
#   - Copy key-value pair over to new hash if the value is equal to "Fruit"
#   - Stop iterating at the end of the hash
#   - Return the new hash

def select_fruit(produce)
  produce_keys = produce.keys
  counter = 0
  selected_fruits = {}

  loop do
    # just in case the hash is empty
    break if counter == produce_keys.size

    current_key = produce_keys[counter]
    current_value = produce[current_key]

    if current_value == 'Fruit'
      selected_fruits[current_key] = current_value
    end

    counter += 1

  end

  selected_fruits
end

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
