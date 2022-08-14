# Problem
  # what is a linked list?
  # simplest kind of linked list is a singly linked list
  # each element contains data, and a 'next field' pointing to the next element
  # used often in sequences, or last-in-first-out stacks

  # create a singly linked list whose elements contain a range of data
  # create functions to reverse the LL and convert it to/from an array

  # need an Element class, and a Singly Linked List class
  # Element class seems to hold the value, and has a method #next
  # #next holds the next element 

# Examples
  # Element class
    # has a constructor that passes in the value
    # also an optional argument that holds the next element
    # #tail method that returns a boolean if it is the tail of the LL
      # it's the tail if there is nothing in #next
    # method that returns the next element in the list

class Element
  attr_reader :datum

  def initialize(datum, next_element=nil)
    @datum = datum
    @next = next_element
  end

  def tail?
    @next.nil?
  end

  def next
    tail? ? nil : @next
  end
end

class SimpleLinkedList
  def initialize
    @head = []
  end

  def from_a(arr=[])
    list = SimpleLinkedList.new

  end

  def push(element)
    @head.push(element)
  end
end