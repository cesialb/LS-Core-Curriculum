statement = "The Flintstones Rock"

#unique_chars = statement.chars.uniq
#flint_hash = {}

#unique_chars.each do |char|
  #flint_hash[char] = statement.count(char)
#end

#p flint_hash

# better solution
result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a

letters.each do |letter|
  letter_frequency = statement.count(letter)
  result[letter] = letter_frequency if letter_frequency > 0
end

p result