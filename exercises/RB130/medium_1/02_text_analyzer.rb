# Problem
# fill out the rest of the code so it prints output like the sample one
# you have to read a text file in this program
  # look at File class in Ruby docs 
# read text file in #process and pass text to the block provided in each call

# Mental Model
# learn how to open a file and close it in Ruby
# pass the whole text to the block each time it's called
# do whatever you need to do in the block to output:
  # x paragraphs - split by two \n's?
  # x lines - split by one \n?
  # x words - split by spaces?

# Data Structure
# sample text is text file
# console output

# Algorithm
# open the file using File::open
# in #process, pass the whole text to the block using yield
# how to turn File into string?
  # use File#read, then yield that to the block
# in the block:
  # call #split and use regex for paragraphs and lines counts
  # call #split and a space for the argument for words count

class TextAnalyzer
  def process
    my_file = File.open('sample_text.txt', 'r') # read-only
    yield(my_file.read)
    my_file.close
  end
end

analyzer = TextAnalyzer.new
analyzer.process { |text| puts "#{text.split(/\n\n/).size} paragraphs" }
analyzer.process { |text| puts "#{text.split(/\n/).size} lines" }
analyzer.process { |text| puts "#{text.split(' ').size} words" }