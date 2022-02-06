=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: 
-  Output:
---
**Problem Domain:**
- Build a miniature stack-and-register-based programming language
- Stack - list of values that grow and shink dynamically
  - in Ruby, stack can be implemented using an array w/push + pop methods
    - [3, 4, 5]
      - 5 is the top of the stack
      - use pop to remove 5 from the stack
      - use push to add something to the stack (ex. 6)
        - [3, 4, 5] --> [3, 4] --> [3, 4, 6]
- Each operation in the language works on a register (current value)
  - Register value is not part of the stack
- MULT operation in a SRL:
  - multiples stack value with register value
  - removes stack value from the stack
  - stores the result back in the register value
  - Ex. 
    [3, 6, 4] - 4 is topmost item in stack, with register value of 7
    MULT --> [3, 6] with a register value of 28
    MULT --> [3] with a register value of 168
---
**Implicit Requirements:**
- all operations are integer operations
- all values will be integers
- initialize register to 0
- the operations will be pushed as strings, passed into the method as an argument
  - all operations will be correct 
---
**Clarifying Questions:**
1.
2.
3.
---
**Mental Model:**
- Write a method that does these things:
  - n: place a value in the register, without modifying the stack
  - PUSH: push register value onto the stack, leave value in register
  - ADD: pop value from stack, add it to register value
    - stores result in register
  - SUB: pop value from stack, subtract it from register value
    - stores result in register
  - MULT: pop value from stack, multiplies it by register value
    - stores result in register
  - DIV: pop value from stack, divides it into register value
    - stores result in register
  - MOD: pop value from stack, divides it into register value
    - stores integer remainder of division in the register
  - POP: remove topmost item from stack, and place in register
  - PRINT: print register value
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs:
  -  Output:
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
- Input value will be string
- Stack will be an array of integers
- Register value will be an integer
- Only output will be when the register value is printed

---
Algorithm
---------
- Method passes in string as argument
  - Set register value to 0
  - Set stack to empty array
  - n operation - helper method (register and n as argument)
  - Print operation - helper method (register as argument)
  - Push operation - helper method (stack as argument)
  - Add operation - helper method (stack and register as argument)
  - Sub operation - helper method (stack and register as argument)
  - Mult operation - helper method (stack and register as argument)
  - Div operation - helper method (stack and register as argument)
  - Mod operation - helper method (stack and register as argument)
  - Pop operation - helper method (stack and register as argument)
Code
----
=end

# helper methods increased the complexity of the program
# could not figure out because of it, but understood the logic

def minilang(program)
  stack = []
  register = 0
  program.split.each do |token|
    case token
    when 'ADD'   then register += stack.pop
    when 'DIV'   then register /= stack.pop
    when 'MULT'  then register *= stack.pop
    when 'MOD'   then register %= stack.pop
    when 'SUB'   then register -= stack.pop
    when 'PUSH'  then stack.push(register)
    when 'POP'   then register = stack.pop
    when 'PRINT' then p register
    else              register = token.to_i
    end
  end
end

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)