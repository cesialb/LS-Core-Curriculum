# Problem:
  # Write a CircularQueue class that implements a circular queue
  # Circular queue?
    # Collection of objects stored in a buffer
    # Obj added to queue => added to position following most recently added obj
    # If buffer is full => obj that's been there the longest is removed/replaced

# CQ obj will be initialized with the buffer size
# #enqueue will add an object
# #dequeue will remove and return the oldest obj in the queue
  # Returns nil if empty

# Mental Model:
  # Have a CircularQueue class that holds an array of CircularObjects
  # CO class has a class variable for age, instance variable for value and age
  # When adding values to the queue:
    # Check to see if the queue is full
      # If it's full
        # find the CO obj with the lowest age and replace it with new obj
      # If it's not full
        # if there's one space open, add it there
        # otherwise, find the CO obj w/the lowest age & put new object +1 pos from it

# Data Structure:
  # CQ class is just going to hold an array and have the two methods
  # CO class will have two states, and a class variable tracking age of the objects

# Algorithm:

# class CircularQueue
#   attr_accessor :arr

#   def initialize(buffer_size)
#     @arr = [nil] * buffer_size
#     @next_pos = 0
#     @oldest_pos = 0
#   end

#   def [](idx)
#     @arr[idx]
#   end

#   def []=(value, idx)
#     @arr[idx] = value
#   end

#   def enqueue(value)
#     @arr.each_with_index do |place, idx|
#       if place == nil
#         @arr[idx] = value
#         break
#       end
#     end
#   end

#   def dequeue
#     return nil if arr.all?(nil)
#     arr.each do |obj|
#       obj.age
#     end
#   end

#   def to_s
#     @arr
#   end
# end

# class CircularObject
#   @@history = 0
#   attr_accessor

#   def initialize(value)
#     @age = @@history
#     @value = value
#     @@history += 1
#   end
# end

# queue = CircularQueue.new(3)
# puts queue.dequeue == nil
# queue.enqueue(1)
# queue.enqueue(2)
# puts queue.dequeue

# couldn't solve it :(

class CircularQueue
  def initialize(size)
    @size = size
    @queue = []
  end

  def enqueue(obj)
    dequeue if full?
    @queue << obj
  end

  def dequeue
    @queue.shift
  end

  private

  def full?
    @queue.size == @size
  end
end

queue = CircularQueue.new(3)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil

queue = CircularQueue.new(4)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 4
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil