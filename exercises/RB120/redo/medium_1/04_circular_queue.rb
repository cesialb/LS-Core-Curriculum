# Problem:
# Circular queue - collection of objects stored in a buffer
  # Treated as though it's connected end-to-end in a circle
# Object added to queue => added to position that follows most recently added object
# Removing an object => removes object that's been in queue for the longest

# This works as long as there are empty spots in buffer
# If buffer is full, adding new object requires getting rid of an existing one
  # Object that's been there the longest is removed and replaced by new one

# P1  P2  P3
#             initially empty
# 1           add 1 to queue
# 1   2       add 2 to queue
#     2       remove oldest item from queue (1)
#     2   3   add 3 to queue
# 4   2   3   add 4 to queue, is now full
# 4       3   remove oldest item from queue (2)
# 4   5   3   add 5 to queue, is now full
# 4   5   6   add 6 to queue, replaces oldest item (3)
# 7   5   6   add 7 to queue, replaces oldest item (4)
# ...

# Write CircularQueue class that implements a circular queue for objects
# Class should get buffer size from an argument provided to CircularQueue::new
# Should also have #enqueue and #dequeue methods
# #enqueue adds an object to the queue
# #dequeue removes and returns the oldest object in the queue, returns nil if queue is empty

# Examples provided

# Implicit Requirements:
# Assume none of the values stored in the queue are nil
# Can use nil to designate empty spots if you want!

class CircularQueue
  def initialize(size)
    @buffer = [nil] * size
    @next_position = 0
    @oldest_position = 0
  end

  def enqueue(object)
    unless @buffer[@next_position].nil?
      @oldest_position = increment(@next_position)
    end

    @buffer[@next_position] = object
    @next_position = increment(@next_position)
  end

  def dequeue(object)
    value = @buffer[@oldest_position]
    @buffer[@oldest_position] = nil
    @oldest_position = increment(@oldest_position) unless value.nil?
    value
  end

  private

  def increment(position)
    (position + 1) % @buffer.size
  end
end