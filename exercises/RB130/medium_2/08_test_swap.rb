# Problem
# write a test suite for class Text
  # test for Text#swap
  # have to use #setup and #teardown

# Mental Model
# involves file opening/closing
# #setup will create Text object
  # @text will hold sample_text.txt read
# #swap changes a's to e's
  # how to test?
  # brute force it w/gsub, then call swap('a', 'e')
# #teardown will close the file?

# Algorithm
# #setup
  # my_file = File.new('sample_text.txt', 'r')
  # text = Text.new(my_file.read)
# #test_swap
  # assert_equal (@text.gsub('a', 'e'), swap('a', 'e'))
# #teardown
  # my_file.close

class Text
  def initialize(text)
    @text = text
  end

  def swap(letter_one, letter_two)
    @text.gsub(letter_one, letter_two)
  end
end