=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string
-  Output: true or false
---
**Problem Domain:**
- Spelling block: collection of two letters
  Ex. B:O, X:K, G:T, etc.
- In this program, spelling blocks limit the words you can spell
  - If a word uses one letter from a block, it cannot use the other
- Each block can only be used once
- Write a method that evaluates if a word can be spelled from a set of blocks
- Spelling blocks:
  B:O   X:K   D:Q   C:P   N:A
  G:T   R:E   F:S   J:W   H:U
  V:I   L:Y   Z:M
- Can 'BATCH' be spelled from this? => yes (true)
- Can 'BUTCH' be spelled from this? => no (false) - you'd have to use H:U twice

---
**Implicit Requirements:**
- Lowercase and uppercase strings should be treated the same
- Returning a pure boolean - no truthy or falsey values

---
**Clarifying Questions:**
1.
2.
3.
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 'BATCH'
  -  Output: true
-  Example 2
  -  Inputs: 'jest'
  -  Output: true
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
- Input value is a string
- Output value is a boolean
- To hold the collection: hash
  - Hash structure:
    { {'B' => false, 'O' => false }, etc... }
---
Algorithm
---------
- Method passes in string as a parameter
- Split string into an array of letters
- Iterate through array of letters, accessing each element
  - Iterate through block hash, accessing each sub-hash
    - Check keys of sub_hash - does it include letter?
      - If it does, check values of sub_hash - are both false?
        - If they are, hash[letter] = true
        - If they aren't, return false
- leave return true for fall-off return value

Code
----
=end

# couldn't figure it out :(

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end

p block_word?('BATCH')