=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: positive integer (n)
-  Output: array identifying which lights are on after n repetitions
---
**Problem Domain:**
- Bank of switches, numbered from 1 to n
- Each switch is connected to a light that's initially OFF
- First pass, every switch is hit and toggled 
- Second pass, only 2, 4, 6, 8... are toggled 
- Third pass, only 3, 6, 9... are toggled
- Repeat this for n repetitions, then return the array of the lights that are ON

---
**Implicit Requirements:**
---
**Clarifying Questions:**
1.
2.
3.
---
**Mental Model:**
- n = 5 lights example:
  - round 1: every light turned ON
  - round 2: lights 2 and 4 are OFF (we hit 2, 4). 1, 3, 5 are ON
  - round 3: lights 2, 3, 4 are OFF (we hit 3). 1, 5 are ON
  - round 4: lights 2 and 3 are OFF (we hit 4). 1, 4, 5 are ON
  - round 5: lights 2, 3, 5 are OFF (we hit 5). 1, 4 are ON
  - return [1, 4]
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 10
  -  Output: [1, 4, 9]
-  Example 2
  -  Inputs:
  -  Output:
---
_Your Test Cases:_
-  Example 3
  -  Inputs:
  -  Output:
---
_Your Edge Cases:_
-  Example 4
  -  Inputs:
  -  Output:
---
Data Structure
--------------
- Input value is an integer
- Output value is an array
- We need to hold the state of the light at all times - hash for light and state
---
Algorithm
---------
- Method passes in integer as argument
- Build a hash, number of keys is the integer, set all values to false
- Set count to 1
- Begin looping through the hash, accessing the index, until count >= n
  - For every index % count == 0, change the value to !value
  - Increment index by 1
- Return the hash keys whose values are equal to 'ON', which should be the correct light numbers

Code
----
=end

# building hash, setting each light to OFF
def build_hash(num)
  lights = {}
  1.upto(num) {|x| lights[x] = false }
  lights
end

# returning ON-toggled light numbers as an array
def on_lights_array(light_hash)
  light_nums = []
  light_hash.each { |light, state| light_nums << light if state == true }
  light_nums
end

# main method
def lights(num)
  light_hash = build_hash(num)
  count = 1

  # iterating through light hash for n repetitions
  while count <= num
    light_hash.each do |light, state|
      light_hash[light] = !state if light % count == 0
    end
    count += 1
  end
  
  on_lights_array(light_hash)
end

p lights(5)
p lights(10)