statement = "The Flintstones Rock"

alphabet = ('A'..'Z').to_a + ('a'..'z').to_a

result = {}

alphabet.each do |letter|
  letter_frequency = statement.count(letter)
  result[letter] = letter_frequency if letter_frequency > 0
end