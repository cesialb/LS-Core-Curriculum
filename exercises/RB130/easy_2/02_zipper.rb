# Problem
# write custom #zip 
# arrays are the same size
# return new array, do not change original arrays

# Mental Model
# set new_arr to []
# set counter to 0
# until counter == arr1.size
  # new_arr << [arr1[counter], arr2[counter]]
# new_arr

# Data Structure
# input - two arrays
# output - new array

# Algorithm
# see Mental Model

def zip(arr1, arr2)
  new_arr = []
  counter = 0

  until counter == arr1.size
    new_arr << [arr1[counter], arr2[counter]]
    counter += 1
  end

  new_arr
end

p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]