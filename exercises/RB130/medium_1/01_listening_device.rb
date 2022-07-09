# Problem
# Finish the included program so the specs are met
# we have a recording device
# it listens for something, and if it's said, it's recorded
# if nothing is said, nothing is recorded
# anything that's said is retrieved via a block
# if nothing is said, then no block
# Device#listen will be the retrieving method
# most recent recording is output by Device#play

# Mental Model
# @recordings array to hold recordings
# Device#record to actually push recordings to @recordings
# Device#listen to retrieve stuff from block (block not required)
# Device#play to play the most recent recording

# Data Structure
# @recordings is an array
# Device#listen accepts a block implicitly
# Device#play accesses @recordings and returns the last element
# Device#play outputs

# Algorithm
# Device#listen
  # use block_given? to create conditional
  # if block: call Device#record and pass yield as argument
  # if no block: do nothing
# Device#play
  # @recordings.last

class Device
  def initialize
    @recordings = []
  end

  def record(recording)
    @recordings << recording
  end

  def listen
    record(yield) if block_given?
  end

  def play
    puts @recordings.last
  end
end

listener = Device.new
listener.listen { "Hello World!" }
listener.listen
listener.play # Outputs "Hello World!"