=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: contents of a text file
-  Output: printing of longest sentence in file, based on number of words
  - Also print the number of words it contains
---
**Problem Domain:**
- Split the file into sentences.
- Compare the sentences and find the longest one (based on words)
- Sentences can end with periods, exclamation points, or question marks.
- Word - any seq of characters that aren't spaces or sentence-ending characters
---
**Implicit Requirements:**
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
  -  Inputs: text file
  -  Output: 86
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
- Input value is a string
- Output value is display output
---
Algorithm
---------
- Method passes in string as parameter
- Split string into sentences using regex 
  - Helper method
- Set longest sentence to sentence_array[0]
- Iterate through array of sentences, accessing each element (sentence)
  - IF element.length > longest.length
    - longest = element
- puts longest and its size

Code
----
=end


str = "Four score and seven years ago our fathers brought forth
on this continent a new nation, conceived in liberty, and
dedicated to the proposition that all men are created
equal.

Now we are engaged in a great civil war, testing whether
that nation, or any nation so conceived and so dedicated,
can long endure. We are met on a great battlefield of that
war. We have come to dedicate a portion of that field, as
a final resting place for those who here gave their lives
that that nation might live. It is altogether fitting and
proper that we should do this.

But, in a larger sense, we can not dedicate, we can not
consecrate, we can not hallow this ground. The brave
men, living and dead, who struggled here, have
consecrated it, far above our poor power to add or
detract. The world will little note, nor long remember
what we say here, but it can never forget what they
did here. It is for us the living, rather, to be dedicated
here to the unfinished work which they who fought
here have thus far so nobly advanced. It is rather for
us to be here dedicated to the great task remaining
before us -- that from these honored dead we take
increased devotion to that cause for which they gave
the last full measure of devotion -- that we here highly
resolve that these dead shall not have died in vain
-- that this nation, under God, shall have a new birth
of freedom -- and that government of the people, by
the people, for the people, shall not perish from the
earth."""

# creates an array of sentences
def split_sentence(text)
  sentences = text.split(/\.|\?|!/)
end

sentences = split_sentence(str)

longest_sentence = sentences[0]
sentences.each do |sentence|
  longest_sentence = sentence if sentence.split.size > longest_sentence.split.size
end

# have to split the element by word to get word count
longest_sentence_size = longest_sentence.split.size

puts "\"#{longest_sentence}\", with #{longest_sentence_size} words"




# cleaner solution
sentences = str.split(/\.|\?|!/)
largest_sentence = sentences.max_by { |sentence| sentence.split.size }
largest_sentence = largest_sentence.strip
number_of_words = largest_sentence.split.size

puts "#{largest_sentence}"
puts "Containing #{number_of_words} words"

# further exploration - longest paragraph
# ALGORITHM:
  # Split initial text by \n - now have an array of paragraphs
    # What is longest paragraph? Longest number of characters, words?
  # Assuming words:
    # Use max_by method to determine the largest, based on element.split.size
      # Set longest_paragraph to this
  # Obtain number of words by splitting longest_paragraph and getting the size

def longest_paragraph(str)
  paragraphs = str.split(/\n\n/)
  longest_paragraph = paragraphs.max_by { |paragraph| paragraph.split.size }
  number_of_words = longest_paragraph.split.size
  puts "longest paragraph: #{longest_paragraph}"
  puts "containing #{number_of_words} words"
end

longest_paragraph(str)

# further exploration - longest word
# ALGORITHM
  # Obtain text, split text with spaces as delimiter to get an array of "words"
  # Use map method to strip words and send this to new array
  # Use max_by method to determine longest word, based on word length
  # Return longest word, with number of characters

def longest_word(str)
  words = str.split
  stripped_words_arr = words.map { |word| word.strip }
  p stripped_words_arr
  longest_word = stripped_words_arr.max_by { |word| word.size }
  number_of_letters = longest_word.size

  puts "longest word: #{longest_word}"
  puts "number of letters: #{number_of_letters}"
end

longest_word(str)