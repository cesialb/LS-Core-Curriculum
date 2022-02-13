=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs:
-  Output:
---
**Problem Domain:**
- Complete this class so the test cases work as intended
- Free to add any methods or instance variables needed
- Do not make the implementation details public
- Assume the input will always fit in the terminal window

---
**Implicit Requirements:**
---
**Clarifying Questions:**
1.
2.
3.
---
**Mental Model:**
- Horizontal rule: plus sign + ((dash * length of string) + 2) + plus sign
- Empty line: pipe + ((space * length of string) + 2) + pipe
- Message: pipe + space + message + space + pipe

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
- Working within Banner class
---
Algorithm
---------
- Horizontal_rule
  '+' + ('-' * (length of message) + 2)) + '+'

- Empty line
  '|' + (' ' * (length of message + 2)) + '|'


Code
----
=end

class Banner
  attr_writer :message
  
  def initialize(message)
    @message = message
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def horizontal_rule
    "+-#{'-' * (@message.size)}-+"
  end

  def empty_line
    "| #{' ' * (@message.size)} |"
  end

  def message_line
    "| #{@message} |"
  end
end

banner = Banner.new('')
banner.message = 'Pollos'
puts banner