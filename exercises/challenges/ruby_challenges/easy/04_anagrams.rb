# Problem
# write program that takes a word and a list of possible anagrams
# program then selects the correct sublist that contains the anagrams of the word

# Example
# listen and [enlists, google, inlets, banana] => [inlets]

# Mental Model
# returning an array no matter what
# when there's no anagram match, return an empty array
# when match is found, push string into return array
# if the word in sublist is identical to OG word, it is not an anagram, do not push it
# anagrams are case insensitive, be sure to downcase before checking

# Algorithm
# class Anagram that takes a string
# assign string to @word
# also a #match behavior that takes an array of string(s)
# create an empty array in #match
# iterate through the array using each or select
# if the element sorted is equal to @word sorted, AND the element != @word, push to array
# return the array at end of #match

class Anagram
  def initialize(word)
    @word = word.downcase
  end

  def match(list)
    anagrams = list.select do |element|
      (element.downcase.chars.sort == @word.chars.sort) && (element.downcase != @word)
    end
  end
end