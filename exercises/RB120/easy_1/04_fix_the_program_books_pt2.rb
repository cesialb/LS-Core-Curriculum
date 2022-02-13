# Problem:
  # Fix the program so it produces the expected output
  # Expected output:
    # The author of "Snow Crash" is Neil Stephenson.
    # book = "Snow Crash", by Neil Stephenson.
# No examples
# Data Structure:
  # Working within the class Book
# Mental Model:
  # We need setter and getter methods for @author and @title
  # @author and @title are also uninitialized when the object is created, which is okay
  # Book's #to_s method seems fine

class Book
  attr_accessor :title, :author

  def to_s
    %("#{title}", by #{author})
  end
end

book = Book.new
book.author = "Neil Stephenson"
book.title = "Snow Crash"
puts %(The author of "#{book.title}" is #{book.author}.)
puts %(book = #{book}.)